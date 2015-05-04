<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<style type="text/css">
#allmap {
	width: 200px;
	height: 200px;
}

#name {
	display: none
}
</style>
<link type="text/css" rel="stylesheet" href="css/weebox.css" />
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=0059b40138c518ea79743ed003798ec0"></script>
<script type="text/javascript" src="js/bgiframe.js"></script>
<script type="text/javascript" src="js/weebox.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var map = new BMap.Map("allmap");
		var point = new BMap.Point(116.331398, 39.897445);
		map.centerAndZoom(point, 15);
		var addr=$("#addr").val();
		function myFun(result) {
			var cityName = result.name;
			map.setCenter(cityName);
			var local = new BMap.LocalSearch(cityName, {
				renderOptions : {
					map : map
				}
			});
			local.search(addr);
		}
		var myCity = new BMap.LocalCity();
		myCity.get(myFun);
	});
</script>
</head>
<body>
	<div id="allmap"></div>
</body>
</html>




