function fileQueued(file) {
    try {
        var progress = new FileProgress(file, this.customSettings.progressTarget);
        progress.setStatus("\u51c6\u5907\u4e0a\u4f20.....");//准备上传
        progress.toggleCancel(true, this);
    } catch (ex) {
        this.debug(ex);
    }
}
function fileQueueError(file, errorCode, message) {
    try {
        if (this.getStats().successful_uploads == this.settings.file_upload_limit) {
            this.setButtonDisabled(true);
            this.setButtonTextStyle('.button { font-family: Helvetica, Arial, sans-serif; font-size: 12px; color: #b5b5b5 }');
        } else {
            this.setButtonDisabled(false);
            this.setButtonTextStyle('.button { font-family: Helvetica, Arial, sans-serif; font-size: 12px; color: #000 }');
        }

        //var imageName = "error.gif";
        var errorName = "";
        switch (errorCode) {
            case SWFUpload.QUEUE_ERROR.ZERO_BYTE_FILE:
                errorname = "您要上传的文件内容为空，请重新选择.";
                break;
            case SWFUpload.QUEUE_ERROR.FILE_EXCEEDS_SIZE_LIMIT:
                errorName = "您要上传的文件超出了最大限制，文件大小不能超过" + this.settings.file_size_limit + "，请重新选择!";
                break;
            case SWFUpload.QUEUE_ERROR.QUEUE_LIMIT_EXCEEDED:
                errorName = "您选择的文件太多了，最多上传" + this.settings.file_upload_limit + "张图片，请重新选择.";

                break;
            case SWFUpload.QUEUE_ERROR.INVALID_FILETYPE:
                errorName = "您要上传的图片格式不对，仅支持" + this.settings.file_types + "，请重新选择!";
                break;
            default:
                alert(message);
                break;
        }
        if (errorName !== "") {
            alert(errorName);
            return;
        }

    } catch (ex) {
        this.debug(ex);
    }

}
function fileDialogComplete(numFilesSelected, numFilesQueued) {
    try {
        if (numFilesQueued == 0) {
            this.setButtonDisabled(false);
            this.setButtonTextStyle('.button { font-family: Helvetica, Arial, sans-serif; font-size: 12px; color: #000 }');
        }

        if (numFilesQueued > 0) {
            // 选择文件之后，自动开始。
            this.startUpload();
        }
    } catch (ex) {
        this.debug(ex);
    }
}

function uploadStart(file) {
    try {
        /* I don't want to do any file validation or anything,  I'll just update the UI and
         return true to indicate that the upload should start.
         It's important to update the UI here because in Linux no uploadProgress events are called. The best
         we can do is say we are uploading.
         */
        var progress = new FileProgress(file, this.customSettings.progressTarget);
        progress.setStatus("上传中");
        progress.toggleCancel(true, this);
    }
    catch (ex) {
    }
    return true;
}

function uploadProgress(file, bytesLoaded) {

    try {
        var percent = Math.ceil((bytesLoaded / file.size) * 100);

        var progress = new FileProgress(file, this.customSettings.upload_target);
        progress.setProgress(percent);
        if (percent === 100) {
            progress.setStatus("处理中");
            progress.toggleCancel(false, this);
        } else {
            if(percent === 101) {
                percent = 100;
            }
            percent += '%';
            progress.setStatus(percent);
            progress.toggleCancel(true, this);
        }
    } catch (ex) {
        this.debug(ex);
    }
}

function uploadSuccess(file, serverData) {
    try {
        var progress = new FileProgress(file, this.customSettings.upload_target);
        var num_order = file.index;

        if (serverData.substring(0, 7) === "FILEID:") {

            //addImage("thumbnail.php?id=" + serverData.substring(7), progress);
            //if (parseInt(10*Math.random()) > 5) {addImage(serverData.substring(7), progress);}
            addImage(serverData.substring(7), progress, this.getStats().successful_uploads);
            //progress.setStatus("缩略图创建完毕.");
            progress.toggleCancel(true);
        } else {
            //addImage("http://s2.liebiao.org/image/swfupload/error.gif", progress);
            progress.setStatus("Error.");
            progress.toggleCancel(true);
            //if (serverData == "") serverData = "上传失败";
            alert(serverData);
            $("#" + progress.fileProgressID).remove();
        }
    } catch (ex) {
        this.debug(ex);
    }
}
/**
 *
 * @param file
 */
