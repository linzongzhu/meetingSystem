<%--
  Created by IntelliJ IDEA.
  User: mi
  Date: 2019/12/3
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>basic example</title>
</head>
<body>
<script type="text/javascript"  src="../js/jquery.qrcode.min.js"></script>
<script type="text/javascript" src="../js/jquery.qrcode.js"></script>
<script type="text/javascript" src="../js/qrcode.js"></script>
<script type='text/javascript' src='http://cdn.staticfile.org/jquery/2.1.1/jquery.min.js'></script>
<script type="text/javascript" src="http://cdn.staticfile.org/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>

<p>Render in table</p>
<div id="qrcodeTable"></div>
<p>Render in canvas</p>
<div id="qrcodeCanvas"></div>
<script>
    //jQuery('#qrcode').qrcode("this plugin is great");
    jQuery('#qrcodeTable').qrcode({
        render	: "table",
        text	: "id"
    });
    /*
    jQuery('#qrcodeCanvas').qrcode({
        text	: "http://jetienne.com"
    });*/
</script>

</body>
</html>
