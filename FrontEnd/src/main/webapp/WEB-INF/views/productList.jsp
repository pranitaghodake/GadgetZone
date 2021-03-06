<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


  
   
    <div class="container-wrapper">
<div class="container">
<div class="page-header">
<h1>All Products</h1>


<p class="lead">Checkout All Awesome products available now.</p>
      
     <table class="table table-striped table-hover"> 
     <thead>
     <tr class="bg-success">
     <th>Photo Thumb</th>
     <th>id</th>
     <th>name</th>
     <th>description</th>
     <th>price</th>
     <th>quantity</th>
     <th>supplierId</th>
     <th>categoryId</th>
     <th></th>
     </tr>
     </thead>
     <c:forEach items="${products}" var="product">
     <tr>
    <td><img src="<c:url value="/resources/images/${product.id}.png"/>"
						alt="image" style="width: 100%"/></td>     
     <td>${product.id}</td>
     <td>${product.name}</td>
     <td>${product.description}</td>
     <td>${product.price}USD</td>
     <td>${product.quantity}</td>
     <td>${product.supplierId}</td>
     <td>${product.categoryId}</td>
     <td><a href="<spring:url value="/product/viewProduct/${product.id}"/>"
     ><span class="glyphicon glyphicon-info-sign"></span></a></td>
     </tr>
     </c:forEach>
     </table>
     
     
     <%@include file="/WEB-INF/views/template/footer.jsp"%>