function uploadComplete(file) {
    try {
        /*  I want the next upload to continue automatically so I'll call startUpload here */
        var image_num = $('.progressContainer').length;
        if (this.getStats().files_queued > 0) {
            this.startUpload();
        } else {
            if (this.getStats().successful_uploads == this.settings.file_upload_limit && image_num == this.settings.file_upload_limit) {
                this.setButtonDisabled(true);
                this.setButtonTextStyle('.button { font-family: Helvetica, Arial, sans-serif; font-size: 12px; color: #b5b5b5 }');
            } else {
                this.setButtonDisabled(false);
                this.setButtonTextStyle('.button { font-family: Helvetica, Arial, sans-serif; font-size: 12px; color: #000 }');
            }

            var progress = new FileProgress(file, this.customSettings.upload_target);
            progress.setComplete();
            progress.setStatus("所有图像上传完毕");
            progress.toggleCancel(false);
        }
    } catch (ex) {
        this.debug(ex);
    }
}

function fileDialogStart(file) {
    var $stat = this.getStats();
    var image_num = $('.progressContainer').length;
    $stat.successful_uploads = image_num;
    this.setStats($stat);

    this.setButtonDisabled(true);
    this.setButtonTextStyle('.button { font-family: Helvetica, Arial, sans-serif; font-size: 12px; color: #b5b5b5 }');
}

/**
 *
 * @param file
 * @param errorCode
 * @param message
 */
function uploadError(file, errorCode, message) {
    var imageName = "error.gif";
    var progress;
    try {
        switch (errorCode) {
            case SWFUpload.UPLOAD_ERROR.FILE_CANCELLED:
                try {
                    progress = new FileProgress(file, this.customSettings.upload_target);
                    progress.setCancelled();
                    progress.setStatus("上传被用户取消。");
                    progress.toggleCancel(false);
                }
                catch (ex1) {
                    this.debug(ex1);
                }
                break;
            case SWFUpload.UPLOAD_ERROR.UPLOAD_STOPPED:
                try {
                    progress = new FileProgress(file, this.customSettings.upload_target);
                    progress.setCancelled();
                    progress.setStatus("终止");
                    progress.toggleCancel(true);
                }
                catch (ex2) {
                    this.debug(ex2);
                }
            case SWFUpload.UPLOAD_ERROR.UPLOAD_LIMIT_EXCEEDED:
                imageName = "uploadlimit.gif";
                break;
            default:
                alert(message);
                break;
        }
        if (errorCode != SWFUpload.UPLOAD_ERROR.FILE_CANCELLED) {
            addImage("image/swfupload/" + imageName);
        }

    } catch (ex3) {
        this.debug(ex3);
    }

}

/**
 *
 * @param src
 * @param obj
 */

