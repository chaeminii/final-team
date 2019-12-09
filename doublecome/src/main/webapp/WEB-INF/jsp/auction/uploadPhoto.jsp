<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성 페이지</title>
</head>
<link rel="stylesheet" href="<c:url value="/resources/css/common/normalize.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/auction/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/auction/uploadPhoto.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/dropzone/dropzone.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/dropzone/basic.css"/>">
	
<body>
	
	<div class="wrapper">
		<header>
			<div class="topContent">
				<input style="display: none;" type="file" id="upload" name="attach" multiple/>
  				<label for="upload" class="upload_btn"><span class="glyphicon glyphicon-picture"></span> 사진</label>
  				
				<div class="submit">
					<button type="button" class="button">첨부하기</button>
				</div>
			</div>
		</header>
		<div class="contents">
		
		<form action="/file-upload" class="dropzone">
  <div class="fallback">
    <input name="file" type="file" multiple />
  </div>
</form>
		
		
		
		
		
		
		
		
		
		
			<div class="row preview">
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
			</div>
			
			<div class="row">
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
			</div>
			
			<div class="row">
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
			</div>
			
			<div class="row">
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
			</div>
			
			<div class="row">
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
				<div class="col-xs-2 basic">
				
				</div>
			</div>
		</div>
	</div>
	
	
	
	<script src="<c:url value="/resources/js/common/jquery-3.4.1.min.js" />"></script>
	<script src="<c:url value="/resources/js/auction/bootstrap.min.js" />"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<script src="<c:url value="/resources/dropzone/dropzone.js" />"></script>
	<script src="<c:url value="/resources/dropzone/dropzone-amd-module.js" />"></script>
	<script src="<c:url value="/resources/js/auction/uploadPhoto.js" />"></script>

</body>
</html>