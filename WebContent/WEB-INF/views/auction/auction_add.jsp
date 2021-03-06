<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_main.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<%@ include file="../include/header_AuctionSubMenu.jsp"%>
<!-- <link rel="stylesheet" href="resources/css/auction/main/bootstrap.css"> -->
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script type="text/javascript"
	src="resources/edit/js/service/HuskyEZCreator.js" charset="UTF-8"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"
	crossorigin="anonymous"></script>
<style>
body {
	margin: 0;
	font-family: "Open Sans", -apple-system, BlinkMacSystemFont, "Segoe UI",
		Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol";
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	text-align: left;
	background-color: #FCFCFC;
}

#body {
	width: 80%;
	height: 100%;
	margin: auto;
}

h2 {
	margin-top: 40px;
	margin-bottom: 50px;
}

#byongdo {
	width: 160px;
}

table {
	width: 100%;
	border-spacing: 0;
	border-collapse: collapse;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

th {
	height: 45px;
	padding: 7px 25px;
	vertical-align: middle;
	border-bottom: 1px solid #ddd;
	background: #f8f8f8;
	color: #444444;
	font-weight: bold;
	font-size: 15px;
	text-align: center;
	width: 200px;
	padding-top: 15px;
}

tbody {
	line-height: 1.42857143;
	color: #333;
	border-top: 1px solid black;
}

td {
	padding: 15px 25px;
	vertical-align: middle;
	border-bottom: 1px solid #ddd;
	border-left: 1px solid #ddd;
	height: 45px;
}

.btn-q {
	padding: 3px 20px;
	margin: 2.5px 0;
	font-size: 14px;
	line-height: 1.5;
	border-radius: 30px;
	color: #000000;
	display: inline-block;
	font-weight: normal;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	touch-action: manipulation;
	cursor: pointer;
}

.modal {
	overflow-x: hidden;
	overflow-y: auto;
	opacity: 1;
	text-align: center;
	padding: 0 !important;
	position: fixed;
	z-index: 1050;
	outline: 0;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	max-width: 1000px;
}

#myModal2 {
	width: 700px;
	height: 330px;
}

#modal-dialog {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
	width: 600px;
	margin: 30px auto;
	position: relative;
}

.modal a.close-modal {
	top: 20px;
	right: 20px;
}

.auction_addLabel {
	font-size: 33px;
	text-align: center;
}

.button1 {
	margin-bottom: 5px;
}

.button3 {
	width: 200px;
	height: 45px;
}

.modal-content {
	margin-top: 40px;
	border: 2px solid #F29F05;
}