function addImage(src, obj, success_num) {

    var newImg = document.createElement("img");
    newImg.style.height = "75px";
    newImg.style.width = "100px";
    var imgdir = src.substring(src.lastIndexOf("/") + 1);
    var obj_ = document.getElementById(obj.fileProgressID);
    var image_num = $('.progressContainer').length;

    obj_.innerHTML = '';
    if (imgdir != "error.gif") {
        var newHidden = document.createElement("input");
        var newA = document.createElement("a");
        var newDiv = document.createElement("div");
        var fengmian = document.createElement("div");
        var setfengmian = document.createElement("div");
        newDiv.className = "progressContainer";
        newHidden.setAttribute("type", "hidden");
        newHidden.setAttribute("name", "bimage[]");
        newHidden.setAttribute("value", imgdir);
        newA.className = 'progressCancel';
        newA.href = "javascript:void(0)";
        fengmian.className = 'isfengmian';

        setfengmian.className = 'setfengmian';
        setfengmian.style.opacity = '0.7';
        $(setfengmian).hide();

        $(newA).live('click', function () {
            $.ajax({
                type:"POST",
                url:"/cgi-bin/ajax/delepost.php",
                data:"picurl=" + imgdir,
                success:function (msg) {
                    swfu.setButtonDisabled(false);
                    swfu.setButtonTextStyle('.button { font-family: Helvetica, Arial, sans-serif; font-size: 12px; color: #000000 }');
                    $("#" + obj.fileProgressID).remove();
                    $(".progressWrapper").eq(0).find('.isfengmian').show();
                    $(".progressWrapper").eq(0).find('img').unbind('mouseover');

                }
            });
        })
        if (image_num > 1) {
            //一次性上传超2张图片  设置第一张封面
            if(success_num > 1) {
                $(fengmian).hide();
                $(newImg).mouseover(function () {
                    $(setfengmian).show();
                }).mouseout(function () {
                        $(setfengmian).hide();
                    });

                $(setfengmian).mouseover(function () {
                    $(this).show();
                }).mouseout(function () {
                        $(this).hide();
                    });
            } else {
                $(fengmian).show();
            }

        } else {
            $(fengmian).show();
        }
        $(setfengmian).click(function () {
            var $parent = $(this).parent("#" + obj.fileProgressID);
            $(".progressWrapper").eq(0).before($("#" + obj.fileProgressID).clone(true));
            $parent.before($(".progressWrapper").eq(1).clone(true));
            $parent.prev().find('.isfengmian').hide();
            $parent.prev().find('img').mouseover(function () {
                $(this).parent('.progressContainer').siblings('.setfengmian').show();
            });
            $parent.prev().find('img').mouseout(function () {
                $(this).parent('.progressContainer').siblings('.setfengmian').hide();
            });
            $parent.prev().find('.setfengmian').mouseover(function () {
                $(this).show();
            });
            $parent.prev().find('.setfengmian').mouseout(function () {
                $(this).hide();
            });
            $parent.remove();
            $(".progressWrapper").eq(1).remove();
            var $wrapper = $(".progressWrapper").eq(0);
            $wrapper.find('.isfengmian').show();
            $wrapper.find('.setfengmian').hide();
            $wrapper.find('img').unbind('mouseover');

        });
//        newImg.onmouseover = function () {
//            //$("#"+obj.fileProgressID).find('.setfengmian').show();
//            $(setfengmian).show();
//        }

        newA.innerHTML = "删除";
        newDiv.appendChild(newImg);
        newDiv.appendChild(newHidden);
        obj_.appendChild(newDiv);
        obj_.appendChild(newA);
        obj_.appendChild(fengmian);
        obj_.appendChild(setfengmian);

    }
    if (newImg.filters) {
        try {
            newImg.filters.item("DXImageTransform.Microsoft.Alpha").opacity = 0;
        } catch (e) {
            // If it is not set initially, the browser will throw an error.  This will set it if it is not set yet.
            //newImg.style.filter = 'progid:DXImageTransform.Microsoft.Alpha(opacity=' + 0 + ')';
        }
    } else {
        newImg.style.opacity = 0;
    }

    newImg.onload = function () {
        fadeIn(newImg, 0);
    };
    newImg.src = src;
}

/**
 *
 * @param element
 * @param opacity
 */
