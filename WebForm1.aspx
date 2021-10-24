<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Validation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 122%;
            border-style: solid;
            border-width: 1px;
            background-color: #C0C0C0;
            margin-left: 0px;
            margin-right: 26px;
        }
        .auto-style3 {
            width: 249px;
            margin-right: 90px;
            text-align: left;
        }
       
        .auto-style6 {
            width: 166px;
            text-align: right;
        }
        
        .auto-style7 {
            width: 166px;
            text-align: right;
            height: 19px;
        }
        .auto-style12 {
            width: 249px;
            margin-right: 90px;
            text-align: left;
            height: 19px;
        }
        .auto-style13 {
            width: 166px;
            text-align: right;
            height: 18px;
        }
        .auto-style14 {
            width: 249px;
            margin-right: 90px;
            text-align: left;
            height: 18px;
        }
        .auto-style15 {
            width: 166px;
            text-align: right;
            height: 20px;
        }
        .auto-style16 {
            width: 249px;
            margin-right: 90px;
            text-align: left;
            height: 20px;
        }
        .auto-style17 {
            width: 166px;
            text-align: right;
            height: 12px;
        }
        .auto-style18 {
            width: 249px;
            margin-right: 90px;
            text-align: left;
            height: 12px;
        }
        .auto-style19 {
            width: 249px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>Form with validation<br />
                <table align="center" class="auto-style1">
                    <tr>
                        <td class="auto-style6">Name</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" ControlToValidate="tbName" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Email</td>
                        <td class="auto-style12">
                            <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is Required" ControlToValidate="tbEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="Enter a valid Email" ForeColor="#3333CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Password</td>
                        <td class="auto-style14">
                            <asp:TextBox ID="tbPwd" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Passwd is Required" ControlToValidate="tbPwd" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Re-Rype Password</td>
                        <td class="auto-style19">
                            <asp:TextBox ID="tbnewpwd" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="retype password" ControlToValidate="tbnewpwd" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPwd" ControlToValidate="tbnewpwd" ErrorMessage="Password not Match"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Age </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="tbAge" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="age is Required" ControlToValidate="tbAge" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbAge" ErrorMessage="Age must b &gt; 18 and &lt;30" MaximumValue="30" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">Mobile</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="tbMobile" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Mobile is Required" ControlToValidate="tbMobile" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbEmail" ErrorMessage="Enter a valid Mobile" ForeColor="#3333CC" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">User ID</td>
                        <td class="auto-style18">
                            <asp:TextBox ID="tbUid" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="UserID is Required" ControlToValidate="tbUid" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="tbUid" ErrorMessage="id must b atleast &gt; 3 charaters" OnServerValidate="CustomValidator1_ServerValidate" ValidateEmptyText="True"></asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="Button1" runat="server" Text="Submit" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </center>
        </div>
    </form>
</body>
</html>