.modal-title {
	text-align: center;
	width: 100%;
}
.tableDefault.fs13 > p{
	margin-bottom: 0px;
	font-size: 15px;
}
.tableDefault.fs13 > p > em {
	color: #0040FF;
	font-style: normal;
}
.modal-header{
	border-bottom: 1px solid #F29F05;
}
.modal-body{
	border-top: 1px solid #F29F05;
}
</style>
</head>
<body>
	<div style="width: 1500px; margin: 80px auto;">
		<form id="subtarget" method="post" action="auctionins"
			enctype="multipart/form-data">
			<div id="body" class="form-group">
				<div style="height: 20px"></div>
				<p class="auction_addLabel">????????? ??????</p>
				<div id="content">
					<table>
						<tbody>
							<tr>
								<th><label for="byongdo">????????????</label></th>
								<td><select id="byongdo" name="byongdo"
									class="form-control">
										<option value="0">--??????--</option>
										<option value="1">?????????</option>
										<option value="2">??????/??????</option>
										<option value="3">??????/??????</option>
										<option value="4">??????/??????</option>
										<option value="5">??????</option>
										<option value="6">??????</option>
								</select></td>
							</tr>
							<tr>
								<th><label for="subject"><span
										style="color: blue; margin-right: 3px;">*</span>????????????</label></th>
								<td><input type="text" id="subject" name="subject"
									class="form-control" style="width: 600px;" /></td>
							</tr>
							<tr>
								<th><label for="sPrice">?????????</label></th>
								<td><input type="number" id="ideprice" name="ideprice"
									class="form-control" style="width: 300px;" /> <a href="#none"
									class="btn-q" data-toggle="modal" data-target="#myModal2"
									id="p_modal1"><i
										class="fas fa-search-dollar"></i>&nbsp;5000?????? ????????? ?????? ?????? ??????</a></td>
							</tr>
							<tr>
								<th><label for="danwe">????????????</label></th>
								<td><select id="ipdanwe" name="ipdanwe"
									class="form-control" style="width: 200px;">
										<option value="">??????</option>
										<option value="3000000">300??????</option>
										<option value="5000000">500??????</option>
										<option value="8000000">800??????</option>
										<option value="10000000">1000??????</option>
								</select></td>
							</tr>
							<tr>
								<th><label for="ipenddate">???????????????</label></th>
								<td><input type="date" id="edate" name="edate"
									class="form-control" style="width: 200px;" />&nbsp; <input
									type="time" id="etime" name="etime" class="form-control"
									style="width: 200px;" /></td>
							</tr>
							<tr>
								<th><label for="bweight" style="display: inline;">????????????/????????????</label></th>
								<td class="widthTd"><input type="text" id="bweight"
									name="bweight" class="form-control"
									style="width: 200px; display: inline;" />&nbsp;/&nbsp;<input
									type="text" id="tweight" name="tweight" class="form-control"
									style="width: 200px; display: inline;" /></td>
							</tr>
							<tr>
								<th rowspan="2"><label for="bzipcode">??????</label></th>
								<td><input type="text" id="bzipcode" name="bzipcode"
									class="form-control" readonly="readonly"
									style="width: 120px; display: inline" />&nbsp;
									<button type="button" class="btn button1" onclick="jusopop()"
										style="display: inline">??????????????????</button></td>
							</tr>
							<tr>
								<td><input type="text" id="baddra" name="baddra"
									class="form-control" readonly="readonly" style="width: 500px;" />&nbsp;
									<input type="text" id="baddrb" name="baddrb"
									class="form-control" style="width: 400px;" placeholder="????????????" /></td>
							</tr>
							<tr>
								<th><label for="managepee">????????????</label></th>
								<td><textarea name="managepee" id="managepee" rows="10"
										cols="110"></textarea></td>
							</tr>
							<tr>
								<th><label for="bplan">????????????</label></th>
								<td><textarea name="bplan" id="bplan" rows="10" cols="110"></textarea></td>
							</tr>
							<tr>
								<th><label for="addprice">????????????</label></th>
								<td><textarea name="ir1" id="ir1" rows="20" cols="110"></textarea></td>
							</tr>
							<tr>
								<th><label for="wimageP">???????????????1</label></th>
								<td><input type="file" class="form-control-file"
									id="wimageP" name="wimageP" aria-describedby="fileHelp1">
									<small id="fileHelp1" class="form-text text-muted">??????
										???????????? ????????????, ????????? 620x430?????? ???????????????.</small></td>
							</tr>
							<tr>
								<th><label for="imageaP">???????????????2</label></th>
								<td><input type="file" class="form-control-file"
									id="imageaP" name="imageaP" aria-describedby="fileHelp2">
									<small id="fileHelp2" class="form-text text-muted">????????????
										???????????? ????????????, ????????? 320x180?????? ???????????????.</small></td>
							</tr>
							<tr>
								<th><label for="imagebP">???????????????3</label></th>
								<td><input type="file" class="form-control-file"
									id="imagebP" name="imagebP" aria-describedby="fileHelp3">
									<small id="fileHelp3" class="form-text text-muted">????????????
										???????????? ????????????, ????????? 320x180?????? ???????????????.</small></td>
							</tr>
							<tr>
								<th><label for="imagecP">???????????????4</label></th>
								<td><input type="file" class="form-control-file"
									id="imagecP" name="imagecP" aria-describedby="fileHelp4">
									<small id="fileHelp4" class="form-text text-muted">????????????
										???????????? ????????????, ????????? 320x180?????? ???????????????.</small></td>
							</tr>
							<tr>
								<th colspan="2"><input type="button" class="btn button3"
									id="runin" value="??????"></th>
							</tr>
						</tbody>
					</table>
					<input type="hidden" name="bid" id="bid" value="${sbid}" />
				</div>
			</div>
		</form>
	</div>
	<!-- modal 2 -->
	<div id="myModal2" class="modal fade" role="dialog">
		<div id="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header modal2">
					<button type="button" class="close" data-dismiss="modal"></button>
					<h4 class="modal-title">5000?????? ????????? ?????? ?????? ??????</h4>
				</div>
				<div class="modal-body">
					<div class="tableDefault fs13">
						<p>???????????? 5000?????? ????????? ?????? ????????? ????????? ????????????,<br>
						?????? ????????? ?????? ???????????? <em>1%</em>??? ???????????? <em>?????? ?????????</em>??? ????????? ??? ????????????.<br>
						?????? ?????? ?????? ??? ????????? ?????? ????????? ???????????? ??????,<br> 
						????????? ??????????????? <em>??????</em> ??? <em>??????</em>??? ??? ????????????.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(
				function() {
					$('#p_modal1').click(function(event) {
						event.preventDefault();
						$('#myModal2').modal({
							fadeDuration : 250
						});
					});

					//????????? ??????
					var oEditors = [];
					nhn.husky.EZCreator.createInIFrame({
						oAppRef : oEditors,
						elPlaceHolder : "ir1",
						sSkinURI : "resources/edit/SmartEditor2Skin.html",
						fCreator : "createSEditor2"
					});

					//??????????????? 
					$('#runin').click(
							function() {
								var val1 = oEditors.getById["ir1"].exec(
										"UPDATE_CONTENTS_FIELD", []);
								if ($('#bid').val() === null
										|| $('#bid').val() === '') {
									alert("???????????? ????????????");
									return false;
								} else {
									$('#subtarget').submit();
								}

								//$('#subtarget').submit();

							})

				});

		function jusopop() {
			var pop = window.open("resources/jusopopup/jusoPopup.jsp", "pop",
					"width=570,height=420, scrollbars=yes, resizable=yes");
		}

		function jusocall(zipNo, roadFullAddr, addrDetail) {
			document.getElementById("bzipcode").value = zipNo;
			document.getElementById("baddra").value = roadFullAddr;
			document.getElementById("baddrb").value = addrDetail;
		}
	</script>
	<%@ include file="../include/footer2.jsp"%>