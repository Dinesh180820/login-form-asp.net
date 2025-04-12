<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="WebApplication1.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>Registration Form</title>
    <style>
        body {
            font-family:  Verdana;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container1 {
            width: 900px;
            margin: 50px auto;
            background-color: white;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
        }

        table td {
            padding: 10px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"],
        .aspNetTextBox {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        input[type="submit"],
        .aspNetButton {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover,
        .aspNetButton:hover {
            background-color: #45a049;
        }

        .form_footer {
            text-align: center;
            margin-top: 15px;
        }

        .form_footer a {
            color: #007bff;
            text-decoration: none;
        }

        .form_footer a:hover {
            text-decoration: underline;
        }

        .aspNetValidator {
            font-size: 12px;
            color: red;
        }
    </style>
</head>
 <body>
    <form id="form1" runat="server">
        <div class="container1">
        <h2>Register Form</h2>
        <table>
      <tr>
           <td><label for="TextBox1">Name </label> </td>
           <td><asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your Full Name"> </asp:TextBox></td>
           <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator></td>
      </tr>
  
      <tr>
           <td> <label for="TextBox2">Email </label></td>
           <td> <asp:TextBox ID="TextBox2" runat="server" placeholder="Example@gmail.com"></asp:TextBox></td>
           <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter a Valid Email Address" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator></td>
      </tr>

      <tr>
            <td> <label for="TextBox3">Phone </label></td>
            <td>  <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your Number"></asp:TextBox></td>
            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter a Valid Number" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator></td>
      </tr>

      <tr>
            <td>  <label for="TextBox4">UserName </label></td>
            <td>  <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Username"></asp:TextBox></td>
<td> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Username is Required" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
          
            <td>  <label for="TextBox5">Password </label></td>
            <td> <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" placeholder="Enter Password" ></asp:TextBox></td>
            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password is Required" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator></td>
      </tr>
            <tr>
                <td><label for="TextBox6">ConfirmPassword </label></td>
                <td> <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" placeholder="Confirm password" ></asp:TextBox></td>
                <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Confirm Your Password" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator></td>
                <td> <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox6" ControlToCompare="TextBox5" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator></td>
            </tr>
      <tr>
            <td> <p>By clicking Register, you agree to our Privacy Policy</p></td>
      </tr>
      <tr>
             <td><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
      </tr>
    </table>
             <div class="form_footer">
                  <a href="loginform.aspx">Already have an account? Login</a>
           </div>
      </div>
    </form>
</body>
</html>