function fadeIn(element, opacity) {
    var reduceOpacityBy = 5;
    var rate = 30;	// 15 fps


    if (opacity < 100) {
        opacity += reduceOpacityBy;
        if (opacity > 100) {
            opacity = 100;
        }

        if (element.filters) {
            try {
                element.filters.item("DXImageTransform.Microsoft.Alpha").opacity = opacity;
            } catch (e) {
                // If it is not set initially, the browser will throw an error.  This will set it if it is not set yet.
                //element.style.filter = 'progid:DXImageTransform.Microsoft.Alpha(opacity=' + opacity + ')';
            }
        } else {
            element.style.opacity = opacity / 100;
        }
    }

    if (opacity < 100) {
        setTimeout(function () {
            fadeIn(element, opacity);
        }, rate);
    }
}

/**
 *
 * @param file
 * @param targetID
 * @returns {FileProgress}
 */

/* ******************************************
 *	FileProgress Object
 *	Control object for displaying file info
 * ****************************************** */

function FileProgress(file, targetID) {
    this.fileProgressID = "divFileProgress";

    this.fileProgressWrapper = document.getElementById(this.fileProgressID);
    if (!this.fileProgressWrapper) {
        this.fileProgressWrapper = document.createElement("div");
        this.fileProgressWrapper.className = "progressWrapper";
        this.fileProgressWrapper.id = this.fileProgressID;

        this.fileProgressElement = document.createElement("div");
        this.fileProgressElement.className = "progressContainer";

        var progressCancel = document.createElement("a");
        progressCancel.className = "progressCancel";
        progressCancel.href = "#";
        progressCancel.style.visibility = "hidden";
        progressCancel.appendChild(document.createTextNode(" "));

        var progressText = document.createElement("div");
        progressText.className = "progressName";
        progressText.appendChild(document.createTextNode(file.name));

        var progressBar = document.createElement("div");
        progressBar.className = "progressBarInProgress";

        var progressStatus = document.createElement("div");
        progressStatus.className = "progressBarStatus";
        progressStatus.innerHTML = "&nbsp;";

        this.fileProgressElement.appendChild(progressCancel);
        this.fileProgressElement.appendChild(progressText);
        this.fileProgressElement.appendChild(progressStatus);
        this.fileProgressElement.appendChild(progressBar);

        this.fileProgressWrapper.appendChild(this.fileProgressElement);

        document.getElementById(targetID).appendChild(this.fileProgressWrapper);
        fadeIn(this.fileProgressWrapper, 0);

    } else {
        this.fileProgressElement = this.fileProgressWrapper.firstChild;
        this.fileProgressElement.childNodes[1].firstChild.nodeValue = file.name;
    }

    this.height = this.fileProgressWrapper.offsetHeight;

}
FileProgress.prototype.setProgress = function (percentage) {
    this.fileProgressElement.className = "progressContainer green";
    this.fileProgressElement.childNodes[3].className = "progressBarInProgress";
    this.fileProgressElement.childNodes[3].style.width = percentage + "%";
};
FileProgress.prototype.setComplete = function () {
    this.fileProgressElement.className = "progressContainer blue";
    this.fileProgressElement.childNodes[3].className = "progressBarComplete";
    this.fileProgressElement.childNodes[3].style.width = "";

};
FileProgress.prototype.setError = function () {
    this.fileProgressElement.className = "progressContainer red";
    this.fileProgressElement.childNodes[3].className = "progressBarError";
    this.fileProgressElement.childNodes[3].style.width = "";

};
FileProgress.prototype.setCancelled = function () {
    this.fileProgressElement.className = "progressContainer";
    this.fileProgressElement.childNodes[3].className = "progressBarError";
    this.fileProgressElement.childNodes[3].style.width = "";

};
FileProgress.prototype.setStatus = function (status) {
    this.fileProgressElement.childNodes[2].innerHTML = status;
};
FileProgress.prototype.toggleCancel = function (show, swfuploadInstance) {
    this.fileProgressElement.childNodes[0].style.visibility = show ? "visible" : "hidden";
    if (swfuploadInstance) {
        var fileID = this.fileProgressID;
        this.fileProgressElement.childNodes[0].onclick = function () {
            swfuploadInstance.cancelUpload(fileID);
            return false;
        };
    }
};