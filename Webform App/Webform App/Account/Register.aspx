<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Webform_App.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Use the form below to create a new account.</h2>
    </hgroup>

    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <p class="message-info">
                        Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %> characters in length.
                    </p>
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>
                    <fieldset>
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <legend class="panel-title">Registration Form</legend>
                            </div>
                            <div class="panel-body">
                                <div class="row-fluid">
                                    <div class="col-md-4 hidden-xs">
                                        <asp:Label ID="Label1" class="pull-right" runat="server" AssociatedControlID="UserName">User name</asp:Label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="UserName" placeholder="UserName" />
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-4 hidden-xs">
                                        <asp:Label ID="Label2" class="pull-right" runat="server" AssociatedControlID="Email">Email address</asp:Label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="Email" placeholder="Email" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." />
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-4 hidden-xs">
                                        <asp:Label ID="Label3" class="pull-right" runat="server" AssociatedControlID="Password">Password</asp:Label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="Password" TextMode="Password" placeholder="Password" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="The password field is required." />
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-4 hidden-xs">
                                        <asp:Label ID="Label4" class="pull-right" runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" placeholder="Confirm Password" />
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <asp:Button ID="Button1" class="btn btn-primary btn-default" runat="server" CommandName="MoveNext" Text="Register" />
                            </div>
                        </div>
                    </fieldset>
                </ContentTemplate>
                <CustomNavigationTemplate />
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>