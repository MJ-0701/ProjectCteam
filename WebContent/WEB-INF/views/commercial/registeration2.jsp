<%@page import="mvc.login.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/commercial/sidebar.css" />

<style>
#rightSide{

position: absolute;

top: 547px;

left: 50%;
margin: 0 0 0 510px;
	} 
#rightSide #right_zzim {

position: fixed;
top: 126px;
left: 50%;
margin-left: 600px;
border:1px solid #B0B5BD;
width:320px;
height:750px;

}



#rightSide #right_zzim  div {text-align:center;}

#rightSide   div.recTit{line-height:1.5em;padding:5px;color:white;background-color:#505A69;}
#right_zzim{background-color: white;}
#right_zzim #recentCnt {color:black;}

#recentCnt{background: white;}
#rightSide #right_zzim ul {min-height:100%;}

#rightSide #right_zzim  {text-align:center;padding:5px;} 

#rightSide #right_zzim  img {border:1px solid #ccc}

#right_zzim .detail {

display: none;

position: absolute;

top: 3px;

right: 20px;

xheight: 40px;

xpadding: 15px 11px 0;

xbackground: #404a59;

color: #fff;

xtext-align: left;

white-space: nowrap;

.regist th, tr {
	font-size: 15pt;
}

}



#right_zzim li:hover .detail {display:block}

#right_zzim li .btn_delete {

position: absolute;

top: 3px;

right: -1px;

width: 11px;

height: 11px;

background: url(/img/sp.png) no-repeat -193px -111px;

text-indent: -9000px;

}

#right_zzim  #currentPage {color:#505A69;font-weight:bold}

#right_zzim  #totalPageCount {color:#CBC8D2;font-weight:bold}

.noData {color:#ccc;text-align:center;margin-top:223px;}



}

#paging {display:;position:relative;line-height:1em;}

#paging .btn_prev {

position: absolute;

top: 526px;

left: 4px;

width: 13px;

height: 11px;

background: url(/images/ico_arrow.png)  no-repeat ;

text-indent: -9000px;

border:1px solid #CCC;

display:inline-block;

}



#paging .btn_next {

position: absolute;

top: 526px;

right: 4px;

width: 13px;

height: 11px;

background: url(/images/ico_arrow.png) -11px 0px;

text-indent: -9000px;

border:1px solid #CCC;

display:inline-block;

}

</style>


<%@ include file="../include/header_menu.jsp"%>

<section class="contact-section " >

