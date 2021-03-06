<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="${springMacroRequestContext.contextPath}/static/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <script src="${springMacroRequestContext.contextPath}/static/lib/jquery/jquery-1.9.0.min.js" type="text/javascript"></script>
    <script src="${springMacroRequestContext.contextPath}/static/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
    <script src="${springMacroRequestContext.contextPath}/static/lib/ligerUI/js/plugins/ligerGrid.js" type="text/javascript"></script>
    <script src="${springMacroRequestContext.contextPath}/static/lib/ligerUI/js/plugins/ligerResizable.js" type="text/javascript"></script>
    <script src="${springMacroRequestContext.contextPath}/static/lib/ligerUI/js/plugins/ligerCheckBox.js" type="text/javascript"></script>
    <script src="${springMacroRequestContext.contextPath}/static/data/customers_data.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function ()
        {
            window['g'] =
            $("#maingrid").ligerGrid({
                columns: [
                { display: '顾客', name: 'CustomerID', align: 'left', width: 100, minWidth: 60 },
                { display: '公司名', name: 'CompanyName', minWidth: 120 },
                { display: '联系名', name: 'ContactName', minWidth: 140 },
                { display: '城市', name: 'City' }
                ], data:CustomersData,  height:300,pageSize:30 ,rownumbers:true
            });
            $("#pageloading").hide();
        });

        function deleteRow()
        {
            g.deleteSelectedRow();
        }
    </script>
</head>
<body style="overflow-x:hidden; padding:2px;">
<div class="l-loading" style="display:block" id="pageloading"></div>
 <a class="l-button" style="width:120px;float:left; margin-left:10px; display:none;" onclick="deleteRow()">删除选择的行</a>


 <div class="l-clear"></div>

    <div id="maingrid"></div>

  <div style="display:none;">

</div>

</body>
</html>
