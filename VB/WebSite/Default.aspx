<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>ASPxTreeList: How to Get Node Level on Client-Side Events</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxTreeList ID="treeList" runat="server" AutoGenerateColumns="False" ClientInstanceName="treeList"
			DataSourceID="AccessDataSource1" KeyFieldName="EmployeeID" ParentFieldName="ReportsTo"
			OnDataBound="treeList_DataBound">
			<Columns>
				<dx:TreeListTextColumn FieldName="LastName" VisibleIndex="0">
				</dx:TreeListTextColumn>
			</Columns>
			<ClientSideEvents NodeClick="function(s, e) {
			if((s.cp_level2Nodeslist).indexOf(e.nodeKey)&gt; -1)
			window.location.href ='Default2.aspx?id='+e.nodeKey;            
}" />
			<SettingsBehavior AutoExpandAllNodes="True" />
		</dx:ASPxTreeList>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Northwind.mdb"
			SelectCommand="SELECT [EmployeeID], [LastName], [ReportsTo] FROM [Employees]">
		</asp:AccessDataSource>
	</div>
	</form>
</body>
</html>