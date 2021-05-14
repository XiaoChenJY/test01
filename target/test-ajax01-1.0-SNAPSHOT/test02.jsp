
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://"+
            request.getServerName() + ":" +request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>功能入口</title>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-3.6.0.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#djbtn").click(function (){
               $.ajax({
                   url:"other.do",
                   data:{},
                   dataType:"json",
                   type:"get",
                   success:function (data){
                        // $("#msg").html(data.id+"  "+data.name+"  "+data.age);
                       $.each(data,function (i,n){
                           if(i==0){
                               $("#id1").html(n.id);
                               $("#name1").html(n.name);
                               $("#age1").html(n.age);
                           }
                          if (i==1){
                              $("#id2").html(n.id);
                              $("#name2").html(n.name);
                              $("#age2").html(n.age);
                          }
                       })
                   }
               })
            })
        })
    </script>
</head>
<body>
     <button id="djbtn" >点击</button>
     <br>
     <br>
     学员1：<br>
     编号：<span id="id1"></span><br>
     姓名：<span id="name1"></span><br>
     年龄：<span id="age1"></span><br>
     <br>
     <br>
     学员2：<br>
     编号：<span id="id2"></span><br>
     姓名：<span id="name2"></span><br>
     年龄：<span id="age2"></span><br>
</body>
</html>
