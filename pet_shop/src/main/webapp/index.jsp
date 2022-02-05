<%@page import="dao.goodsDAO"%>
<%@page import="dto.goodsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content=""/>
        <meta name="author" content="" />
        <title>도도_고양이용품점</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="./resources/assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="./resources/css/styles.css"/>
    </head>
    <%!
    	boolean login=false;
    	goodsDAO goods = new goodsDAO();
    	private ArrayList<goodsDTO> goods_dtos;
    	int index[]= new int[4];
    %>
    
    <%
    Object userID = session.getAttribute("userId");
    if(userID==null){
		login=false;
	} else{
		login= true;
	}
    
    int pageSize = 4; // 한 페이지에 출력할 레코드 수

	// 페이지 링크를 클릭한 번호 / 현재 페이지
	String pageNum = request.getParameter("pageNum");
	if (pageNum == null){ // 클릭한게 없으면 1번 페이지
		pageNum = "1";
	}
	
	String pagi_Num = request.getParameter("pagi_Num");
	if (pagi_Num == null){ 
		pagi_Num = "0";
	}
	
	int currentPage = Integer.parseInt(pageNum);
	int currentPagi = Integer.parseInt(pagi_Num);

	int count=0;
	count=goods.getCount();
	
	int endPage=(int) count/pageSize+1;
	
    %>
    
    
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#!">도도샵</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="./index.jsp">Home</a></li>
                        <%
                        	if(login==false) {
                        %>
                        <li class="nav-item"><a class="nav-link" href="./login.jsp">로그인</a></li>
                        <% 
                        	}
                        %>
                        <li class="nav-item"><a class="nav-link" href="./sign.jsp">회원가입</a></li>
                        <%
                        	if(login==true){ %>
                        	<li class="nav-item"><a class="nav-link" href="./logoutAction.jsp">로그아웃</a></li>
                        	<li class="nav-item dropdown">
                    		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        	내 페이지
                    		</a>
                    		<div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        		<a class="dropdown-item" href="./buy.jsp">장바구니</a>
                        		<a class="dropdown-item" href="./buyList.jsp">구매내역</a>
                        		<!--  
                        		<div class="dropdown-divider"></div>
                        		<a class="dropdown-item" href="#">Something else here</a>
                        		-->
                    		</div>
                			</li>
                        <% 	
                        	}
                       	%>
                        
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page header with logo and tagline-->
        <header class="py-5 bg-light border-bottom mb-4" style="background-image: url(./resources/image/배경화면1.jpg);">
            <div class="container" >
                <div class="text-center my-5">
                    <h1 class="fw-bolder">고양이가 직접 파는 제품</h1>
                    <p class="lead mb-0">엄청난 품질과 서비스</p>
                </div>
            </div>
        </header>
        <!-- Page content-->
        <div class="container">
            <div class="row">
                <!-- Blog entries-->
                <div class="col-lg-8">
                    <!-- Featured blog post-->
                    <div class="card mb-4">
                        <a href="#!"><img class="card-img-top" src="./resources/image/대문사진.jpg" width="850px" height="350"   alt="..." /></a>
                        <div class="card-body">
                           	<!-- <div class="small text-muted">August 10, 2021</div> -->
                            <h2 class="card-title">가게 주인이올시다</h2>
                            <p class="card-text">많이들 둘러보고 구매부탁한다옹</p>
                            <a class="btn btn-primary" href="#!">Read more →</a>
                        </div>
                    </div>

                    <!-- Nested row for non-featured blog posts-->
                    <div class="row">
                        <div class="col-lg-6">
                            <!-- Blog post-->
                            <%
                            goods_dtos=goods.getAllGoods(currentPage);
                            	for(int i=0;i<goods_dtos.size();i++) {
                            			if(i==2){
                            				break;
                            			}
                            %>
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="./resources/image/<%=goods_dtos.get(i).getName()+".jpg"%>" width="700px" height="350"alt="..." /></a>
                                <div class="card-body">
                                    <!-- <div class="small text-muted">January 1, 2021</div>-->
                                    <h2 class="card-title h4"><%=goods_dtos.get(i).getName()%></h2>
                                    <p class="card-text"><%=goods_dtos.get(i).getPrice()%>원</p>
                                    <%
                                    	index[i]=i;
                                    	if(login==true){
                                    %>
                                    <form action="./select_index.jsp" method="post">
                                    <input type="hidden" name="goodName" value="<%=goods_dtos.get(i).getName()%>">
                                    <input type="hidden" name="goodPrice" value="<%=goods_dtos.get(i).getPrice()%>">
                                    <input type="hidden" name="pageNum" value="<%=pageNum%>">
									<button class="btn btn-primary" type="submit" >장바구니 담기</button>
									</form>  
									<% 
                                    	}
									%> 
                                </div>
                            </div>
                            <%
                            	}
                            %>                
                        </div>
                        <div class="col-lg-6">
                            <!-- Blog post-->
                            <%
                            	for(int i=2;i<goods_dtos.size();i++) {
                            		
                            %>
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="./resources/image/<%=goods_dtos.get(i).getName()+".jpg"%>" width="700px" height="350"alt="..." /></a>
                                <div class="card-body">
                                    <!-- <div class="small text-muted">January 1, 2021</div>-->
                                    <h2 class="card-title h4"><%=goods_dtos.get(i).getName()%></h2>
                                    <p class="card-text"><%=goods_dtos.get(i).getPrice()%>원</p>
                                    <%
                                    	index[i]=i;
                                    	if(login==true){
                                    %>
                                    <form action="./select_index.jsp" method="post">
                                    <input type="hidden" name="goodName" value="<%=goods_dtos.get(i).getName()%>">
                                    <input type="hidden" name="goodPrice" value="<%=goods_dtos.get(i).getPrice()%>">
                                    <input type="hidden" name="pageNum" value="<%=pageNum%>">
									<button class="btn btn-primary" type="submit">장바구니 담기</button>
									</form>    
									<% 
                                    	}
									%> 
                                </div>
                            </div>
                            <%
                            	}
                            %>
                        </div>
                    </div>
                    
                    <!-- Pagination-->
                    <nav aria-label="Pagination">
                        <hr class="my-0" />
                        <ul class="pagination justify-content-center my-4">
                        	<%
                        		if(currentPagi>0){
                        	%>
                        		<li class="page-item"><a class="page-link" href="./index.jsp?pagi_Num=<%=currentPagi-1%>" tabindex="-1" aria-disabled="true"><</a></li>
                        	<%
                        		} else {
                        	%>
                        	<li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true"><</a></li>
                        	<%
                        		}
                        	%>
                            
                            
                            <%
                            	for(int i=1+(currentPagi*5); i<=endPage;i++) {
                            		
                            %>
                            <li class="page-item active" aria-current="page"><a class="page-link" href="./index.jsp?pagi_Num=<%=currentPagi%>&pageNum=<%=i%>"><%=i%></a></li>
                           	<%
                           			if(i%5==0){
                    					break;
                    				}
                            	}
                           	%>
                            <!-- <li class="page-item disabled"><a class="page-link" href="#!">...</a></li>-->
                            
                            <%
                            	if((currentPagi+1)*5>endPage){
                            %>     
                            <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">></a></li>
                            <%
                            	} else {
                            %>
                            <li class="page-item"><a class="page-link" href="./index.jsp?pagi_Num=<%=currentPagi+1%>&pageNum=<%=1+((currentPagi+1)*5)%>">></a></li>
                        	<% 
                            	}
                        	%>
                        </ul>
                    </nav>
                </div>
                <!-- Side widgets-->
                <div class="col-lg-4">
                    <!-- Search widget-->
                    <form action="./search.jsp" method="post">
                    <div class="card mb-4">
                        <div class="card-header">Search</div>
                        <div class="card-body">
                            <div class="input-group">
                                <input class="form-control" type="text" name="search" placeholder="Enter search term..." aria-label="Enter search term..." aria-describedby="button-search" />
                                <button class="btn btn-primary" id="button-search" type="submit" >Go!</button>
                            </div>
                        </div>
                    </div>
                   </form>
                    <!-- Categories widget-->
                    <div class="card mb-4">
                        <div class="card-header">Categories</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <ul class="list-unstyled mb-0">
                                    	<li><a href="./search.jsp?search=<%=URLEncoder.encode("사료", "UTF-8")%>">사료</a></li>
                                        <li><a href="./search.jsp?search=<%=URLEncoder.encode("간식", "UTF-8")%>">간식</a></li>
                                        <li><a href="./search.jsp?search=<%=URLEncoder.encode("장난감", "UTF-8")%>">장난감</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-6">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="./search.jsp?search=<%=URLEncoder.encode("화장실", "UTF-8")%>">화장실</a></li>
                                        <li><a href="#!">꾹꾹이</a></li>
                                        <li><a href="#!">복실복실</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Side widget-->
                    <div class="card mb-4">
                        <div class="card-header">게시판</div>
                        <div class="card-body"><a href="#!">FAQ</a></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="./resources/css/scripts.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
    </script>
    </body>
</html>