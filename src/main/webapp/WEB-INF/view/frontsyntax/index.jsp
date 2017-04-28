<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List,java.util.ArrayList" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:import url="../tmpl/header.jsp" />  

<div class="panel panel-success">
  <div class="panel-heading">EL Expression</div>
  <div class="panel-body">
    <div class="well well-sm">\${value}</div>
    <table class="table table-striped">
        <tr><td>\${"String"}</td><td>${"Hello World"}</td></tr>
        <tr><td>\${int + int}</td><td>${5} + ${7} = ${5+7}</tr>
        <tr>
            <td>
            Array loop：
            <%
                String[] str = {"一号" , "二号" , "三号" , "四号" , "五号"};  
  
                request.setAttribute("user",str);  
            %>
           
            </td>
            <td>
            <%
                String[] list = (String[])request.getAttribute("user");
                for (int i =0;i<list.length;i++) {
                    request.setAttribute("index", i);
            %>
                ${index} - ${user[index]}； &nbsp;
                ${str.toString()}
            <% } %>
            </td>
           
        </tr>
        
        <tr>
            <td>Arraylist loop</td>
            <td>
                <%
                List<String> lists = new ArrayList<String>();
                lists.add("百思买");
                lists.add("沃尔玛");
                lists.add("家乐福");
               
                request.setAttribute("lists", lists);
                
                for (int i =0;i<lists.size();i++) {
                   request.setAttribute("index", i);
                %>
                    ${index} - ${lists[index]}; &nbsp;
                <% } %>
            </td>
        </tr>
        
        <tr>
            <td>\${empty expression}</td>
            <td>
                <% request.setAttribute("value1", "value1"); request.setAttribute("value2", null); request.setAttribute("value3", ""); %>
                ${value1} - ${empty value1}<br>
                ${value2} - ${empty value2}<br>
                ${value3} - ${empty value3}
            </td>
        </tr>
        
        <tr>
            <td>\${logical operation}</td>
            <td>
                <% 
                request.setAttribute("userName","小武");  
                request.setAttribute("pwd","123456");  
                %>
                userName = ${userName}; pwd = ${pwd}
                <hr>
                <br>
                \${userName != "" && pwd == "asd"} - ${userName != "" && pwd == "asd"} <br>
                \${userName != "" || pwd == "asd"} - ${userName != "" || pwd == "asd"} <br>
                \${userName == "小武" && pwd == "123456" } - ${userName == "小武" && pwd == "123456"}
            </td>
        </tr>
        
        <tr>
            <td>\${conditional operation}</td>
            <td>
            \${userName=="小武" ? "对" : "错"} - ${userName=="小武" ? "对" : "错"}<br>

            </td>
        </tr>
        
        <tr>
            <td>\${pageContext}</td>
            <td>
                \${pageContext.request.serverPort} = ${pageContext.request.serverPort} <br>
                \${pageContext.response} = ${pageContext.response} <br>
                \${pageContext.out} = ${pageContext.out} <br>
                \${pageContext.session} = ${pageContext.session} <br>
                \${pageContext.exception} = ${pageContext.exception} <br>
                \${pageContext.page} = ${pageContext.page} <br>
                \${pageContext.servletContext} = ${pageContext.servletContext}
            </td>
        </tr>
        
        <tr>
            <td>\${pageScope}</td>
            <td>
                <isp:useBean id="user" scope="page" class="test.Userinfo" ></isp:useBean>
                <isp:setProperty property="name" name="user" value="引起启" />
                ${pageScope.user.name}
            </td>
        </tr>
        
        <tr>
            <td>\${requestScope}</td>
            <td>
                \${requestScope.userName} = ${requestScope.userName} <br>
                \${userName} = ${userName}
            </td>
        </tr>
        
        <tr>
            <td>\${sessionScope}</td>
            <td>
                <% session.setAttribute("userName", "几米"); %>
                \${sessionScope.userName} = ${sessionScope.userName}
            </td>
        </tr>
        
        <tr>
            <td>\${applicationScope}</td>
            <td>
                <% application.setAttribute("userName", "阳光"); %>
                \${applicationScope.userName} = ${applicationScope.userName}
            </td>
        </tr>
        
        <tr>
            <td>\${param}</td>
            <td>
                <form action="testscope" method="get" name="form1"  >  
                    <input name="user" type="text"value="歌尼亚">  
                    
                    <input type="checkbox"name="affect" id="affect" value="1"> 选择一  
  
                   <input type="checkbox"name="affect" id="affect" value="2">  选择二
              
                   <input type="checkbox"name="affect" id="affect" value="3">  选择三
               
                   <input type="checkbox"name="affect" id="affect" value="4">  选择四  
                    
                    <input type="submit">  
                    
                </form>  
            </td>
        </tr>
        
        <tr>
            <td>\${header}</td>
            <td>${header["connection"]}</td>
        </tr>
        
        <tr>
            <td>\${initValue}</td>
            <td>${initParam.test_init_name}</td>
        </tr>
        
        <tr>
            <td>\${cookie}</td>
            <td>
            <%-- 
                Cookie cookie = new Cookie("user", "天下");  
                response.addCookie(cookie);  
            --%>  
  
            ${cookie.user.value}  
            </td>
        </tr>
    </table>
  </div>
