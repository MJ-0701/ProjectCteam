<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<!-- <link href="resources/css/estate_one/estate_on.css" rel="stylesheet" /> -->
<!-- <link href="resources/css/estate_one/th_bootstrap.css" rel="stylesheet" /> -->
<link href="resources/css/estate_one/th_styles.css" rel="stylesheet" />
<link href="resources/css/estate_one/sideber.css" rel="stylesheet" />
<link href="resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"
	crossorigin="anonymous"></script>
<style>
body {
	font-family: 'Noto Sans KR', sans-serif;
}

.estateDetailHeader {
	border-bottom: 2px solid #F27405;
	margin-top: 30px;
}

.estatebuild {
	font-size: 15px;
	color: #585858;
}

.estaterentv {
	font-size: 30px;
}

.moneyunit {
	font-size: 15px;
	font-weight: bold;
	font-style: normal;
	color: #F25C05;
}

.estatebuild:hover {
	text-decoration: none;
	color: #585858;
}

.estaterentv:hover {
	text-decoration: none;
	color: #000000;
}

.moneyunit:hover {
	text-decoration: none;
	color: #F25C05;
}

.estateaddress {
	text-align: right;
	width: 730px;
}

.estaterltrnm {
	margin-top: 0px;
	margin-bottom: 0px;
}

.estatename {
	color: #585858;
	margin-top: 0px;
	margin-bottom: 0px;
	font-style: normal;
}

.estatetel {
	margin-top: 0px;
	margin-bottom: 0px;
}

.estatebutton1 {
	border-radius: 25px;
}

.estatebutton1:hover {
	text-decoration: none;
}

.container {
	padding-left: 0px;
	padding-right: 0px;
}

.description {
	margin: 1em 0px;
}

#home {
	height: auto;
}

.estateimage {
	margin-top: 30px;
}

.chbutton {
	font-size: 15px;
	border: 1px solid #D8D8D8;
	border-radius: 5px;
	padding: 5px 10px 5px 10px;
}

.chbutton:hover {
	border: 1px solid #F27405;
}

.listButton {
	position: fixed;
	bottom: 20px;
	right: 20px;
	z-index: 99;
	border: 1px;
	border-style: solid;
	border-color: rgba(77, 77, 77, 0.1);
	outline: none;
	background-color: #F28705;
	color: #ffffff;
	font-size: 1em;
	font-weight: bold;
	font-family: 'Noto Sans KR', sans-serif;
	cursor: pointer;
	padding: 25px 29px;
	border-radius: 45px;
}