<div class="container2">
	<div class="row">
		<div class="col-md-12 mt-4 add-page" >
			<h1>??? ?????????</h1>
			<hr>		
				<div class="col-md-9 add-page" style="margin-left: 50px;" >
						<div class="col-md-12 mt-12 add-sub-page ">
	            			<table >
	            				<tr>
	            					<td colspan="2">????????????</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						????????????
	            					</td>
	            					<td >
	            					  	<div class="seleted-div">
	            						<span class="square build false" onclick="changeSelect(0)">?????? </span> 
	            						<span class="square build false"  onclick="changeSelect(1)">??????</span> 
	            						<span class="square build false"  onclick="changeSelect(2)"> ?????????</span> 
	            						<span class="square build false"  onclick="changeSelect(3)">????????????(?????????)</span> 
	            						<span class="square build false"  onclick="changeSelect(4)">?????????</span>
	            						</div> 
	            					</td>
	            				</tr> 
	            				<tr id="select-target">
	            					<td >
	            						????????????
	            					</td>
	            					<td>
	            						<div class="seleted-div">
	            						<span class="square sub-build false"  onclick="clicksub(0,'sub-build')">??????</span>
	            						<span class="square sub-build  false" onclick="clicksub(1,'sub-build')">?????????</span>
	            						<span class="square sub-build  false" onclick="clicksub(2,'sub-build')">??????/??????/?????????</span>
	            						<span class="square sub-build  false" onclick="clicksub(3,'sub-build')">????????????</span>
	            						</div>
	            					</td>
	            				</tr>
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12  add-sub-page">
	            		<table >
	            				<tr>
	            					<td colspan="3">????????????</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						??????
	            					</td>
	            					<td >
		            					<div class="search-div">
		            						<input type="text" class="address-search" placeholder="????????? ?????????" ><span class="btn address-btn" style="width: 150px;">????????????</span><br>
	            						?????? API??????
		            					</div>
	            				
	            					</td>
	            					<td >
	            				<div class="col-md-12" style="width:300px; ">??????API</div>
	            					</td>
	            				</tr>
	            				
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12 add-sub-page">
	            			<table >
	            				<tr>
	            					<td colspan="2">????????????</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						????????????
	            					</td>
	            					<td >
	            							<div class="seleted-div col-md-12">
		            							<span class="square charter rent false"  onclick="rent(1)">??????</span>
		            							<span class="square rent false" id='monthly' onclick="rent(2)">??????</span>
		            							<span class="square rent false" id='trading' onclick="rent(3)">??????</span>
		            							<span class="square deal rent false" onclick="deal()">????????????</span>
	            							</div>
	            							<div class="col-md-12">
	            							<div class="rent-input  col-md-12">
	            								
	            							</div>
	            							
	            							</div>
	            					</td>
	            				</tr>
	            				
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12  add-sub-page">
	            			<table >
	            				<tr>
	            					<td colspan="4">????????????</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						????????????
	            					</td>
	            					<td >
	            						<div class="col-md-12 " style="margin-top: 20px;">
	            							<label class="add-page">???????????? <input type="text" id="supply"  onkeydown="startSuggest(1)" class="add-page">???
	            							<input type="text" id="supply-area"class="add-page">???</label>
	            						</div>
	            						<hr>
	            						<div class="col-md-12 " style="margin-bottom: 30xp;">
	            							<label class="add-page">???????????? <input type="text" id="exclusive" onkeydown="startSuggest(2)" class="add-page">???
	            							<input type="text"id="exclusive-area"  class="add-page">???</label>

	            						</div>
	            					</td>
	            					<td >????????????</td>
	            					<td >
	            					<div class="col-md-12 ">
	            					
	            						<label class="add-page">????????????</label>
	            							<select class="add-page floor" id="floor">
	            								<option value="0">??????????????????</option>
	            								<c:forEach begin="1" end="20" step="1" var="i">
	            									<option value="${i}">${i }???</option>
	            								</c:forEach>
	            							</select>
	            					</div>
	            						<hr>
	            						<div class="col-md-12 " >
	            							<label class="add-page">????????????</label>
	            							<select class="add-page my-floor" id="myfloor">
	            								<option value="0">??????????????????</option>
	            								<option value="-1">?????????</option>
	            								<option value="99">??????</option>
	            								<c:forEach begin="1" end="20" step="1" var="i">
	            									<option value="${i}">${i }???</option>
	            								</c:forEach>
	            							</select>
	            						</div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						??????????????????
	            					</td>
	            					<td colspan="3">
	            					<div class="col-md-12 " >
	            						<select class="float-left heating" id="heating">
	            							<option selected="selected">???????????? ??????</option>
	            							<option>????????????</option>
	            							<option>????????????</option>
	            							<option>????????????</option>
	            						</select>
	            						</div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						?????? ?????????
	            					</td>
	            					<td colspan="3">
	            						<div class="seleted-div">
	            						<span class="square move-in  false" onclick="clicksub(0,'move-in')">????????????</span> 
	            						<span class="square move-in  false" onclick="clicksub(1,'move-in')">???????????? </span>
	            						<span class="square move-in  false" onclick="clicksub(2,'move-in')">????????????</span>
	            						</div>
	            					</td>
	            				</tr>
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12  add-sub-page">
	            			<table >
	            				<tr>
	            					<td colspan="4">????????????</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						?????????
	            					</td>
	            					<td colspan="3" >
	            					
	            						<div class="col-md-12 ">
	            							<input type="text" class="input-val adminpay" id="adminpay" value="0" class="address-search">?????? 
	            						</div>
	            						<hr>
	            						<div class="col-md-12 text-left">
	            						<label>??????????????? (??????????????????) :</label>
	            							<span class="square administrative false" onclick="clicksub(0,'administrative')">?????????</span>
	            							<span class="square administrative false" onclick="clicksub(1,'administrative')">??????TV</span>
	            							<span class="square administrative false" onclick="clicksub(2,'administrative')">?????????</span>
	            							<span class="square administrative false" onclick="clicksub(3,'administrative')">?????????</span>
	            							<span class="square administrative false" onclick="clicksub(4,'administrative')">????????????</span>
	            							<span class="square administrative false" onclick="clicksub(5,'administrative')">?????????</span>
	            						</div>
	            				
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						????????????
	            					</td>
	            					<td>
	            						<div class="seleted-div">
	            						<span class="square parking false" onclick="clickpark(0)">??????</span>
	            						<span class="square parking false" onclick="clickpark(1)">?????????</span>
	            						<input type="text" id="pamount" class="input-val"  disabled="disabled" placeholder="0"  value="0"> ??????
	            						</div>
	            					
	            					</td>
	            					<td>
	            						????????????
	            					</td>
	            					<td>
	            					<div class="seleted-div">
		            						<span class="square pets false" onclick="clicksubto(0,'pets')">??????</span>
		            						<span class="square pets false" onclick="clicksubto(1,'pets')">?????????</span>
	            						</div>
	            					</td>
	            				</tr>
	            					<tr>
	            					<td >
	            						???????????????
	            					</td>
	            					<td>
	            							<div class="seleted-div">
	            						<span class="square elevator false" onclick="clicksubto(0,'elevator')">??????</span>
	            						<span class="square elevator false" onclick="clicksubto(1,'elevator')">??????</span>
	            						</div>
	            					</td>
	            					<td >
	            						?????????/?????????
	            					</td>
	            					<td>
	            						<div class="seleted-div">
		            						<span class="square balcony false"  onclick="clicksubto(0,'balcony')">??????</span>
		            						<span class="square balcony false"  onclick="clicksubto(1,'balcony')">??????</span>
	            						</div>
	            					</td>
	            				</tr>
	            				
	            				<tr>
	            					<td >
	            						?????????
	            					</td>
	            					<td>
	            						<div class="seleted-div">
		            						<span class="square built false" onclick="clicksubto(0,'built')">??????</span>
		            						<span class="square built false"onclick="clicksubto(1,'built')" >??????</span>
	            						</div>
	            					</td>
	            					<td >
	            						??????
	            					</td>
	            					<td>
	            						<div class="seleted-div">
			            						<span class="square structure false" onclick="clicksub(0,'structure')">??????</span>
			            						<span class="square structure false" onclick="clicksub(1,'structure')">1.5???/???????????????</span>
	            						</div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						?????? ??????
	            					</td>
	            					<td colspan="3">
	            						<div class="seleted-div">
			            					<span class="square option false" onclick="clicksub(0,'option')">?????????</span>
			            					<span class="square option false" onclick="clicksub(1,'option')">?????????</span>
			            					<span class="square option false" onclick="clicksub(2,'option')">??????</span>
			            					<span class="square option false" onclick="clicksub(3,'option')">??????</span>
			            					<span class="square option false" onclick="clicksub(4,'option')">??????</span>
			            					<span class="square option false" onclick="clicksub(5,'option')">TV</span>
			            					<span class="square option false" onclick="clicksub(6,'option')">?????????</span>
			            					<span class="square option false" onclick="clicksub(7,'option')">?????????</span>
			            					<span class="square option false" onclick="clicksub(8,'option')">???????????????</span>
			            					<span class="square option false" onclick="clicksub(9,'option')">?????????</span>
			            					<span class="square option false" onclick="clicksub(10,'option')">???????????????</span>
			            					<span class="square option false" onclick="clicksub(11,'option')">???????????????</span>
			            					<span class="square option false" onclick="clicksub(12,'option')">??????</span>
	            						</div>
	            					</td>
	            					
	            				</tr>
	            				<tr>
	            					<td >
	            						?????? ????????????
	            					</td>
	            					<td colspan="3">
	            						<div class="seleted-div">
	            							<span class="square chartered false" onclick="clicksubto(0,'chartered')">??????</span>
	            							<span class="square chartered false" onclick="clicksubto(1,'chartered')">?????????</span>
	            						</div>
	            					</td>
	            					
	            				</tr>
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12  add-sub-page">
	            			<table >
	            				<tr>
	            					<td colspan="2">????????????</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						??????
	            					</td>
	            					<td style="text-align: left;">
	            						<input type="text" style="width: 50%;" id="title" placeholder="???)???????????? ?????? 5?????????,???????????? ??????????????????.">
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						?????? ??????
	            					</td>
	            					<td>
	            						<textarea   rows="20" cols="150" id="description" maxlength="100" placeholder="
	            						???????????? ?????? ???????????? 
	            						
	            							- ??? ????????? ???????????? ????????? ????????? ??????????????? ????????????
	            								(??????????????????,?????????,SNS,?????????ID,????????????,????????????)
	            							- ?????????????????? ????????? ????????? ????????? ??? ????????????.
	            								(?????????????????????, ??????, ?????? ???)
	            							- 100??? ???????????????????????????. 
	            							
	            							* ???????????? ????????? ??????????????? ???????????? ?????? ?????? ??? ????????? ????????? 
	            								?????? ??? ????????????.
	            							*  ???????????? ????????? ???????????? ???????????? ????????? ??????????????????.
	            						"></textarea>
	            					</td>
	            				</tr>
	            				
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12  add-sub-page">
	            			<table >
	            				<tr>
	            					<td colspan="2">????????????</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						??????
	            					</td>
	            					<td >
	            						<img src="">
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						?????? ?????????
	            					</td>
	            					<td>
	            						<form id="file" method="post" action="imgupload" enctype="multipart/form-data">
	            							<input  type="file" value=""><input type="submit" class="btn img-btn" value="??????????????????">
	            						</form>
	            					</td>
	            				</tr>
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12  last  add-sub-page" style="padding-top: 0px; margin-bottom: 30px;">
	            			<div class="col-md-12">
	            				<div class="col-md-2" style="width: 100px;"></div>
	            				<div class="col-md-10" style="text-align: center;">
	            					<input type="checkbox" id="check" >
	            									?????? ?????? ????????? ?????????????????? ????????? ????????? ?????? ????????? ????????? ????????????.
	            				</div>
	            				
	            			</div>
	            			<div class="col-md-12" id="result"  style="text-align: center;">
	            				<form  id="estater">
	            					<input type='hidden' value='${user.anum}' name='anum'>
	            				</form>
	            				
	            				<a class="btn" id="filter_apply" onclick="submit()">????????????</a>
	            				<a class="btn" id="filter_close" href="semi.Project?page=estate&code=1">??????</a>
	            				</div>
	            		</div>
	          	 </div>
	          	 <div class="col-md-3 mt-3" >
	          	 		<%
