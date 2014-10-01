<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="HeaderContent" ContentPlaceHolderID="HeadContent">
    <script src="Scripts/jquery-1.8.2.min.js" type="text/javascript" ></script>
    
    <script type="text/javascript" >
        
        function getProducts() {
            $.getJSON("api/products",
                function(data) {
                    $('#products').empty();
                    $.each(data, function(key, val) {
                        var myRow = "<td>" + val.Id + "</td>" + "<td>" + val.Name + "</td>";
                        $('<tr/>', { html: myRow }).appendTo($('#products'));
                    });
                }
            );
        }

        $(document).ready(getProducts);

    </script>

</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>Products</h2>
    <table>
        <thead>
            <tr>
                <th>
                    Id
                </th>
                <th>
                   Name 
                </th>
            </tr>
        </thead>        
        <tbody id ="products">
        </tbody>
    </table>
</asp:Content>