.listButton:hover {
	background-color: white;
	color: #F28705;
	border: 1px solid #F28705;
}
</style>
<section class="contact-section container topma" style="width: 1300px; max-width: 1300px">
	<div >
	<input type="hidden" id="fnum" value="${vo.fnum}">
	<input type="hidden" id="anum" value="${vo.anum}">
		<!-- detailHeader ?????? -->
		<table class="estateDetailHeader" style="width: 100%">
			<c:forEach items="${vo.rent}" var="r">
				<tr>
					<td style="padding-bottom: 30px;"><a class="estatebuild">
							${vo.fkind} </a><br> <a class="estaterentv"> ${vo.fsalekind }<em
							class="moneyunit"> ${vo.deposit } <c:if
									test="${vo.rent != '0' || vo.rent != null }"> / ${vo.rent }</c:if>
								(??????:??????)
						</em>
					</a></td>
					<td class="estateaddress">
						<p class="estaterltrnm">${vo.sign.dname}<br> <em
								class="estatename">${vo.sign.dtel }</em>
						</p>
					</td>
					<td class="estatetel"><a href="#"
						class="button3 estatebutton1"><i class="fas fa-comments"></i>&nbsp;????????????</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<!-- detailHeader ??? -->
		<!-- detailMiddle ?????? -->
		<div id="myTabContent" class="tab-content bg-white container" style="max-width: 1300px">
			<div id="home">
				<input type="hidden" value="${vo.finvo.fsuparea}" id="supply">
				<input type="hidden" value="${vo.finvo.fexarea}" id="exclusive">
				<table class="type11">
					<tbody>
						<tr>
							<td><strong>?????????/????????? : </strong> ${vo.finvo.tfloor } /
								${vo.finvo.bfloor }</td>
							<td><strong>??????/???????????? : </strong> <label id="text">
									${vo.finvo.fsuparea } / ${vo.finvo.fexarea}??? </label> <input
								type="button" onclick="change('??????')" class="chbutton" value="??????">
								<input type="hidden" onclick="change('??????')" class="chbutton"
								value="??????"></td>
							<td><strong>????????? : </strong> <c:choose>
									<c:when test="${vo.finvo.fadmin!= null}">${vo.finvo.fadmin  }</c:when>
									<c:otherwise>-</c:otherwise>
								</c:choose></td>
							<td><strong>??????????????? : </strong> <c:choose>
									<c:when test="${vo.finvo.fadop!= null}">${vo.finvo.fadop  }</c:when>
									<c:otherwise>-</c:otherwise>
								</c:choose></td>
						</tr>
						<tr>
							<td><strong>??????????????? : </strong>	<c:choose>
											<c:when test="${vo.finvo.fmove!= null}">${vo.finvo.fmove}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose>
									</td>
							<td><strong>?????? : </strong> <c:choose>
									<c:when test="${vo.finvo.fadmin!= null}">${vo.finvo.fadmin} ???</c:when>
									<c:otherwise>-</c:otherwise>
								</c:choose></td>
						
						<c:choose>
							<c:when test="${vo.fkind =='??????/?????????' }">

								
									<td><strong>???????????? 
									(??????/??????) : </strong> <c:choose>
											<c:when test="${vo.finvo.heating!= null}">${vo.finvo.heating}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose> <c:choose>
											<c:when test="${vo.finvo.fisvo.cooling != null }"> / ${vo.finvo.fisvo.cooling }</c:when>
											<c:otherwise> / -</c:otherwise>
										</c:choose></td>

									<td><strong>????????????
									 (?????????/????????????) : </strong> <c:choose>
											<c:when test="${vo.finvo.fisvo.mpurpo != null}">${vo.finvo.fisvo.mpurpo}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose><c:choose>
											<c:when test="${vo.finvo.fisvo.usearea != null}">${vo.finvo.fisvo.usearea}</c:when>
											<c:otherwise> / -</c:otherwise>
										</c:choose></td>
										</tr>
								<tr>
									<td><strong>???????????? : </strong> <c:choose>
											<c:when test="${vo.finvo.fisvo.independent!= null}">${vo.finvo.fisvo.independent }</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
									<td><strong>????????? : </strong> <c:choose>
											<c:when test="${vo.finvo.fisvo.toilet != null }">${vo.finvo.fisvo.toilet}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
									<td><strong>-</strong>-</td>
									<td><strong>-</strong>-</td>
								</tr>
							
							</c:when>
							<c:otherwise>
								
									<td><strong>???????????? : </strong> <c:choose>
											<c:when test="${vo.finvo.heating!= null}">${vo.finvo.heating}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>

									<td><strong>????????? : </strong> <c:choose>
											<c:when test="${vo.finvo.fievo.built != null}">${vo.finvo.fievo.built}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
										</tr>
										<tr>
									<td><strong>??????????????? : </strong> <c:choose>
											<c:when test="${vo.finvo.eleva!= null}">${vo.finvo.eleva }</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
									<td><strong>???????????? : </strong>
									<c:choose>
											<c:when test="${vo.finvo.fievo.animal!= null}">${vo.finvo.fievo.animal }</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose>
									</td>
								
									<td><strong>?????????/????????? : </strong>
									
										<c:choose>
											<c:when test="${vo.finvo.fievo.veranda!= null}">${vo.finvo.fievo.veranda}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose>
									</td>
									<td><strong>?????????????????? : </strong>
										
										<c:choose>
											<c:when test="${vo.finvo.fievo.fcharter!= null}">${vo.finvo.fievo.fcharter}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose>
									
									</td>
								</tr>
								<tr>	
									<td colspan="4"><strong>?????? : </strong> 	<c:choose>
											<c:when test="${vo.finvo.fievo.foption!= null}">${vo.finvo.fievo.foption}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose>
									</td>
							
								</tr>
							</c:otherwise>
						</c:choose>


					</tbody>
				</table>
				<div class="container topma" style="width: 100%" >
					<table class="type12">
						<thead>
							<tr>
								<th scope="col"><pre
										style="width: 1050px; overflow: hidden;">${vo.subject}</pre></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><pre class="description">${vo.finvo.fcontent }</pre></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- ???????????? ???????????? ???????????? ?????? ?????? -->
			<div class="estateimage" style="display: flex; margin-left:80px;margin-bottom:50px; width: 100%">
				<c:forEach items="${vo.fimg}" var="e">
					<div style="cursor: pointer; overflow: auto;">
						<img class="th_property_subimg" src="img/${e.fname}${e.ftype}"
							onerror="this.src='img/noimg.jpg'"></img>
					</div>
				</c:forEach>
			</div>
			<!-- ???????????? ???????????? ???????????? ?????? ??? -->
			<%-- <c:choose>
				<c:when test="${vo.fkind !='??????/?????????' }">
						<div class="bg-white container" style="display: block; width: 100%">
								<table style="display: block; width: 100% ; border: 1px solid black;">
									<tr>
										<th>??????</th>
										<th>??????</th>
									</tr>
									<tr>
										<td>
											<c:choose>
												<c:when test="${vo.finvo.fievo.monthly !=null }">
													${vo.finvo.fievo.monthly }
												</c:when>
												<c:otherwise>-</c:otherwise>
											</c:choose>
										
										</td>
										<td>
											<c:choose>
												<c:when test="${vo.finvo.fievo.charter!=null }">
												${vo.finvo.fievo.charter }
												</c:when>
												<c:otherwise>-</c:otherwise>
											</c:choose>
										
										</td>
									
									</tr>
								</table>
						</div>		
				</c:when>
			</c:choose> --%>
		
		</div>
	</div>
	<div>
		<button type="button" class="listButton"
			onclick="location.href='estateMain'">
			<i class="fas fa-bars"></i>&nbsp;????????????
		</button>
		
		
	</div>
	<c:choose>
		<c:when test="${vo.anum == user.anum}">
			<div>
		<button type="button" class="listButton"
			onclick="deleteDetail()">
			<i class="fas fa-bars"></i>&nbsp;??????
		</button>
	</div>
	<div>
		<button type="button" class="listButton"
			onclick="updateDetail()">
			<i class="fas fa-bars"></i>&nbsp;??????
		</button>
	</div>
		</c:when>
	</c:choose>
	<!-- <div class="th_card bg-white property_border_st">
		<div class="th_card-body">
			<table>
				<tr>
					<td><input type="button" value="????????????"></td>
				</tr>
			</table>
		</div>
	</div> -->
