/*
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	 config.width = '650'; //文本域宽度
     config.height = '350';//文本域高度
     config.toolbar = 'Full'; 
    
     config.toolbar_Full = [
      //['Source','-','Save','NewPage','Preview','-','Templates'],
        ['Source','-','Save','Preview','-','RemoveFormat'],
      //['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],
        ['Undo','Redo','-','Find','Replace','-','SelectAll'],
      //['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'],
      //['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
        ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
        ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
        ['Link','Unlink','Anchor'],
       //['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
        ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar'],
        '/',
        //['Styles','Format','Font','FontSize'],
        ['Bold','Italic','Underline','Strike','-'],
        ['Format','Font','FontSize'],
        ['TextColor','BGColor'], ['Maximize', 'ShowBlocks','-']
     ]; 
    
     //默认的字体名 plugins/font/plugin.js
     config.font_defaultLabel = '微软雅黑'; 
     //字体编辑时的字符集 可以添加常用的中文字符：宋体、楷体、黑体等 plugins/font/plugin.js
     config.font_names = '宋体;楷体;黑体;微软雅黑;Arial;Times New Roman;Verdana'; 
     //文字的默认式样 plugins/font/plugin.js
     config.font_style = {
         element   : 'span',
         styles   : { 'font-family' : '#(family)' },
         overrides : [ { element : 'font', attributes : { 'face' : null } } ]
     }; 
     //字体默认大小 plugins/font/plugin.js
     config.fontSize_defaultLabel = '12px'; 
     //字体编辑时可选的字体大小 plugins/font/plugin.js
     config.fontSize_sizes ='8/8px;10/10px;12/12px;14/14px;16/16px;18/18px;20/20px;22/22px;24/24px;26/26px;28/28px;36/36px;48/48px;72/72px' 

    
};