UserVO vo = (UserVO) session.getAttribute("user");
if(vo.getPgubun().equals("??????"))  {
%>
<%@ include file="sidemenu3.jsp"%>
<%  }else{%>
<%@ include file="sidemenu2.jsp"%> 
<%
}
%>
	          	
</div>
		</div>

	</div>
<script >


		
	var classEach=["build","sub-build","rent","move-in","administrative","parking","pets","elevator","balcony","built","option","chartered","structure"];


	var newForm=$("#estater");
	
	function submit(){
		
			
		
		if($('#check').val()!==''){
			addestate();
			
			newForm.attr('method','post');
			newForm.attr("action", "/semiProjectSpring/insertestate");
			
			
				console.log(newForm.toString());		
		
				if(confirm("?????????????????????????")){
					
					newForm.submit();			
				}else{
					location='addestate';
				}
		}else{
			alert("CheckBox??? ??????????????????.");
			$('#check').focusin();
		}
	
	
	}
	
	function addestate(){
	var input='';
		for(var e = 0;e<classEach.length;e++){
			var name='.'+classEach[e];
			var num=$(name+'.true').length;
		
			var inum=1;
			$(name).each(function(i) {
				if($(this).hasClass("true")){
				var text =$(this).text();
				
				addData(classEach[e],text);
				}
			})
		}
/* 		newForm.append($('<input/>',{type:'hidden',name:'excludive',value:$('#exclusive-area').val()})); */
 		input+="<input type='hidden' value='"+$('#exclusive-area').val()+"' name='exclusive'>"; 
	/* newForm.append($('<input/>',{type:'hidden',name:'supply',value:$('#supply-area').val()})); */
	 	input+="<input type='hidden' value='"+$('#supply-area').val()+"' name='supply'>"; 
		var floor=$('#myfloor').val()+"/"+$('#floor').val();
	
		
	/* 	newForm.append($('<input/>',{type:'hidden',name:'floor',value:floor})); */
		 input+="<input type='hidden' value='"+floor+"' name='floor'>"; 
		/* newForm.append($('<input/>',{type:'hidden',name:'heating',value:$('#heating').val()})); */
	 	input+="<input type='hidden' value='"+$('#heating').val()+"' name='heating'>"; 
	/* newForm.append($('<input/>',{type:'hidden',name:'title',value:$('#title').val()})); */
	 	input+="<input type='hidden' value='"+$('#title').val()+"' name='title'>"; 
	
	
		input+="<textarea hidden='hidden'rows='20' cols='150' maxlength='100'  name='description'>"+$('#description').val()+"</textarea>";
	 	
		newForm.append(input);
			
		
	
	
		
	}
	
	
	function addData(className,text){
	
		var values='';
		var input='';
		
		if(className==="build"){
			values=text;
			/* newForm.append($('<input>',{type:'hidden',name:'build',value:values})); */
			 input+="<input type='hidden' value='"+values+"' name='build'>"; 
		}else if(className==="sub-build"){
			values=text;
			
		input+="<input type='hidden' value='"+values+"' name='subbuild'>"; 
			/* newForm.append($('<input>',{type:'hidden',name:'subbuild',value:values})); */
		}else if(className==="rent"){
		
			var dans=false;
		
			if(text==='????????????'){
				dans=true;
			}
			
			var num= text.toString().indexOf(',');
			if(num>-1){
				text=text.toString().substring(0,num);
				
			}
			
			if(text==='??????'){
				var rpay='';
				$('.deposit').each(function(i) {
					
					var thisv =$('.monthly');
					
					
					
					values=$(this).val()+'/'+thisv[i].value;
					 input+="<input type='hidden' value='"+dans+"' name='dan'>"; 
					/* newForm.append($('<input/>',{type:'hidden',name:'dan',value:dans})); */
					 input+="<input type='hidden' value='B2' name='rentv'>"; 
					/* newForm.append($('<input/>',{type:'hidden',name:'rentv',value:text})); */
					 input+="<input type='hidden' value='"+values+"' name='rpay'>"; 
					/* newForm.append($('<input/>',{type:'hidden',name:'rpay',value:values})); */
					num+=i;
				});
			
			} if(text==='??????'){
				values=$('#charter').val();
			
			/* 	newForm.append($('<input/>',{type:'hidden',name:'rentv',value:text}));
				newForm.append($('<input/>',{type:'hidden',name:'dan',value:dans}));
				newForm.append($('<input/>',{type:'hidden',name:'rpay',value:values})); */
			 input+="<input type='hidden' value='B1' name='rentv'>"; 
			 	input+="<input type='hidden' value='"+dans+"' name='dan'>"; 
				input+="<input type='hidden' value='"+values+"' name='rpay'>"; 
			
			} if(text==='??????'){
				values=$('#trading').val();
			/* 	newForm.append($('<input/>',{type:'hidden',name:'rentv',value:text}));
				newForm.append($('<input/>',{type:'hidden',name:'dan',value:dans}));
				newForm.append($('<input/>',{type:'hidden',name:'rpay',value:values})); */
				input+="<input type='hidden' value='A1' name='rentv'>";
				input+="<input type='hidden' value='"+dans+"' name='dan'>";
				input+="<input type='hidden' value='"+values+"' name='rpay'>"; 
			}
		
			
			
			
		}else if(className==="move-in"){
			values=text;
			/* newForm.append($('<input/>',{type:'hidden',name:'move',value:values})); */
			input+="<input type='hidden' value='"+values+"' name='move'>"; 
			console.log(input);
		}else if(className==="administrative"){
			
			values=$('#adminpay').val();;
	
		/* 	newForm.append($('<input/>',{type:'hidden',name:'pay',value:values})); */
			input+="<input type='hidden' value='"+values+"' name='pay'>";
			
			values=text;
			/* newForm.append($('<input/>',{type:'hidden',name:'administrat',value:values})); */
			input+="<input type='hidden' value='"+values+"' name='administrat'>";
		}else if(className==="parking"){
			var bool='0';
			if(text==='??????'){
				bool='1';
			}
			
		/* 	
			newForm.append($('<input/>',{type:'hidden',name:'park',value:bool}));

			newForm.append($('<input/>',{type:'hidden',name:'ppay',value:$('#pamount').val()})); */
		 	input+="<input type='hidden' value='"+bool+"' name='park'>";
			input+="<input type='hidden' value='"+$('#pamount').val()+"' name='ppay'>";
		}else if(className==="pets"){
			var bool='0';
			if(text==='??????'){
				bool='1';
			}
			
			
		
			name='pets';
		/* 	newForm.append($('<input/>',{type:'hidden',name:'pets',value:bool})); */
			 input+="<input type='hidden' value='"+bool+"' name='pets'>"; 
		}else if(className==="elevator"){
			var bool='0';
			
			if(text==='??????'){
				bool='1';
			}
	
			
			/* 
			newForm.append($('<input/>',{type:'hidden',name:'elevator',value:bool})); */
			 input+="<input type='hidden' value='"+bool+"' name='elevator'>"; 
		}else if(className==="balcony"){
			var bool='0';
			
			if(text==='??????'){
				bool='1';
			}
	
		

			
			/* newForm.append($('<input/>',{type:'hidden',name:'balcony',value:bool})); */
			input+="<input type='hidden' value='"+bool+"' name='balcony'>"; 
			
		}else if(className==="built"){
			var bool='0';
			
			if(text==='??????'){
				bool='1';
			}
			
		/* 	newForm.append($('<input/>',{type:'hidden',name:'built',value:bool})); */
		input+="<input type='hidden' value='"+bool+"' name='built'>"; 
		
		}else if(className==="option"){
			
			/* newForm.append($('<input/>',{type:'hidden',name:'option',value:text})); */
	 	input+="<input type='hidden' value='"+text+"' name='option'>"; 
	 	
		}else if(className==="chartered"){
			var bool='0';
			if(text==='??????'){
				bool='1';
			}
		/* 	newForm.append($('<input/>',{type:'hidden',name:'chartered',value:bool})); */
			
		input+="<input type='hidden' value='"+bool+"' name='chartered'>"; 
			
		}else if(className==="structure"){
			
			
		/* 	newForm.append($('<input/>',{type:'hidden',name:'structure',value:text})); */
		 input+="<input type='hidden' value='"+text+"' name='structure'>"; 
		}
		
		
		newForm.append(input);
	}
	

	
	function deal(){
		if($('.deal').hasClass('false')){
			$(".deal").css('color','white').css('background-color','#7db4ea');
			$(this).removeClass("false").addClass("true");		
		
		}else if($('.deal').hasClass('true')){
			$(".deal").css('color','black').css('background-color','white');
			$(this).removeClass("true").addClass("false");	
		
		}
		
	}

	function clicksub(num,className){
		$(('.'+className)).each(function(i) {
			
			
			if(i===num&&$(this).hasClass('false')){
				
					
					$(this).css('color','white').css('background-color','#7db4ea');
					
					$(this).removeClass("false").addClass("true");		
			
				
			}else if(i===num&&$(this).hasClass('true')){
				$(this).css('color','black').css('background-color','white');
				
				$(this).removeClass("true").addClass("false");	
			}
		})
	}
	
	
	function clicksubto(num,className){
		$(('.'+className)).each(function(i) {
			
			
			if(i===num&&$(this).hasClass('false')){
				$(this).css('color','white').css('background-color','#7db4ea');
				$(this).removeClass("false").addClass("true");	
				

					
				
			}else if(i===num&&$(this).hasClass('true')){
				
			}else{

				$(this).css('color','black').css('background-color','white');
				
				$(this).removeClass("true").addClass("false");	
			
			
				
				
				
			}
		})
	}
	
	function clickpark(num){
		$(('.parking')).each(function(i) {
			if(i===num){
				$(this).css('color','white').css('background-color','#7db4ea');
				$(this).removeClass("false").addClass("true");	
				if(num===0){
					 $('#pamount').attr("disabled",false);
				}else{
					
					 $('#pamount').attr("disabled",true);
				}
			}else{
				$(this).css('color','black').css('background-color','white');
				$(this).removeClass("true").addClass("false");	
			}
			
			
		})
		
	}
	
	function changeSelect(num){
		var html='';
		
		if(num===3){
			name=""
			html="<td >	????????????</td>"+
				"<td >"+
				  	"<div class=\"seleted-div\">"+
					"<span class=\"square sub-build true\" onclick=\"clicksub(0,'sub-build')\" >???????????? </span>"+
					"<span class=\"square sub-build false\" onclick=\"clicksub(1,'sub-build')\" >???????????????</span> "+
					
					"</div> "+
				"</td>";
		}else if(num==4){
			html="";
		}else{
			html="<td >	????????????</td>"+
			"<td >"+
			  	"<div class=\"seleted-div\">"+
			  	"<span class=\"square sub-build false\" onclick=\"clicksub(0,'sub-build')\">??????</span>\n"+
				"<span class=\"square sub-build false\" onclick=\"clicksub(1,'sub-build')\" >?????????</span>\n"+
				"<span class=\"square sub-build false\" onclick=\"clicksub(2,'sub-build')\" >??????/??????/?????????</span>\n"+
				"<span class=\"square sub-build false\" onclick=\"clicksub(3,'sub-build')\" >????????????</span>\n"+
				"</div> "+
			"</td>";
		}
		
		$('#select-target').html(html);
		$('.build').each(function(i) {
			if(i===num&&$(this).hasClass('false')){
				$(this).css('color','white').css('background-color','#7db4ea');

				$(this).removeClass("false").addClass("true");	
			}else if(i===num&&$(this).hasClass('true')){
				
			}else{
				$(this).css('color','black').css('background-color','white');
				$(this).removeClass("true").addClass("false");	
			}
		})
		
	}
	
	var lnum=1;
	var nnum=0;
	var tnum=0;
	var mnum=0;
	function rent(num){
		var html='';
		var close='';
		var text='';
		$('.rent').each(function(i) {
			if(i===(num-1)){
				$(this).removeClass("false").addClass("true");
			}
		})
		if(num===1 ){
			if(nnum===0){
				
				html=
					"<label class='lnum-"+lnum+"'>"+
						"<span>??????</span>"+
						"<input type='text' class='rpay' id='charter' required  placeholder='??????' >"+
						"<span>??????</span>"+
					"</label>";
				nnum++;
				$('.charter').css("background-color", "gray");
				
			}else{
				return;
				
			}

		}else if(num===3){
			if(tnum===0){
			
						html="<label class='lnum-"+lnum+"'>"+
						"<span>??????</span>"+
						"<input type='text' class='rpay'id='trading'  required placeholder='?????????' >"+
						"<span>??????</span>"+
					"</label>";
					tnum++;
			}
			else{
				return;
				
			}
		}else if(num===2){
			
				html="<label class='lnum-"+lnum+"'>"+
				"<span>??????</span>"+
				"<input type='text' class='rpay deposit' required placeholder='?????????' > / <input type='text'  class='rpay monthly' required placeholder='??????' >"+
				"<span>??????</span>"+
			"</label>";
			mnum++;
		}
		html+="<label class='close-x lnum-"+lnum+" label-"+lnum+"' onclick='closen("+lnum+")' > x </label><br>";
		$('.rent-input').append(html);
		lnum++;

	}
	
	function closen(num){
		var name=".lnum-"+num;
		if(nnum>0){
			nnum--;
		$('.charter').css("background-color", "white");
		
		}
		if(nnum===0){
			$('.charter').removeClass("true").addClass("false");
		}
		if(tnum>0){
			tnum--;
			
		}
		if(tnum===0){
			$('#trading').removeClass("true").addClass("false");
		}
		if(mnum>0){
			mnum--;
			
		}else if(mnum===0){
			$('#monthly').removeClass("true").addClass("false");
		}
		$('.label-'+num+' + br').remove();
		$(name).remove(name);
		
	}
	var lastKey=''; //?????????
	var check = false; //??????????????????
	var loopKey = false; // ????????????
	var vD=null;

	function startSuggest(num){
		if(num===1){
			check = false;
		}else if(num===2){
			check = false;
		}
		vD=document.getElementById("view");
		if(check===false){ // ?????? ????????? ?????? 0.5????????? sendKeyword()??????
			setTimeout("sendKeyword("+num+");",500);
			loopKey=true;
		}
		check = true;
	}
	function sendKeyword(num){
		if(loopKey===false){return}
		var key;
			if(num===1){
				key =$('#supply').val();
			}else if(num===2){
				key =$('#exclusive').val();
			}
		
		if(key===''||key===' '){ //?????? ????????? ???????????????
			lastKey='';
			
		}else if(key!==lastKey){ // ???????????? ???????????? ????????? ????????????.
			lastKey=key;
			key=parseInt(key)*3.305785;
			if(num===1){
				$('#supply-area').val(key);
			}else if(num===2){
				$('#exclusive-area').val(key);
			}
		}
		setTimeout("sendKeyword("+num+");",500);
	}
	function select(i){ // ????????? ????????? ????????? ????????? ???????????? ????????? ????????? ?????????
		f.word.value=jsonObj[i];
		vD.style.display='none';
		check=false;
		loopKey=false;
	}
</script>

 
</div>
</section>
<%@ include file="../include/footer.jsp"%>