</section>
<!-- detailMiddle ??? -->

<!-- <div class="tab-pane fade th_page_space container" id="profile">

				<div id="p_list">
					<p>
						<a class="th_a" href="#a">?????? ?????? </a>
					</p>
					<p>
						<a class="th_a" href="#b">?????? </a>
					</p>
					<p>
						<a class="th_a" href="#c">?????? ??? ????????????</a>
					</p>
					<p>
						<a class="th_a" href="#d">????????? ?????????</a>
					</p>
					<p>
						<a class="th_a" href="#e">??? ??????????????? ????????? </a>
					</p>
				</div>

				<div id="a" class="th_b">
					<p class="container">?????? ????????? ?????? ?????? ?????? ?????? ?????????.</p>
					<div class="testestest">?????????</div>
				</div>
				<div id="b" class="th_b">
					<p class="container">?????? ????????? ?????? ?????? ?????? ?????? ?????????.</p>
					<div class="testestest">?????????</div>
				</div>
				<div id="c" class="th_b">
					<p class="container">?????? ??? ???????????? ????????? ?????? ?????? ?????? ?????? ?????????.</p>
					<div class="testestest">?????????</div>
				</div>
				<div id="d" class="th_b">
					<p class="container">????????? ????????? ????????? ?????? ?????? ?????? ?????? ?????????.</p>
					<div class="testestest">?????????</div>
				</div>
				<div id="e" class="th_b">
					<p class="container">??? ??????????????? ????????? ????????? ?????? ?????? ?????? ?????? ?????????.</p>
					<div class="testestest">?????????</div>
				</div>




			</div> -->
