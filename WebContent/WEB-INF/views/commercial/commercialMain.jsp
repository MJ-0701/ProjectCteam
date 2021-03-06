<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<style>
.card-body{
	margin: 0 auto;
	width: 955px;
	padding: 0px;
}
.commercialContainer{
	border: 4px solid #F2A81D;
    width: 960px;
    border-radius: 10px;
    background-color: #FFFFFF;
    padding: 10px;
}
.commercialSection{
	border: 0px;
	background-color: #F2A81D;
}
.commercialBorder{
	border-left: 4px solid #F2A81D;
	border-right: 4px solid #F2A81D;
	border-bottom: 4px solid #F2A81D;
}
.container{
	font-family: 'Noto Sans KR',sans-serif;
	padding-top: 10px;
}
em{
	font-style: normal;
	color: #F25C05;
}
#product{
	text-align: center;
	border: 4px double #004358;
	width: 1116px;
}
.noSearchData{
	margin: 0 auto;
	font-size: 20px;
	padding-top: 10px;
	padding-bottom: 10px;
}
/* .chartTable{
	text-align: center;
    border: 4px double #004358;
    padding: 0px;
} */
.modalServer{
	width: 95%;
	margin-left: 10px;
	margin-right: 10px;
}
#productdesc{
	margin-left: 0px;
	margin-right: 0px;
	border-bottom: 4px double #004358;
	margin-top: 10px;
	width: 1108px;
}
.locationinfo{
	font-size: 2.0rem;
	margin-top: 0px !important;
	margin-bottom: 10px !important;
	width: 100%;
}
.locationinfo > em {
	font-size: 16px;
	font-weight: 600;
}
.infobutton{
	width: 55%;
	font-size: 15px;
	height: 40px;
    background-color: #FFFFFF;
    border: 2px solid #004358;
    border-radius: 0px;
    color: #000000;
    line-height: 3px;
    padding: 5px 15px 5px 15px;
}
.infobutton2{
	width: 85%;
	font-size: 15px;
	height: 40px;
    background-color: #FFFFFF;
    border-radius: 1px;
    color: #000000;
    padding: 5px 10px 5px 10px;
}
.infobutton2:hover{
	text-decoration: none;
	color: #000000;
	
}
.infobutton2 > span:hover{
	text-decoration: none;
	color: #000000;
}
.populationButton{
	width: 50%;
	font-size: 17px;
	height: 40px;
    background-color: #FFFFFF;
    border: 2px solid #004358;
    border-radius: 1px;
    color: #000000;
    margin: 0 auto;
    padding: 5px 10px 5px 10px;
}
.populationButton:hover{
	text-decoration: none;
	color: #000000;
}
.container{
	height: 1600px;
}
</style>
<section class="contact-section">
	<!-- Page Content -->
	<div class="container">
		<!-- Call to Action Well -->
		<script src="resources/js/commercial/json2.js"></script>
		<div class="commercialSection">
			<div class="card-body">
				<form class="form-inline commercialContainer">
					<select id="combobox1" class="form-control"
						style="margin-right: 10px; width: 120px">
						<!-- <input type="text" autocomplete="off" placeholder="Select a State" class="combobox input-large form-control"> -->
						<option>??? ??????</option>
					</select> <select id="combobox2" class="form-control"
						style="margin-right: 10px; width: 120px">
						<!-- <input type="text" autocomplete="off" placeholder="Select a State" class="combobox input-large form-control"> -->
						<option>??? ??????</option>
					</select> <select id="combobox3" class="form-control"
						style="margin-right: 10px; width: 200px">
						<option>?????? ??????</option>
					</select> <select id="combobox4" class="form-control"
						style="margin-right: 10px; width: 250px">
						<option>?????? ??????</option>
					</select> 
				</form>
				<!-- <p class="text-white m-0">?????? ?????? ?????? ?????? ????????? ??????</p> -->
			</div>
		</div>
		<!-- Heading Row -->
		<blockquote class="commercialBorder">
			<div class="row align-items-center my-7">
				<div id="map" class="col-lg-7"
					style="width: 100%; height: 655px; z-index: 0; margin-left: 10px">
					<!-- <img class="img-fluid rounded mb-4 mb-lg-0" src="http://placehold.it/900x400"> -->
				</div>
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d3da01cea8b26f7180225f6a45645c2c&libraries=services,clusterer,drawing"></script>
				<script>
					var mapContainer = document.getElementById('map'), // ????????? ????????? div 
					mapOption = {
						center : new kakao.maps.LatLng(37.566826, 126.9786567), // ????????? ????????????
						level : 3
					// ????????? ?????? ??????
					};
					// ????????? ???????????????    
					var map = new kakao.maps.Map(mapContainer, mapOption);

					// ?????? ?????? ????????? ???????????????
					var ps = new kakao.maps.services.Places(); 

					$("#combobox1").change(function() {
						ps.keywordSearch($(this).val(), placesSearchCB1);
					})
					$("#combobox2").change(function() {
						ps.keywordSearch($(this).val(), placesSearchCB1);
					})
					$("#combobox3").change(function(){
						ps.keywordSearch($(this).val(), placesSearchCB1);
					})
					
					$("#combobox4").change(
							function() {
								var keyword = $("#combobox2").val() + " " +  $(this).val();
								ps.keywordSearch(keyword, placesSearchCB2);
							})
					
					function placesSearchCB1(data, status, pagination) {
						if (status === kakao.maps.services.Status.OK) {
						
							// ????????? ?????? ????????? ???????????? ?????? ????????? ?????????????????????
							// LatLngBounds ????????? ????????? ???????????????
							var bounds = new kakao.maps.LatLngBounds();
							for (var i = 0; i < data.length; i++) {
								bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
							}
							// ????????? ?????? ????????? ???????????? ?????? ????????? ??????????????????
							map.setBounds(bounds);
						}
					}
					// ????????? ?????? ?????? ??? ???????????? ???????????? ?????????
					function placesSearchCB2(data, status, pagination) {
						if (status === kakao.maps.services.Status.OK) {
							// ????????? ?????? ????????? ???????????? ?????? ????????? ?????????????????????
							// LatLngBounds ????????? ????????? ???????????????
							var bounds = new kakao.maps.LatLngBounds();
							for (var i = 0; i < data.length; i++) {
								displayMarker(data[i]);
								bounds.extend(new kakao.maps.LatLng(data[i].y,
										data[i].x));
							}
							// ????????? ?????? ????????? ???????????? ?????? ????????? ??????????????????
							map.setBounds(bounds);
						}
					}

					// ????????? ????????? ???????????? ???????????????
					function displayMarker(place) {
						// ????????? ???????????? ????????? ???????????????
						var marker = new kakao.maps.Marker({
							map : map,
							position : new kakao.maps.LatLng(place.y, place.x)
						});
						// ????????? ?????????????????? ???????????????
						kakao.maps.event
								.addListener(
										marker,
										'click',
										function() {
											// ????????? ???????????? ???????????? ?????????????????? ???????????????
											infowindow
													.setContent('<div style="padding:5px;font-size:12px;">'
															+ place.place_name
															+ '</div>');
											infowindow.open(map, marker);
										});
					}
					var clusterer = new kakao.maps.MarkerClusterer({
				        map: map, // ???????????? ??????????????? ???????????? ????????? ?????? ?????? 
				        averageCenter: true, // ??????????????? ????????? ???????????? ?????? ????????? ???????????? ?????? ????????? ?????? 
				        minLevel: 10 // ???????????? ??? ?????? ?????? ?????? 
				    });
				</script>
				<div class="col-lg-4" id="information">
					<h2>?????? ???????????? ????????????</h2>
					<p>????????? ???????????? ????????? <em>??????</em>??? ??????????????????.<br>
					??? ?????? ????????? ????????????, ?????? ????????????,<br> 
					???????????? ??? ????????? ????????? ?????????????????????.<br>
					?????? ??? ????????? ????????? ?????? ????????????<br>
					<em>?????? ??????</em>??? ?????? ???????????? ??????????????????.</p>
				</div>
				<!-- /.col-md-4 -->
			</div>
		</blockquote>
		<!-- /.row -->
		<!-- Content Row -->
		<div
			class="card text-black bg-secondary my-6 py-4 text-center col-lg-12 bg-white">
			<div class="row" id="product">
				<p class="noSearchData">????????? ????????? ????????????.</p>
			</div>
			<!-- /.row -->
		</div>
		<div id='loadingmessage' style='display: none'>
			<img style="margin: 0 auto; display: block;"
				src='resources/images/ajax-loader.gif' />
		</div>
	</div>
	<script>
		$(function() {
			var cate = $('#combobox1').attr('id');
			var url = 'gu?&cate=' + encodeURIComponent(cate);
			$.ajax({
				url : url,
				success : function(d) {
					$('#combobox1').html(d);
				},
				error : function(e) {
					console.log("Error : " + e);
				}
			});
		});
		$(function() {
			$('#combobox1').change(
					function() {
						var param = $('#combobox1').val()
						var cate = $(this).attr('id')
						var url = 'dong?guName=' + encodeURIComponent(param)
								+ '&cate=combobox2'
						$.ajax({
							url : url,
							success : function(d) {
								$('#combobox2').html(d);
							},
							error : function(e) {
								console.log("Error : " + e);
							}
						});
						var url = 'information?guName='
								+ encodeURIComponent(param)
						$.ajax({
							url : url,
							success : function(d) {
								$('#information').html(d);
							},
							error : function(e) {
								console.log("Error : " + e);
							}
						});
					});
		});
		$(function() {
			$('#combobox2').change(
					function() {
						var param = $('#combobox1').val()
						var param2 = $('#combobox2').val()
						var cate = $(this).attr('id')
						var url = 'information2?guName='
								+ encodeURIComponent(param) + '&dongName='
								+ encodeURIComponent(param2)
								+ '&cate=combobox3'
						$.ajax({
							url : url,
							success : function(d) {
								$('#information').html(d);
							},
							error : function(e) {
								console.log("Error : " + e);
							}
						});
						var url = 'largename?cate=combobox3&guName='+ encodeURIComponent(param) +"&dongName="+ encodeURIComponent(param2)
						$.ajax({
							url : url,
							success : function(d) {
								$('#combobox3').html(d);
							},
							error : function(e) {
								console.log("Error : " + e);
							}
						});
					});
		});
		$(function() {
			$('#combobox3').change(
					function() {
						var guName = $('#combobox1').val()
						var dongName = $('#combobox2').val()
						var largeName = $('#combobox3').val()
						var cate = $(this).attr('id')
						var url = 'mediumname?largeName=' + encodeURIComponent(largeName) + '&cate=combobox4' + "&guName=" + encodeURIComponent(guName) +"&dongName=" + encodeURIComponent(dongName)
						$.ajax({
							url : url,
							success : function(d) {
								$('#combobox4').html(d);
							},
							error : function(e) {
								console.log("Error : " + e);
							}
						});
					});
		});

		function open_pop2() {
			var key = 0;
			var quater = 0;
			var meanOper = 0;
			var meanClose = 0;
			var seoulMeanOper = 0;
			var seoulMeanClose = 0;
			var openBusiBarChart = 0;
			var timePopChart = 0;
			var timePopChartSplitGender = 0;
			var openBusiBarChart = 0;
			getOpenBusiData();
			// ?????? ?????? ????????? ?????? ??? ?????? ?????? ?????? ??????
			draw_timePop();
			draw_OpenBusiBarChart();
			draw_OpenBusiBarChart();
			draw_OpenBusiBarChart();
		};
		// ?????? Close ??????
		function close_pop2(flag) {
			$('#myModal2').hide();
		};
		function draw_timePop() {
			var guName = $("#combobox1").val();
			var url = "getTimePopChart?guName=" + encodeURIComponent(guName);
			$('#timePopChart').html(loadingMessage);
			$.ajax({
				url : url,
				dataType : "json",
				success : function(d) {
					key = d["key"]
					console.log(key)
					$("#keyValue").attr("value", key)
					var value = d["value"]
					timePopChart = c3.generate({
						size:{
							height: 300,
							width: 500
						},
						bindto : "#timePopChart",
						data : {
							columns : [ value ]
						},
						axis : {
							x : {
								type : 'category',
								categories : key
							}
						}
					});
					$("#location").text(guName);
					$("#timePopButton").attr("onclick", "split_gender()")
					$("#timePopButton > span").text("?????? ?????? ??????")
				}
			});
		}
		function split_gender() {
			var guName = $("#combobox1").val();
			var url = "getTimePopChartByGender?guName="
					+ encodeURIComponent(guName);
			$('#timePopChart').html(loadingMessage);
			$.ajax({
				url : url,
				type : "get",
				dataType : "json",
				success : function(d) {
					var valueFemale = d["??????"]
					var valueMale = d["??????"]
					timePopChartSplitGender = c3.generate({
						bindto : "#timePopChart",
						size:{
							height: 300,
							width: 500
						},
						data : {
							columns : [ valueFemale, valueMale ],
						},
						axis : {
							x : {
								type : 'category',
								categories : key
							}
						}
					});
					$("#location").text(guName);
					$("#timePopButton").attr("onclick", "draw_timePop()")
					$("#timePopButton > span").text("?????? ?????? ??????")
				},
				error : function(e) {
					console.log(e);
				}
			})
		}
		function getOpenBusiData() {
			var guName = $("#combobox1").val();
			var dongName = $("#combobox2").val();
			if (dongName === "??? ??????") {
				var url = "outerDataBusi?guname=" + encodeURIComponent(guName);
			} else {
				var url = "outerDataBusi?guname=" + encodeURIComponent(guName)
						+ "&dongname=" + encodeURIComponent(dongName);
			}
			$.ajax({
				url : url,
				success : function(d) {
					$("#product").html(d);
				},
				error : function(e) {
					console.log(e);
				}
			})
		}
		function draw_OpenBusiBarChart() {
			/* console.log("??????!") */
			var guName = $("#combobox1").val();
			var url = "getOuterDataforChart?guName="
					+ encodeURIComponent(guName);
			$('#quaterOpenChart').html(loadingMessage);
			$.ajax({
				url : url,
				dataType : "json",
				success : function(d) {
					quater = d["key"]
					meanOper = d["MeanOper"]
					meanClose = d["MeanClose"]
					seoulMeanOper = d["SeoulMeanOper"]
					seoulMeanClose = d["SeoulMeanClose"]
					openBusiBarChart = c3.generate({
						bindto : "#quaterOpenChart",
						size:{
							height: 300,
							width: 500
						},
						data : {
							columns : [ meanOper ],
							type : 'bar'
						},
						axis : {
							x : {
								type : 'category',
								categories : quater
							}
						}
					});
					$('#loadingmessage').hide();
				}
			});
		}
		function addMeanOper() {
			openBusiBarChart.load({
				columns : [ meanOper ]
			})
			$("#add_button1").attr("onclick", "deleteMeanOper()")
		}
		function addmeanClose() {
			openBusiBarChart.load({
				columns : [ meanClose ]
			})
			$("#add_button2").attr("onclick", "deletemeanClose()")
		}
		function addseoulMeanOper() {
			openBusiBarChart.load({
				columns : [ seoulMeanOper ]
			})
			$("#add_button3").attr("onclick", "deleteseoulMeanOper()")
		}
		function addseoulMeanClose() {
			openBusiBarChart.load({
				columns : [ seoulMeanClose ]
			})
			$("#add_button4").attr("onclick", "deleteseoulMeanOper()")
		}
		function deleteMeanOper() {
			openBusiBarChart.unload({
				ids : '????????? - ??????'
			})
			$("#add_button1").attr("onclick", "addMeanOper()")
		}
		function deletemeanClose() {
			openBusiBarChart.unload({
				ids : '????????? - ??????'
			})
			$("#add_button2").attr("onclick", "addmeanClose()")
		}
		function deleteseoulMeanOper() {
			openBusiBarChart.unload({
				ids : '?????? - ??????'
			})
			$("#add_button3").attr("onclick", "addseoulMeanOper()")
		}
		function deleteseoulMeanClose() {
			openBusiBarChart.unload({
				ids : '?????? - ??????'
			})
			$("#add_button4").attr("onclick", "addseoulMeanClose()")
		}
		$('#loadingmessage').hide();
		var loadingMessage = $("#loadingmessage").html();
		function startAnalysis(){
			var guName = $("#combobox1").val()
			var dongName = $("#combobox2").val()
			var largeName = $("#combobox3").val()
			var cate = $("#combobox4").val()
			
			if(guName === '' || dongName===''||largeName===''||cate===''||guName === null || dongName==='??? ??????'||largeName==='????????????'||cate==='????????????'){
				alert("?????? ????????? ?????? ???????????????.")
			}else{
				location.href="goAnalysisResult?guName="+guName +"&dongName="+dongName +"&largeName="+largeName+"&cate="+cate	
			}
		}
	</script>
	<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.min.js"></script>
</section>
<!-- <script src="resources/js/commercial/script.js"></script> -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<%@ include file="../include/footer.jsp"%>
</html>