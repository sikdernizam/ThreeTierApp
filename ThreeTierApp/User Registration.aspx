<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User Registration.aspx.cs" Inherits="ThreeTierApp.User_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Three Tier App</title>
    <link href="Scripts/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="userForm" class="form-horizontal" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>
                        <asp:Label ID="errorMsg" CssClass="text-danger" runat="server"></asp:Label>

                    </h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <fieldset>
                        <legend>User Registration Form</legend>
                        <div class="form-group">
                            <asp:Label ID="lblName" CssClass="control-label col-sm-2" runat="server" Text="Name"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblAddress" CssClass="control-label col-sm-2" runat="server" Text="Address"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblEmail" CssClass="control-label col-sm-2" runat="server" Text="Email"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblMobile" CssClass="control-label col-sm-2" runat="server" Text="Mobile No"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtMobile" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10 col-sm-offset-2">
                                <asp:Button ID="btnSubmit" CssClass="btn btn-default" OnClick="btnSave_Click" runat="server" Text="Submit" />
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </form>
    <script src="Scripts/js/bootstrap.js"></script>
    <script src="Scripts/js/jquery.min.js"></script>
</body>
</html>
