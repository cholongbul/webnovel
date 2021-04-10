<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>
<main>

	<div class="container p-3 border border-info mb-2">
	<h3>${exception.getMessage()}</h3>
	<ul>
	<c:forEach items="${exception.getStackTrace()}" var="stack">
	<li>${stack.toString() }</li>
	</c:forEach>
	</ul>

	</div>

</main>

<%@include file="../include/footer.jsp"%>