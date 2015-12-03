<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="homeTemplate">
	<tiles:putAttribute name="body">
		<div class="row" style="width:950px;margin-left: 30px;">
			<div class="col-lg-2">
				<img style="margin-top: 10px;" width="200px" src="${food.image.absolutelyPath}"> 
			</div>
			<div class="col-lg-8">
				<div class="food-title" style="margin-top:10px;margin-left:50px;height:50px;width: 100%;background: #000000;color:#FFFFFF;">
					<span style="display:block;margin-left:10px;font-weight: bold;" class='title'>${food.name}</span>
					<span style="display:block;margin-left:10px;" class='title'>${food.store.address} - ${food.store.storeType.name}</span>
				</div>
				<div class="food-content" style="margin-top:10px;margin-left:50px;;height:50px;width: 100%;">
					<span style="display:block;margin-left:10px;" class='title'>Address : ${food.store.address}</span>
					<span style="display:block;margin-left:10px;" class='title'>Phone : ${food.store.phone}</span>
					<span style="display:block;margin-left:10px;" class='title'>Hour : ${food.store.openHour} - ${food.store.closeHour}</span>
					<span style="display:block;margin-left:10px;" class='title'>Limit Price : ${food.store.priceLimit}</span>
				</div>
			</div>
		</div>
		<div class="row" style="width:950px;margin-left: 50px;">
			<h3>Food Description</h3>
			<div class="description">
				${food.description}
			</div>
		</div>
		<script src="<c:url value='/resources/default/js/page/storeHome.js'/>"></script>
	</tiles:putAttribute>
</tiles:insertDefinition>

