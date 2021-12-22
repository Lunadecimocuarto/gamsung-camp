<%@ page contentType="text/html; charset=EUC-KR" %>

<!DOCTYPE html>

<html lang="ko">

<head>
	<meta charset="EUC-KR">

	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- Bootstrap, jQuery CDN -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

	<!-- Bootstrap Dropdown Hover CSS -->
	<link href="/css/animate.min.css" rel="stylesheet">
	<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
	<!-- Bootstrap Dropdown Hover JS -->
	<script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!-- CSS -->
	<style>	
		body > div.container{
			margin-top: 70px;
		}				
    </style>

	<!-- JavaScript -->
	<script type="text/javascript">

		$(function() {
			
			$("#update").on("click" , function() {
				alert("ķ���������� �����մϴ�.");
				$("form").attr("method" , "POST").attr("action" , "/campBusiness/updateCamp").submit();
			});
			
			$("#cancle").on("click" , function() {
				alert("������ ��� �Ǿ����ϴ�.");
				history.go(-1);
			});			
	
		});	

</script>		

</head>

<body>

	<!-- ToolBar -->
	<jsp:include page="/view/common/headerCampBusiness.jsp" />

	<!-- Page Start -->
	<div class="container">

		<div class="page-header">
	       <h1 class=" text-info">ķ���� ��������</h1>
	    </div>

		<!-- Form Start -->
		<form class="form-horizontal" >
		
		<input type="hidden" name="campNo" id="campNo" value="${camp.campNo}">
			
		<div class="form-group">
			<label for="userId" class="col-sm-offset-1 col-sm-3 control-label">�����ȸ��ID</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="userId" name="userId" value="${camp.campNo}" readonly>
				</div>
		</div>

		<div class="form-group">
			<label for="campTheme1" class="col-sm-offset-1 col-sm-3 control-label">�׸� ����1</label>
			<div class="col-sm-4">
				<select name="campTheme1" class="form-control" >
					<option value="��" ${! empty camp.campTheme1 && camp.campTheme1 eq '��' ? "selected" : "" }>��</option>
					<option value="����" ${! empty camp.campTheme1 && camp.campTheme1 eq '����' ? "selected" : "" }>����</option>
					<option value="����" ${! empty camp.campTheme1 && camp.campTheme1 eq '����' ? "selected" : "" }>����</option>
					<option value="�ܿ�" ${! empty camp.campTheme1 && camp.campTheme1 eq '�ܿ�' ? "selected" : "" }>�ܿ�</option>
					<option value="����" ${! empty camp.campTheme1 && camp.campTheme1 eq '����' ? "selected" : "" }>����</option>
					<option value="�ϸ�" ${! empty camp.campTheme1 && camp.campTheme1 eq '�ϸ�' ? "selected" : "" }>�ϸ�</option>
					<option value="���" ${! empty camp.campTheme1 && camp.campTheme1 eq '���' ? "selected" : "" }>���</option>
					<option value="����" ${! empty camp.campTheme1 && camp.campTheme1 eq '����' ? "selected" : "" }>����</option>
					<option value="�ֿϵ�������" ${! empty camp.campTheme1 && camp.campTheme1 eq '�ֿϵ�������' ? "selected" : "" }>�ֿϵ�������</option>	
				</select>
			</div>
		</div>
		
		<div class="form-group">
			<label for="campTheme2" class="col-sm-offset-1 col-sm-3 control-label">�׸� ����2</label>
			<div class="col-sm-4">
				<select name="campTheme2" class="form-control" >
					<option value="��" ${! empty camp.campTheme2 && camp.campTheme2 eq '��' ? "selected" : "" }>��</option>
					<option value="����" ${! empty camp.campTheme2 && camp.campTheme2 eq '����' ? "selected" : "" }>����</option>
					<option value="����" ${! empty camp.campTheme2 && camp.campTheme2 eq '����' ? "selected" : "" }>����</option>
					<option value="�ܿ�" ${! empty camp.campTheme2 && camp.campTheme2 eq '�ܿ�' ? "selected" : "" }>�ܿ�</option>
					<option value="����" ${! empty camp.campTheme2 && camp.campTheme2 eq '����' ? "selected" : "" }>����</option>
					<option value="�ϸ�" ${! empty camp.campTheme2 && camp.campTheme2 eq '�ϸ�' ? "selected" : "" }>�ϸ�</option>
					<option value="���" ${! empty camp.campTheme2 && camp.campTheme2 eq '���' ? "selected" : "" }>���</option>
					<option value="����" ${! empty camp.campTheme2 && camp.campTheme2 eq '����' ? "selected" : "" }>����</option>
					<option value="�ֿϵ�������" ${! empty camp.campTheme2 && camp.campTheme2 eq '�ֿϵ�������' ? "selected" : "" }>�ֿϵ�������</option>
				</select>
			</div>
		</div>

		<div class="form-group">
			<label for="campNature1" class="col-sm-offset-1 col-sm-3 control-label">�ֺ� ȯ��1</label>
			<div class="col-sm-4">
				<select name="campNature1" class="form-control" >
					<option value="���" ${! empty camp.campNature1 && camp.campNature1 eq '���' ? "selected" : "" }>���</option>
					<option value="ȣ��" ${! empty camp.campNature1 && camp.campNature1 eq 'ȣ��' ? "selected" : "" }>ȣ��</option>
					<option value="��" ${! empty camp.campNature1 && camp.campNature1 eq '��' ? "selected" : "" }>��</option>
					<option value="�ٴ�" ${! empty camp.campNature1 && camp.campNature1 eq '�ٴ�' ? "selected" : "" }>�ٴ�</option>
					<option value="��" ${! empty camp.campNature1 && camp.campNature1 eq '��' ? "selected" : "" }>��</option>
					<option value="��" ${! empty camp.campNature1 && camp.campNature1 eq '��' ? "selected" : "" }>��</option>
					<option value="����" ${! empty camp.campNature1 && camp.campNature1 eq '����' ? "selected" : "" }>����</option>
					<option value="��" ${! empty camp.campNature1 && camp.campNature1 eq '��' ? "selected" : "" }>��</option>
				</select>
			</div>
		</div>

		<div class="form-group">
			<label for="campNature2" class="col-sm-offset-1 col-sm-3 control-label">�ֺ� ȯ��2</label>
			<div class="col-sm-4">
				<select name="campNature2" class="form-control" >
					<option value="���" ${! empty camp.campNature2 && camp.campNature2 eq '���' ? "selected" : "" }>���</option>
					<option value="ȣ��" ${! empty camp.campNature2 && camp.campNature2 eq 'ȣ��' ? "selected" : "" }>ȣ��</option>
					<option value="��" ${! empty camp.campNature2 && camp.campNature2 eq '��' ? "selected" : "" }>��</option>
					<option value="�ٴ�" ${! empty camp.campNature2 && camp.campNature2 eq '�ٴ�' ? "selected" : "" }>�ٴ�</option>
					<option value="��" ${! empty camp.campNature2 && camp.campNature2 eq '��' ? "selected" : "" }>��</option>
					<option value="��" ${! empty camp.campNature2 && camp.campNature2 eq '��' ? "selected" : "" }>��</option>
					<option value="����" ${! empty camp.campNature2 && camp.campNature2 eq '����' ? "selected" : "" }>����</option>
					<option value="��" ${! empty camp.campNature2 && camp.campNature2 eq '��' ? "selected" : "" }>��</option>
				</select>
			</div>
		</div>	

		<div class="form-group">
			<label for="campOperation1" class="col-sm-offset-1 col-sm-3 control-label">� ����1</label>
			<div class="col-sm-4">
				<select name="campOperation1" class="form-control" >
					<option value="���" ${! empty camp.campOperation1 && camp.campOperation1 eq '���' ? "selected" : "" }>���</option>
					<option value="��(3��~5��)" ${! empty camp.campOperation1 && camp.campOperation1 eq '��(3��~5��)' ? "selected" : "" }>�� (3��~5��)</option>
					<option value="����(6��~8��)" ${! empty camp.campOperation1 && camp.campOperation1 eq '����(6��~8��)' ? "selected" : "" }>���� (6��~8��)</option>
					<option value="����(9��~11��)" ${! empty camp.campOperation1 && camp.campOperation1 eq '����(9��~11��)' ? "selected" : "" }>���� (9��~11��)</option>
					<option value="�ܿ�(12��~2��)" ${! empty camp.campOperation1 && camp.campOperation1 eq '�ܿ�(12��~2��)' ? "selected" : "" }>�ܿ� (12��~2��)</option>
					<option value="����" ${! empty camp.campOperation1 && camp.campOperation1 eq '����' ? "selected" : "" }>����</option>
					<option value="�ָ�" ${! empty camp.campOperation1 && camp.campOperation1 eq '�ָ�' ? "selected" : "" }>�ָ�</option>
				</select>
			</div>
		</div>
		
		<div class="form-group">
			<label for="campOperation2" class="col-sm-offset-1 col-sm-3 control-label">� ����2</label>
			<div class="col-sm-4">
				<select name="campOperation2" class="form-control" >
					<option value="���" ${! empty camp.campOperation2 && camp.campOperation2 eq '���' ? "selected" : "" }>���</option>
					<option value="��(3��~5��)" ${! empty camp.campOperation2 && camp.campOperation2 eq '��(3��~5��)' ? "selected" : "" }>�� (3��~5��)</option>
					<option value="����(6��~8��)" ${! empty camp.campOperation2 && camp.campOperation2 eq '����(6��~8��)' ? "selected" : "" }>���� (6��~8��)</option>
					<option value="����(9��~11��)" ${! empty camp.campOperation2 && camp.campOperation2 eq '����(9��~11��)' ? "selected" : "" }>���� (9��~11��)</option>
					<option value="�ܿ�(12��~2��)" ${! empty camp.campOperation2 && camp.campOperation2 eq '�ܿ�(12��~2��)' ? "selected" : "" }>�ܿ� (12��~2��)</option>
					<option value="����" ${! empty camp.campOperation2 && camp.campOperation2 eq '����' ? "selected" : "" }>����</option>
					<option value="�ָ�" ${! empty camp.campOperation2 && camp.campOperation2 eq '�ָ�' ? "selected" : "" }>�ָ�</option>
				</select>
			</div>
		</div>
		
		
		<div class="form-group">
			<label for="campName" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �̸�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="campName" name="campName" value="${user.campName}" readonly>
				</div>
		</div>

		<div class="form-group">
			<label for="campCall" class="col-sm-offset-1 col-sm-3 control-label">ķ���� ��ȭ��ȣ</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="campCall" name="campCall" value="${user.campCall}" readonly>
				</div>
		</div>
		
		<div class="form-group">
			<label for="campAddr" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �ּ�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="campAddr" name="campAddr" value="${user.addr}" readonly>
				</div>
		</div>

		<!-- 
		<div class="form-group">
			<label for="campMapImg" class="col-sm-offset-1 col-sm-3 control-label">ķ���� ��������</label>
				<div class="col-sm-4">
					<input type="file"  id="campMapImg" name="campMapImg">
				</div>
		</div>
		
		<div class="form-group">
			<label for="campImg1" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������1</label>
				<div class="col-sm-4">
					<input type="campImg1"  id="file" name="campImg1">
				</div>
		</div>
		
		<div class="form-group">
			<label for="campImg2" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������2</label>
				<div class="col-sm-4">
					<input type="file"  id="campImg2" name="campImg2">
				</div>
		</div>
		
		<div class="form-group">
			<label for="campImg3" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������3</label>
				<div class="col-sm-4">
					<input type="file"  id="campImg3" name="campImg3">
				</div>
		</div>
		
		<div class="form-group">
			<label for="campImg4" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������4</label>
				<div class="col-sm-4">
					<input type="file"  id="campImg4" name="campImg4">
				</div>
		</div>
		
		<div class="form-group">
			<label for="campImg5" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������5</label>
				<div class="col-sm-4">
					<input type="file"  id="campImg5" name="campImg5">
				</div>
		</div>		
		-->
		
		<div class="form-group">
			<label for="campSummery" class="col-sm-offset-1 col-sm-3 control-label">ķ���� ���Ұ�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="campSummery" name="campSummery" value="${camp.campSummery}">
				</div>
		</div>
		
		<div class="form-group">
			<label for="campDetail" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �󼼼Ұ�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="campDetail" name="campDetail" value="${camp.campDetail}">
				</div>
		</div>
		
		<br>
		<br>
		
		<div class="form-group">
			<div class="col-sm-offset-4  col-sm-4 text-center">
				<button id="cancle" type="button" class="btn btn-primary">���</button>
				<button id="update" type="button" class="btn btn-primary">����</button>
			</div>
		</div> 
		
		</form>
		<!-- Form End -->
		
 	</div>
	<!-- Page End -->

</body>

</html>