Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxTreeList
Imports DevExpress.Web
Imports System.Collections

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub treeList_DataBound(ByVal sender As Object, ByVal e As EventArgs)
		Dim level2Nodes As New ArrayList()
		Dim iterator As New TreeListNodeIterator(treeList.RootNode)
		Do While iterator.Current IsNot Nothing
			If iterator.Current IsNot treeList.RootNode Then
				If iterator.Current.Level = 2 Then
					level2Nodes.Add(iterator.Current.Key)
				End If
			End If
			iterator.GetNext()
		Loop

		treeList.JSProperties.Add("cp_level2Nodeslist", level2Nodes)
	End Sub
End Class