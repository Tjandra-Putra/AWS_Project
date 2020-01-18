<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExchangePrograms.aspx.cs" Inherits="AWS_FLY_TA.ExchangePrograms" %>

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
                        <p><span class="text-success">All </span>Exchange Programs</p>
                        <hr />
                    </div>
                </div>
            </header>

            <main>
                <div class="container mb-5">

                    <asp:Button ID="btn_Create" runat="server" Text="Create Program" CssClass="btn btn-warning px-3 mb-3" OnClick="btn_Create_Click" />

                    <asp:GridView ID="gv_ExchangePrograms" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive table-striped table-light border-0" DataKeyNames="Id" PageSize="2" AllowPaging="True" OnPageIndexChanging="gv_ExchangePrograms_PageIndexChanging" OnSelectedIndexChanged="gv_ExchangePrograms_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" />
                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                            <asp:BoundField DataField="Accommodation_Type" HeaderText="Accommodation_Type" SortExpression="Accommodation_Type" />
                            <asp:BoundField DataField="Quota" HeaderText="Quota" SortExpression="Quota" />
                            <asp:BoundField DataField="No_Of_Registered" HeaderText="No_Of_Registered" SortExpression="No_Of_Registered" />
                            <asp:BoundField DataField="Fees" DataFormatString="{0:C}" HeaderText="Fees" SortExpression="Fees" />
                            <asp:CommandField HeaderText="View" ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>

<%--                    <asp:DetailsView ID="dv_Registered" runat="server" Height="50px" Width="125px" CssClass="table table-striped table-dark border-0"></asp:DetailsView>--%>
                    <asp:GridView ID="gv_Detailed" runat="server"  CssClass="table table-striped table-dark border-0">
                    </asp:GridView>

                </div>
            </main>



        </div>
    </form>
</body>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
</script>




</html>
