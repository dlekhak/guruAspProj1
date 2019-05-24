<%@ Page Language="C#" AutoEventWireup="true" CodeFile="your-tutor.aspx.cs" Inherits="your_tutor" MasterPageFile="~/MasterPage.master" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <header class="jumbotron mx-5 pt-2">
        <img src="images/logo-home.png" class="align-content-md-center" />
        <p class="h3 align-content-center">Find your local  
            Tutors by entering in your subject, level, tution type and postal code in the boxes below!</p>
    </header>
    <div class="col-lg-8 mx-auto">
        <div class="form-group row">
            <label for="" class="col-1 col-form-label">Subject:</label>
            <div class="col-10">
                <asp:DropDownList ID="ddlSubject" runat="server" class="form-control">
                    <asp:ListItem Selected="True"  Value="--Choose a subject--" Enabled="False"></asp:ListItem>
                    <asp:ListItem Value="Math"></asp:ListItem>
                    <asp:ListItem Value="English"></asp:ListItem>
                    <asp:ListItem Value="Science"></asp:ListItem>
                    <asp:ListItem Value="Information Technology"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlSubject" Display="Dynamic" ErrorMessage="Please select your subject"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-1 col-form-label">Level</label>
            <div class="col-10">
                <asp:DropDownList ID="ddlLevel" runat="server" class="form-control">
                    <asp:ListItem Value="--Choose a level--"></asp:ListItem>
                    <asp:ListItem Value="Elementary"></asp:ListItem>
                    <asp:ListItem Value="Secondary"></asp:ListItem>
                    <asp:ListItem Value="College/University"></asp:ListItem>
                </asp:DropDownList>
                &nbsp;</div>
        </div>
        <div class="form-group row">
            <label for="" class="col-1 col-form-label">Tuition Type</label>
            <div class="col-10">
                <asp:DropDownList ID="ddlTutionType" runat="server" class="form-control">
                    <asp:ListItem Value="One to one"></asp:ListItem>
                    <asp:ListItem Value="Online"></asp:ListItem>
                </asp:DropDownList>
                &nbsp;</div>
        </div>
        <div class="form-group row">
            <label for="" class="col-1 col-form-label">Postal Code</label>
            <div class="col-10">
                <asp:TextBox ID="txtPostalCode" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            
            <div class="col-12" >
                
                <asp:Button ID="Button1" class="btn btn-primary pull-right" runat="server" Text="Search" />
                
            </div>
        </div>
    </div>
</asp:Content>

