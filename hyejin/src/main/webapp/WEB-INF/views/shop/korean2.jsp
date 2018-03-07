<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
function menuList(){
	var au = new AjaxUtil("${root}/menu/koreanMenu",null,"post");
	au.send(menuListCB); 
}


function menuListCB(res){

	var menuList = document.getElementById("menuList");
	menuList.innerHTML = "";
	
	console.log(res.menuList);
	var list = res.menuList;
	for(var listOne of list){
		menuList.innerHTML += listOne.menuName + "<br>";
	}
 	
}
</script>
<body onload="menuList()">
나 한식메뉴
<div id="menuList"></div>
</body>
</html>