<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebForm.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Participants</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Members:</h3>
        </header>
        <p>
            <span class="label">Juan Camilo Bernal Tobar</span>
        </p>
        <p>
            <span class="label">Darwin Gomez Santamaria</span>
        </p>
        <p>
            <span class="label">Carlos Adolfo Siabato Cotamo</span>
        </p>
        <p>
            <span class="label">Andres Felipe Sarmiento Suarez</span>
        </p>
    </section>
</asp:Content>