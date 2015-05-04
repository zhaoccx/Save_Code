<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>CSJZ-管理页面</title>
<script src="/control/js/prototype.lite.js" type="text/javascript"></script>
<script src="/control/js/moo.fx.js" type="text/javascript"></script>
<script src="/control/js/moo.fx.pack.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="/control/css/left.css" charset="utf-8" />
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
		<tr>
			<td width="182" valign="top">
				<div id="container">
					<h1 class="type">
						<a href="javascript:void(0)">网站常规管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="/control/images/menu_topline.gif" width="182" height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="action!index.do" target="main">基本信息</a></li>
							<li><a href="action!toBanner.do" target="main">首页大照</a></li>
							<li><a href="home_banner_add.jsp" target="main">添加大照</a></li>
							<li><a href="action!toFollowus.do" target="main">社区互动</a></li>
							<li><a href="action!toAdministrator.do" target="main">修改密码</a></li>
						</ul>
					</div>


					<h1 class="type">
						<a href="javascript:void(0)">帮助/公告</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="/control/images/menu_topline.gif" width="182" height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="/admin/articleCategoryList" target="main">类型管理</a></li>
							<c:forEach items="${ARTICLE_KINDS }" var="item">
								<li><a href="/admin/assistList?kind=${item }" target="main">${item }</a></li>
							</c:forEach>
						</ul>
					</div>



					<h1 class="type">
						<a href="javascript:void(0)">科目/年级</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="/control/images/menu_topline.gif" width="182" height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="/admin/courseList" target="main">科目管理</a></li>
							<li><a href="/admin/courseCategoryList" target="main">科目类型管理</a></li>
							<li><a href="/admin/gradeList" target="main">年级</a></li>
							<li><a href="/admin/gradeCategoryList" target="main">年级类型管理</a></li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">历史/文化管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="/control/images/menu_topline.gif" width="182" height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="action!toCategory.do?category=history&encoding=cn" target="main">栏目类别</a></li>
							<li><a href="action!toAddCategory.do?category=history&encoding=cn" target="main">添加栏目</a></li>
							<li><a href="action!toArticle.do?category=history&encoding=cn" target="main">所有记录</a></li>
							<li><a href="action!toAddArticle.do?category=history&encoding=cn" target="main">发布信息</a></li>
						</ul>
					</div>


					<h1 class="type">
						<a href="javascript:void(0)">关于博奥好学网</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="/control/images/menu_topline.gif" width="182" height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="action!toContent.do?category=aboutus&amp;encoding=cn" target="main">关于我们</a></li>
							<li><a href="action!toContent.do?category=contact&amp;encoding=cn" target="main">联系方式</a></li>
							<li><a href="action!toContent.do?category=services&amp;encoding=cn" target="main">服务概述</a></li>
							<li><a href="action!toContent.do?category=private&amp;encoding=cn" target="main">免责声明</a></li>
							<li><a href="action!toPartner.do" target="main">合作伙伴</a></li>
							<li><a href="action!toJob.do" target="main">人才招聘</a></li>
						</ul>
					</div>

					<h1 class="type">
						<a href="javascript:void(0)">企业库管理中心</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="/control/images/menu_topline.gif" width="182" height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="action!toUser.do?category=fail" target="main">待审用户</a></li>
							<li><a href="action!toUser.do?category=pass" target="main">所有用户</a></li>
							<li><a href="action!toCopy.do?category=fail" target="main">待审信息</a></li>
							<li><a href="action!toCopy.do?category=pass" target="main">所有信息</a></li>
							<li><a href="action!toAdv.do" target="main">广告列表</a></li>
							<li><a href="adv_add.jsp" target="main">添加广告</a></li>
						</ul>
					</div>

					<!--   
    <h1 class="type"><a href="javascript:void(0)">用户留言管理中心</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="/control/images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="action!toMsg.do" target="main">所有留言</a></li>
          <li><a href="action!toNewMsg.do" target="main">未读留言</a></li>
		  <li><a href="action!toNewMsg.do" target="main">最新留言</a></li>
        </ul>
      </div>
     -->

					<!-- 
  <h1 class="type"><a href="javascript:void(0)">博奥论坛管理中心</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="/control/images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="http://www.csjz.org/login.html?usename=admin&password=admin" target="main">管理员登录</a></li>
          <li><a href="../adminbbs" target="_blank">新窗口打开</a></li>
        </ul>
      </div>
  -->
					<script type="text/javascript">
						var contents = document.getElementsByClassName('content');
						var toggles = document.getElementsByClassName('type');
						var myAccordion = new fx.Accordion(toggles, contents, {
							opacity : true,
							duration : 400
						});
						myAccordion.showThisHideOpen(contents[0]);
					</script>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
