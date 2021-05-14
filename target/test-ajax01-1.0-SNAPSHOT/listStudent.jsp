
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
                $.ajax({
                    url:"queryStudent.do",
                    dataType:"json",
                    type:"get",
                    success:function (data){
                        // $("#msg").html(data.id+"  "+data.name+"  "+data.age);
                        $("#stubody").html("");
                        $.each(data,function (i,n){
                            $("#stubody").append("<tr>")
                            .append("<td>"+n.id+"</td>")
                            .append("<td>"+n.name+"</td>")
                            .append("<td>"+n.age+"</td>")
                            .append("</tr>")
                        })
                    }
                })
        })
    </script>
</head>
<body>
    <div align="center">
        <p>查询学生</p>
        <table>
            <thead>
            <tr>
                <td>id</td>
                <td>姓名</td>
                <td>年龄</td>
            </tr>
            </thead>
            <tbody id="stubody">

            </tbody>
        </table>
    </div>
</body>
</html>
