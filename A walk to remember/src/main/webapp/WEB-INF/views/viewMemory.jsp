<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

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
    
    <table border="1" cellpadding="5" cellspacing="5">
            <tr>
                <td><b>Memory Description</b></td>
                <td><b>Memory time</b></td>
                
            </tr>
            <c:forEach var="memory" items="${memories}">
                <tr>
                    <td>${memory.memoryDescription}</td>
                    <td>${memory.memoryDate}</td>
                 
                </tr>
            </c:forEach>
        </table>
    
    
    
  </div>
</div>

</body>
</html>


