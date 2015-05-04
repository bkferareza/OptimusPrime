<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Webform_App.Account.Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <section id="loginForm">
        <h2>Use a local account to log in.</h2>
        <asp:Login runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
            <LayoutTemplate>
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
                <fieldset>
                    <div class="panel panel-info">
                        <div class="panel-heading">
                           <legend class="panel-title">Log in Form</legend> 
                        </div>
                        <div class="panel-body">
                            <div class="row-fluid">
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="UserName">User name</asp:Label>
                                <asp:TextBox runat="server" class="form-control" placeholder="UserName" ID="UserName" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                            </div>
                            <div class="row-fluid">
                                <asp:Label ID="Label3" runat="server" AssociatedControlID="Password">Password</asp:Label>
                            <asp:TextBox runat="server" class="form-control" ID="Password" placeholder="Password" TextMode="Password" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="The password field is required." />
                            </div>
                        </div>
                        <div class="panel-footer">
                            <div class="row">
                                <div class="col-lg-6 col-xs-12">
                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-default" CommandName="Login" Text="Log in" />
                                </div>
                                <div class="col-lg-6 col-xs-12">
                                    <div class="row">
                                       <div class="checkbox">
                                              <label>
                                                 <asp:CheckBox runat="server" ID="RememberMe" />Remember me?
                                              </label>
                                       </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </LayoutTemplate>
        </asp:Login>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" class="btn btn-link" ViewStateMode="Disabled">Register</asp:HyperLink>
            if you don't have an account.
        </p>
    </section>
    <section id="socialLoginForm">
        <h2>Use another service to log in.</h2>
        <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
    </section>
</asp:Content>
