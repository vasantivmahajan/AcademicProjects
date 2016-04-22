<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <div class="jumbotron">
    <h1>Welcome ${sessionScope.userObj.firstName} </h1>    
    <h2> Post a memory </h2>  
  
  <form:form action="post.htm" commandName="memory" method="post" class="form-horizontal" role="form">

     <div class="form-group">
          
                 <div class="col-sm-9">
                     <label for="memoryDescription">Memory Description:</label>
 					 <textarea class="form-control" rows="5" name="memoryDescription" id="memoryDescription"></textarea>
                 </div>
                 
                 <div class="col-sm-9">
                     <label for="memoryDate">Memory Date:</label>
 					 <input type="text" class="form-control" name="memoryDate" id="memoryDate" />
                 </div>
                 <input type="hidden" name="userName" value ="${sessionScope.userObj.userName}">
                 <div class="col-sm-9">
                 <input type="submit" value="Submit">
                 </div>
    </div>
  	
  </form:form>
  
</div>
</div>
</body>
</html>


