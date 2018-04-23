using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxTreeList;
using DevExpress.Web.ASPxEditors;
using DevExpress.Web.ASPxClasses;
using System.Collections;

public partial class _Default : System.Web.UI.Page
{
    protected void treeList_DataBound(object sender, EventArgs e)
    {
        ArrayList level2Nodes = new ArrayList();
        TreeListNodeIterator iterator = new TreeListNodeIterator(treeList.RootNode);
        while (iterator.Current != null)
        {
            if (iterator.Current != treeList.RootNode)
                if (iterator.Current.Level == 2)
                    level2Nodes.Add(iterator.Current.Key);
            iterator.GetNext();
        }

        treeList.JSProperties.Add("cp_level2Nodeslist", level2Nodes);
    }
}