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
	
<script>
$(function(){

	$('#pwupdate').click(function(){
		
		$.ajax({
			type: "post",
			url: "${pageContext.request.contextPath}/member/pwupdate2",
			data: {
				member_id:'${member.member_id}',
				pw_1:$("#pw_1").val(),
				pw_2:$("#pw_2").val()
			},
			success: function(data){
				if(data ==1){
					alert('��й�ȣ ���� ����');
					location.href="${pageContext.request.contextPath}/member/login.jsp";
				}
				else if (data ==0){
					alert('�� ��й�ȣ�� ��ġ ���� �ʽ��ϴ�.');
				}
				else {
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
	<!-- header -->
	<div id="header">
		<label style="font-size: 30px">��й�ȣ ����</label>
	</div>


	<!-- wrapper -->
	<div id="wrapper">

		<!-- section -->
		<section>
			<br>
			
                <!-- �� ��й�ȣ -->
                <div>
                    <h3 class="join_title">
                        <label for="id">�� ��й�ȣ</label>
                    </h3>
                    <span class="box int_id">
                        <input type="password" id="pw_1" class="int" name="pw_1" required>
                    </span>
                </div>
                
				<!-- �� ��й�ȣ Ȯ�� -->
				<div>
					<h3 class="join_title">
						<label for="name">�� ��й�ȣ Ȯ��</label>
					</h3>
					<span class="box int_name"> <input type="password" id="pw_2"
						class="int" name="pw_2" required>
					</span> 
				</div>


				<!-- JOIN BTN-->
				<div class="btn_area">
					<button type="button" id="pwupdate">
						<span>��й�ȣ ����</span>
					</button>
				</div>
		</section>
	</div>
	
</body>
</html>