<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create_ExchangePrograms.aspx.cs" Inherits="AWS_FLY_TA.Create_ExchangePrograms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <title>FLY-TA</title>
</head>
<style>
    @import url('https://fonts.googleapis.com/css?family=Acme|Lobster|Patua+One|Rubik|Sniglet&display=swap');

    @import url('https://fonts.googleapis.com/css?family=Luckiest+Guy|Open+Sans|Pacifico|Permanent+Marker|Roboto|Volkhov&display=swap');

    @import url('https://fonts.googleapis.com/css?family=Cinzel|Cinzel+Decorative|Hind+Madurai|Lalezar|Nanum+Myeongjo&display=swap');

    :root {
        --OpenSans: 'Open Sans', sans-serif;
    }

    main {
        font-family: var(--OpenSans);
    }
</style>
<body>
    <form id="form1" runat="server">
        <div>

            <nav class="navbar navbar-expand-lg navbar-light bg-light py-4">
                <a class="navbar-brand font-weight-bold ml-5" href="#">FLY-TA</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <div class="mr-auto"></div>

                    <ul class="navbar-nav mr-5">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Features</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Pricing</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <header>
                <div class="header">
                    <div class="container display-3 my-3">
                        <p><span class="text-danger">Create</span> an Exchange Program</p>
                        <hr />
                    </div>
                </div>
            </header>

            <main>
                <div class="container mb-3">

                    <div class="row ">
                        <div class="col-md-6">

                            <div class="form-group row mt-5">
                                <label for="inputPassword" class="col-sm-3 col-form-label">Title</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="tb_Title" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mt-4">
                                <label for="inputPassword" class="col-sm-3 col-form-label">Description</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="tb_Description" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword" class="col-sm-3 col-form-label">Duration</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="tb_Duration" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword" class="col-sm-3 col-form-label">Accommodation Type</label>
                                <div class="col-sm-9">
                                    <asp:DropDownList ID="ddl_Type" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">-- Select Type --</asp:ListItem>
                                        <asp:ListItem>Home-Stay</asp:ListItem>
                                        <asp:ListItem>Hostel</asp:ListItem>

                                    </asp:DropDownList>


                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword" class="col-sm-3 col-form-label">Quota</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="tb_Quota" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword" class="col-sm-3 col-form-label">Fees</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="tb_Fees" runat="server" CssClass="form-control mb-3"></asp:TextBox>

                                    <asp:Button ID="btn_Back" runat="server" Text="Back" CssClass="btn btn-secondary d-inline mr-3 px-5 float-left" OnClick="btn_Back_Click" />
                                    <asp:Button ID="btn_Submit" runat="server" Text="Submit" CssClass="btn btn-success d-inline px-5 float-right" OnClick="btn_Submit_Click" />
                                </div>

                            </div>




                            </>
                        </div>
                        <div class="col-md-6">
                            <img src="./Img/undraw.png" alt="img" class="img-thumbnail border-0" />
                        </div>
                    </div>

                </div>
            </main>

        </div>
    </form>
</body>

</html>
