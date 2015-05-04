<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ajax Test</title>
<script type="text/javascript">
	window.onload = function() {
		// 1.获取a节点，并为其添加Onclick 响应函数
		document.getElementsByTagName("a")[0].onclick = function() {

			// 2. 创建一个 XMLHttpRequest 对象
			var request = new XMLHttpRequest();
			// 3. 准备发送请求的数据：Url
			var url = this.href;
			var method = "GET";

			// 4. 调用 XMLHttpRequest 对象的 open 方法
			request.open(method, url);

			// 5. 调用 XMLHttpRequest 对象的 send 方法
			request.send(null);

			// 6. 为XMLHttpRequest 对象添加 onreadystatechange 响应函数
			request.onreadystatechange = function() {
				// 7. 判断响应是还完成： XMLHttpRequest 对象的 readstate 属性值为 4
				if (request.readyState == 4) {
					// 8. 再判断响应是否可用：XMLHttpRequest 对象的 status 的属性值为200
					if (request.status == 200 || request.status == 304) {
						// 9.  打印响应结果：responseTest
						alert(request.responseText);

					}
				}

			}

			// 10. 取消 a 节点的默认行为
			return false;
		}
	}
</script>
</head>
<body>
	<a href="HelloAjax.txt">Hello Ajax</a>
</body>
</html>