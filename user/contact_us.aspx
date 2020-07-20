<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="user_contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
     <li>
              <div class="heading">
                <h1>Contact us</h1><br />
                <span><b>You'll be responded within 48 hrs</b></span> 
              </div>
              <div class="cd-half-width fivth-slide">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="content fivth-content">
                        <div class="row">
                          <div class="col-md-4">
                            <div class="left-info">
                              <p><b>Thank you for visiting our food ordering website. Your feedback and inquiries are very important to us. If you would like to contact a particular team member, please visit our Company Profile page, select the team member you would like to contact, and click the link under their name. For general inquiries regarding our services, you may either send and email to us or simply fill out the box below, enter the security code, and click "Send message Inquiry". We review all inquiries and will reply to your message within one business day.
                              <br/><br/>
                              <em>3344 Donec mollis libero<br/>at metus luctus 10110</em>
                              </b></p>


                                  <div class="col-md-8">
                            <div class="row">
                              <form id="contact" action="" method="post">
                                <div class="col-md-6">
                                  <fieldset style="width: 131px">
                                    <input name="name" type="text" class="form-control" id="name" placeholder="Your Name" required=""/>
                                  </fieldset>
                                </div>
                                <div class="col-md-6">
                                  <fieldset style="width: 127px">
                                    <input name="email" type="email" class="form-control" id="email" placeholder="Email" required=""/>
                                  </fieldset>
                                </div>
                                <div class="col-md-12" style="width: 131px">
                                  <fieldset style="width: 137px">
                                    <textarea name="message" rows="6" class="form-control" id="message" placeholder="Message" required=""></textarea>
                                      </fieldset>
                                </div>
                                <div class="col-md-12">
                                  <fieldset style="width: 131px">
                                    <button type="submit" id="form-submit" class="btn" style="width: 147px">Send Message</button>
                                  </fieldset>
                                </div>
                              </form>
                            </div>
                          </div>

							  <p><b><u>MAP</u></b><br/>
							  <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.9894846993475!2d79.85495324951538!3d6.891860394995558!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25bdc0d3af1e5%3A0x64c5e41873bd0ab2!2sDe+Vos+Ave%2C+Colombo+00400!5e0!3m2!1sen!2slk!4v1510625379426" width="600" height="450" frameborder="0" style="border:0"></iframe></p> 
                              <ul class="social-icons">
                                <i><a href="#"><i class="fa fa-facebook"></i></a></i>
                                <i><a href="#"><i class="fa fa-twitter"></i></a></i>
                                <i><a href="#"><i class="fa fa-linkedin"></i></a></i>
                                <i><a href="#"><i class="fa fa-rss"></i></a></i>
                                <i><a href="#"><i class="fa fa-behance"></i></a></i>
                              </ul>
                            </div>
                          </div>
                        
                        </div>
                      </div>
                    </div>
                  </div>                  
                </div>
              </div>
            </li>


</asp:Content>

