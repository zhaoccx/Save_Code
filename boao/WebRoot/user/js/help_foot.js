/**帮助中心foot说明
 * Created with JetBrains PhpStorm.
 * User: liuguixin
 * Date: 12-11-9
 * Time: 上午10:37
 * To change this template use File | Settings | File Templates.
 */
var $html = '<div class="b-bottom">';
    $html += '&copy2007-' + new Date().getFullYear() + '列表网 京ICP证100421号 京ICP备10219015号-1 京公网安备110105001169';
    $html += '</div>';
document.write($html);
function nTabs(tabObj, obj) {
    var tabList = document.getElementById(tabObj).getElementsByTagName("a");
    for (i = 0; i < tabList.length; i++) {
        if (tabList[i].id == obj.id) {
        document.getElementById(tabObj + "_title" + i).className = "select";
        document.getElementById(tabObj + "_content" + i).className = "sc";
        } else {
        document.getElementById(tabObj + "_title" + i).className = "";
        document.getElementById(tabObj + "_content" + i).className = "hc";
        }
    }
}