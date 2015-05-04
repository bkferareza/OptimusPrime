<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Webform_App._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Slider Here</h2>
            </hgroup>
            <p>
                Put slider here.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Description</h3>
    <div class="jumbotron">
          <h1>Title Description Here</h1>
          <p>Description</p>
          <p><a class="btn btn-primary btn-lg" href="#" role="button">Tour</a></p>
    </div>
</asp:Content>
