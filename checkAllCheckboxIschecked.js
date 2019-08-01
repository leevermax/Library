<script language="javascript">
 
	// Chức năng chọn hết
	document.getElementById("checkboxi").onclick = function () 
	{
		// Lấy danh sách checkbox
		var checkboxes = document.getElementsByName('checkboxi');

		// Lặp và thiết lập checked
		for (var i = 0; i < checkboxes.length; i++){
			if(checkboxes[i].checked == false){
				
			}
		}
		document.getElementsByName('checkAll').checked = true;
		return true;
	};

</script>