<!-- 
			<div class="tab-pane fade th_page_space" id="quote"></div>
			<div class="tab-pane fade th_page_space" id="dropdown2">
				<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy
					art party before they sold out master cleanse gluten-free squid
					scenester freegan cosby sweater. Fanny pack portland seitan DIY,
					art party locavore wolf cliche high life echo park Austin. Cred
					vinyl keffiyeh DIY salvia PBR, banh mi before they sold out
					farm-to-table VHS viral locavore cosby sweater.</p>
			</div> -->


<!-- <div class="topma bg-white">
						<ul class="nav nav-tabs ">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#home">?????? ?????? </a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#profile">?????? ??????</a></li>
					<li class="nav-item"><a class="nav-link " data-toggle="tab"
					href="#">??? ??? ????????? ?????? ??? ?????? ??????</a></li>

			</ul>

		</div> -->

<script>
	function change(text) {
		var supply;
		var exclusive;
		$('.chbutton').each(
				function(i) {
					if ($(this).val() === text) {
						if (text === '??????') {
							supply = $('#supply').val() / 3.305785;
							exclusive = $('#exclusive').val() / 3.305785;
							supply = Math.floor(supply);
							exclusive = Math.floor(exclusive);
						} else {
							supply = $('#supply').val();
							exclusive = $('#exclusive').val();
						}

					}
					if (text === $(this).val()) {
						$(this).attr("type", "hidden");
						$('#text').html(
								supply + '/' + exclusive + ' '
										+ text.substring(2, 1));
					} else {
						$(this).attr("type", "button");
					}
				})
	}
	
	
	var fanum= $("#anum").val();
	var fnum =$("#fnum").val();
	/* function deleteDetail(){
		var anum = "${user.anum}";
		
		if(anum == fanum){
			$.ajax({
				url:"fsaleDeleteCheck?anum="+anum+"&fnum="+fnum,
				type:"get",
				success: function(data){
					
					if(data ===1){
						if(text==='??????'){
							location.href = 'commercialMain';
						}else if(text==='????????????'){
							location.href = 'realprice';
						}
						else if(text==='??????'){
							location.href = 'newsList';
						}
						
					}else{
						alert('????????? ????????? ??????????????????. ?????? ???????????? ???????????????.');
						var anum = "${user.anum}";
						location.href = 'payment?anum='+anum;
					}
				}
				
				
			});
		}
		
	}
	
	function updateDetail(){
		var anum = "${user.anum}";
		
		if(anum == fanum){
			$.ajax({
				url:"fsaleUpdateCheck?anum="+anum+"&fnum="+fnum
				type:"get",
				success: function(data){
					alert(data)
					if(data ===1){
						if(text==='??????'){
							location.href = 'commercialMain';
						}else if(text==='????????????'){
							location.href = 'realprice';
						}
						else if(text==='??????'){
							location.href = 'newsList';
						}
						
					}else{
						alert('????????? ????????? ??????????????????. ?????? ???????????? ???????????????.');
						var anum = "${user.anum}";
						location.href = 'payment?anum='+anum;
					}
				}
				
				
			});
		}
	} */
</script>
<%@ include file="../include/footer.jsp"%>
