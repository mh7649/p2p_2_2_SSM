<%--
  Created by IntelliJ IDEA.
  User: ID.LQF
  Date: 2017/12/25
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>首页信息</title>
    <%@include file="../../common/css/css_bootstrap.jsp" %>
    <%@include file="../../common/css/css_bootstrap-table.jsp" %>
    <%@include file="../../common/css/css_sweetalert.jsp" %>
    <%@include file="../../common/css/css_fileinput.jsp" %>
</head>
<body>

<div class="tool-bar" id="tool-bar">
    <button class="btn btn-primary" data-toggle="modal" data-target="#saveHomeImgModal" onclick="showForm();">添加</button>
    <button class="btn btn-default" data-toggle="modal" onclick="pagerHuserHomeImg.updateHomeImg();">修改</button>
</div>
<table id="homeImg-list" class="table table-hover"
       data-single-select="true"
       data-url="<%=path%>/homeImg/pager_criteria">
    <thead>
    <tr>
        <th data-checkbox="true"></th>
        <th data-field="imghref">封面链接</th>
        <th data-field="imgpath" data-formatter="setTable.formatImg">封面图片</th>
    </tr>
    </thead>
</table>

<%@include file="include_save_homeimg.jsp"%>
<%@include file="include_update_homeimg.jsp"%>

<%@include file="../../common/js/js_jquery.jsp" %>
<%@include file="../../common/js/js_boostrap.jsp" %>
<%@include file="../../common/js/js_boostrap_table.jsp" %>
<%@include file="../../common/js/js_select2.jsp" %>
<%@include file="../../common/js/js_sweetalert.jsp" %>
<%@include file="../../common/js/js_form.jsp" %>
<%@include file="../../common/js/js_data_dict.jsp" %>
<%@include file="../../common/js/js_fileinput.jsp" %>

<script src="<%=path%>/static/js/our/huser/lqf/pager_huser_homeimg.js"></script>
<script>
    $(function () {
        setTable.setBootstrapTable('homeImg-list');
    });

    $("#imgpath").fileinput({
        'allowedFileExtensions' : ['jpg', 'png','gif'],
        showUpload: false //是否显示上传按钮
    });

    $("#imgpath1").fileinput({
        'allowedFileExtensions' : ['jpg', 'png','gif'],
        showUpload: false, //是否显示上传按钮
    });

</script>
</body>
</html>
