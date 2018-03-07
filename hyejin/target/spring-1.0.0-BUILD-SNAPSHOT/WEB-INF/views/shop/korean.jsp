<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
function shopList(){
	var au = new AjaxUtil("${root}/shop/KShopList",null,"post");
	au.send(shopListCB); 
}

function shopListCB(res){
	console.log(res.KShopList);
	var list = res.KShopList;
	var str = "";
	
	for(var listOne of list){
		str += "<tr><td>" + listOne.shopName + "</td></tr>"
		
	}
	$("#result_tb").html(str);
	
}
</script>
<body onload="shopList()">
나 한식메뉴
<table border='1'>
	<thead>
		<tr>
			<th>
			식당이름
			</th>
		</tr>
	</thead>
	<tbody id="result_tb">
	</tbody>
</table>
??????
</body>
</html>