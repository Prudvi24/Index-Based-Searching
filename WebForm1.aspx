<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DocSearch.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('photo.jpg');">
    <div style="margin: 30px auto; text-align: center; background-color: white; border-radius: 30px; padding: 16px; box-shadow:0 15px 30px rgba(0,0,0,0.3); width:50%; background-image: url('mypic.jpg');">
        <h2>Index Based Searching</h2>
    <form id="form1" method="post" runat="server">
<p>
	Search:
	<asp:TextBox id="txtSearch" CssClass="text" Font-Size="9" Height="20" Columns="38" runat="server"/>
	<asp:Button id="btnSearch" CssClass="text" runat="server" Text="Search" OnCommand="btnSearch_Click" CommandName="search"/>
	<asp:Button id="btnClear" CssClass="text" runat="server" Text="Clear" OnCommand="btnClear_Click" CommandName="search"/>
	<!-- This must be here to overcome a bug in IE and let the enter key submit the form properly -->
	<input type="text" style="display:none" />
</p>
	<asp:Label id="lbl" CssClass="text" Text="Enter your search terms." runat="server"/><br />
	<asp:label id="resultSummary" CssClass="text" runat="server"/>&nbsp;&nbsp;
	<asp:LinkButton id="cmdPrev" CssClass="text" runat="server" text="Previous Page " Visible="false" OnCommand="cmdPrev_Click"/>&nbsp;&nbsp;
	<asp:LinkButton id="cmdNext" CssClass="text" runat="server" text="Next Page" Visible="false" OnCommand="cmdNext_Click"/>
	<br/>
<p>
	<asp:Repeater id="searchResults" runat="server">
		<HeaderTemplate></HeaderTemplate>

		<ItemTemplate>
			<%# DataBinder.Eval(Container.DataItem, "File") %> <br />
			<%# DataBinder.Eval(Container.DataItem, "FileAbstract") %> <br />
		</ItemTemplate>

		<SeparatorTemplate><br></SeparatorTemplate>
	</asp:Repeater>
	</p>
    </form>
        </div>
</body>
</html>
