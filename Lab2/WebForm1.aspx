<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Lab2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
        
            <asp:TextBox ID="login" runat="server" OnTextChanged="login_TextChanged"></asp:TextBox>
            Логин
            
            <asp:RequiredFieldValidator ID="LoginValidator" runat="server" ControlToValidate="login" EnableClientScript="False" ErrorMessage="Поле не должно оставаться пустым" ForeColor="Red"></asp:RequiredFieldValidator>
            
        </div>
        <asp:TextBox ID="Password" runat="server"></asp:TextBox>

        Пароль<asp:RegularExpressionValidator ID="PasswordValidator" runat="server" ControlToValidate="Password" EnableClientScript="False" ErrorMessage=" Должен содержать не менее 8 символов" ForeColor="Red" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
        <p>
            <asp:TextBox ID="PasswordTrue" runat="server"></asp:TextBox>
            Подтверждение Пароля<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="PasswordTrue" EnableClientScript="False" ErrorMessage=" Пароли не совпадают" ForeColor="Red"></asp:CompareValidator>
        </p>
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        Эл. Почта<asp:RegularExpressionValidator ID="MailValidator" runat="server" ControlToValidate="Email" EnableClientScript="False" ErrorMessage=" Неправильный формат эл. почты" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <p>
            <asp:TextBox ID="Age" runat="server"></asp:TextBox>
        
            Возраст<asp:RangeValidator ID="AgeValidator" runat="server" ControlToValidate="Age" EnableClientScript="False" ErrorMessage=" Неправильно задан возраст" ForeColor="Red" MaximumValue="65" MinimumValue="18"></asp:RangeValidator>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Отправить" />
    </form>
</body>
</html>
