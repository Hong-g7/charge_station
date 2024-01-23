<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣ ����</title>

<jsp:include page="/header.jsp"></jsp:include>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<style>
section {
	max-width: 25rem;
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
<script>
	$(function() {

		$('#pwupdate')
				.click(
						function() {
						if ($("#pw_1").val()=="" || $("#pw_2").val()==""){
							alert('��й�ȣ�� �Է����ּ���');
							return false;
						}
							$.ajax({
										type : "post",
										url : "${pageContext.request.contextPath}/member/pwupdate2",
										data : {
											member_id : '${member.member_id}',
											pw_1 : $("#pw_1").val(),
											pw_2 : $("#pw_2").val()
										},
										success : function(data) {
											if (data == 1) {
												alert('��й�ȣ ���� ����');
												location.href = "${pageContext.request.contextPath}/member/login_form";
											} else if (data == 0) {
												alert('�� ��й�ȣ�� ��ġ ���� �ʽ��ϴ�.');
											} else {
												alert('��й�ȣ ���� ����');
											}
										},
										error : function(request, status, error) {
											alert('���� �߻�')
										}

									})//ajax

						})

	})
</script>

</head>
<body>

	<!-- wrapper -->
	<div id="wrapper">

		<!-- section -->
		<section>
			<!-- header -->
			<div id="header">
				<label style="font-size: 30px">��й�ȣ ����</label>
			</div>
			<br>

			<!-- �� ��й�ȣ -->
			<div>
			
					<label class="form-label" for="id">�� ��й�ȣ</label>
			
				
				<span class="box int_id"> <input class="form-control" type="password" id="pw_1"
					placeholder="" class="int" name="pw_1" required>
				</span>
			</div>
			<br>
			<!-- �� ��й�ȣ Ȯ�� -->
			<div>
			
					<label class="form-label" for="name">�� ��й�ȣ Ȯ��</label>
				
				<span class="box int_name"> <input class="form-control" type="password" id="pw_2"
					placeholder="" class="int" name="pw_2" required>
				</span>
			</div>

			<br>
			
			<!-- JOIN BTN-->
			<div class="btn_area">
				<button type="button" class="btn btn-outline-primary" id="pwupdate">
					<span>��й�ȣ ����</span>
				</button>
			</div>
		</section>
	</div>

</body>
</html>