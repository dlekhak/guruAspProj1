<%@ Page Title="" Language="C#" MasterPageFile="~/Loginmaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="contact">
      <div class="container">    
            <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2"> 
                <div>
                    <hr/>
                    <ul>
                        <li>
                            <h5><strong>Login instructions:</strong></h5>
                        </li>
                        <li>
                            <h6>Please enter your USERNAME carefully. Your username likely has following requirements</h6>
                            <ol>
                                <li><h6>Must be all letters and numbers.</h6></li>
                                <li><h6>Must begin with a letter.</h6></li>
                            </ol>
                        </li>
                        <li>
                            <h6>Please enter your PASSWORD carefully. Your password likely has following requirements</h6>
                            <ol>
                                <li><h6>Must be 8 to 16 characters long.</h6></li>
                                <li><h6>Must start with a letter</h6></li>
                                <li><h6>Has at least one ! Or * in it</h6></li>
                                <li><h6>Has as least 1 digit in it</h6></li>
                            </ol>
                        </li>
                    </ul>
                    <hr/>
                </div>
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form">
                            <div class="">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter numbers and letter only" ControlToValidate="txtUserName" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9]+$" ForeColor="Red"></asp:RegularExpressionValidator>                               
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="Your user name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>    
                            <div style="margin-bottom: 25px" class="input-group">
                                
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtUserName" runat="server" type="text" class="form-control" name="username" value="" placeholder="username or email"></asp:TextBox>
                                
                            </div>
                            <div class="">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Your password must start with a letter,<br/> must have 8 to 16 characters,<br/> must have at least one digit" ControlToValidate="txtPassword" Display="Dynamic" ValidationExpression="^[a-zA-Z](?=.*[0-9])(?=.*[!\*])(?=.*[a-zA-Z0-9]).{7,17}$" ForeColor="Red"></asp:RegularExpressionValidator>
                                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Your password must contain one digit from 0 - 9" ControlToValidate="txtPassword" Display="Dynamic" ValidationExpression="^(?=.*\d)$" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Your password name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control" name="password" value="" placeholder="password" CausesValidation="True"></asp:TextBox>
                            </div>
                                    

                                
                            <div class="input-group">
                                <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="chkLoginRemember"  name="remember" value="1" runat="server" />Remember me
                           
                                    </label>
                                </div>
                            </div>


                            <div style="margin-top:10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                    <asp:Button ID="btnLogin" class="btn btn-success" runat="server" Text="Login" OnClick="btnLogin_Click1"  />
                                  
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                        Don't have an account! 
                                         <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Sign Up Here
                                        </a>
                                    </div>
                                </div>
                            </div>    
                             


                </form>
                    </div> 
                    
                </div>  
            </div>
          
            <div id="signupbox" style="display:none; margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Sign Up</div>
                        <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
                    </div>  
                    <div class="panel-body" >
                        <form id="signupform" class="form-horizontal" role="form">
                                
                            <div id="signupalert" style="display:none" class="alert alert-danger">
                                <p>Error:</p>
                                <span></span>
                            </div>
                                    
                                    
                                  
                            <div class="form-group">
                                <label for="email" class="col-md-3 control-label">Email</label>
                                <div class="col-md-9">
                                   <asp:TextBox ID="txtEmail" type="text"  class="form-control" runat="server" name="email" placeholder="Email Address"></asp:TextBox> 
                                </div>
                            </div>
                                    
                            <div class="form-group">
                                <label for="firstname" class="col-md-3 control-label">First Name</label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtFirstName" type="text" class="form-control" runat="server" name="firstname" placeholder="First Name"></asp:TextBox> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtLastName" type="text" class="form-control"  runat="server" name="lastname" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-md-3 control-label">Password</label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtPasswordRegister" type="password" class="form-control" runat="server" placeholder="Password"></asp:TextBox>
                                    </div>
                            </div>
                                    
                            <div class="form-group">
                                <label for="password-reenter" class="col-md-3 control-label">Re-enter Passoword</label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtPasswordReenter" type="password" class="form-control" runat="server" placeholder="Re-enter Password"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <!-- Button -->                                        
                                <div class="col-md-offset-3 col-md-9">
                                  <asp:Button ID="btnSignUp" class="btn btn-info" runat="server" Text="Sign Up" />  
                                    <%--<button id="btn-signup" type="button" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Sign Up</button>--%>
                                </div>
                            </div>          
                        </form>
                    </div>
                </div>            
            </div> 
        </div>
    </section>
</asp:Content>

