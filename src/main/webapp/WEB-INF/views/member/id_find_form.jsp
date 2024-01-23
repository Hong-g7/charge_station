<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ���̵�ã��</title>

<jsp:include page="/header.jsp"></jsp:include>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
</head>

<style>
section {
	max-width: 20rem;
	margin: 60px auto;
	padding: 40px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	position: absolute;
	left: 50%;
	transform: translate(-50%);
	width: 460px;
}
</style>

<body>

	<section>
	
 <!-- �� ���̵� ��ȸ -->
       <div>
           <!-- header -->
			<div id="header">
				<label style="font-size: 20px">�� Ÿ��Ÿ�� ID</label>
			</div>
           <br>
           <span class="box int_id">
               <input class="form-control" type="text" value="${member.member_id}" disabled>
           </span>
           <br>
           <a href="<%=pageContext.getServletContext().getContextPath()%>/member/login_form">�α���</a>
       </div>
    </section>
                
</body>
</html>