</div>


<div class="panel panel-success">
    <div class="panel-heading">jstl</div> 
    <div class="panel-body">
        <div class="alert alert-warning">
        如果jstl = 1.2，则表示支持 EL 标签，并使用 ${name} 替代 &lt;c:out value="${name}"&gt;，否则使用&lt;c:out /&gt;
        </div>
        
        <table class="table table-striped">
            <tr>
                <td>&lt;c:set var="salary" scope="session" value="${2000*2}"/&gt;</td>
                <td>
                    <c:set var="salary" scope="page" value="23000" />
                    ${salary}
                </td>
            </tr>
            
            <tr>
                <td>&lt;c:remove var="salary"/&gt; and \${salary}</td>
                <td>
                    <c:remove var="salary"/>
                    ${salary}
                </td>
            </tr>
            
            <tr>
                <td>&lt;c:catch&gt;</td>
                <td>
                    <c:catch var="catchException">
                    <%= 5/0 %> 
                    </c:catch>
                    
	                <c:if test="${catchException != null}">
	                 <p>
	                     The Exception is : ${catchException} <br>
	                     There is an exception : ${catchException.message}!
	                 </p>
	                 
	                </c:if>
                </td>
                
            </tr>
            
            <tr>
                <td>&lt;c:if test=\${account > 2000 }&gt;</td>
                <td>
                    <c:set var="account" value="200000" />
                    <c:if test="${account > 2000 }" var="accoutgt2000">
                        <p>My salary is : ${account }</p>
                    </c:if>
                    
                    <c:if test="${accoutgt2000 }">
                        <p>my salary gt 2000</p>
                    </c:if>
                           
                </td>
            </tr>
            
            <tr>
                <td>&lt;c:choose&gt; //会默认加上break</td>
                <td>
                    <c:set var="money" value="10000"/>
                    <c:choose>
                        <c:when test="${money<=10 }">
                            <p class="text-primay">money lte 10 !</p>
                        </c:when>
                        <c:when test="${money>=100 && money <1000 }">
                            <p class="text-info">money gte 100 !</p>
                        </c:when>
                        <c:when test="${money>=1000 && money < 10000 }">
                            <p class="text-success">money gt 1000 !</p>
                        </c:when>
                        <c:otherwise>
                            <p>are you rich ?</p>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            
            <tr>
                <td>&lt;forEach/&gt;</td>
                <td>
                    <c:set var="it" value="${fn:split('1,10,100,1000,10000',',')}" />
                    
                    <c:forEach items="${it }" var="e">
                        ${e } <br> 
                    </c:forEach>
                    
                </td>
            </tr>
            
            <tr>
                <td>&lt;c:forTokens&gt;</td>
                <td>
                    <c:forTokens items="zara,nuha,roshy" delims="," var="name">
                        ${name}<br>
                    </c:forTokens>
                </td>
            </tr>
            
            <tr>
                <td>&lt;c:url&gt; &lt;c:param&gt;</td>
                <td>
                    <c:url value="/index.jsp" var="myURL">
					   <c:param name="trackingId" value="1234"/>
					   <c:param name="reportType" value="summary"/>
					</c:url>
					<c:import url="${myURL}"/>
                </td>
            </tr>
            
            
        </table>
        
    </div>
</div>

<script>

</script>

<c:import url="../tmpl/footer.jsp" charEncoding="utf-8" />