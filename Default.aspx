<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <header class="jumbotron mx-5 pt-2 align-middle">
        <div class=""><hr/>
            <p class="h3 text-dark">Welcome to Guru, meet your instructor.</p><hr/>
            <table class="table table-responsive ">
                <tr>
                    <td class="" style="width: 620px">
                        &nbsp;<img class="img-fluid" src="images/guru1.png" style="width: 930px" /></td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Login/Sign Up" BorderColor="#00CC99" BorderStyle="Solid" CssClass="btn-primary " ForeColor="White" Height="50px" OnClick="Button1_Click" style="margin-left: 0; margin-top: 0;" Width="178px" />
                    </td>
                </tr>
                
                
            </table>
            
&nbsp;<div class="align-content-xl-center">
            </div>
            <br />
            <hr/>
            <p class="lead">Guru tutor will give you access to the most diverse range of tutors 
                across GTA. Use our website to browse through the profiles of the best private
                tutors available to you for home tutoring, private tuition and online tutoring. We profile Canadian private tutors
                who deliver private tuition in a number 
                of academic subjects including Math tutoring and English tutoring, in addition to Science 
                and Information Technology amongst many more!!.
                Our website will search for the best and most recommended tutors online, 
                finding you all the private tutors and home tutors near you!</p>
        </div><hr/>
        
    </header>


    
</asp:Content>


