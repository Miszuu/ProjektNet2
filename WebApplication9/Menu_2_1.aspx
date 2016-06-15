<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu_2_1.aspx.cs" Inherits="WebApplication9.Menu_2_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    To jest menu 2_1
    <asp:XmlDataSource ID="playerSource" runat="server" DataFile="player.xml" />
    <div class="jumbotron">
        <p>MENU</p>
    <div class="panel panel-default" style="color: black;">
        <table class="table table-hover">
            <thead> 
                <tr> 
                    <th>Nick</th> 
                    <th>Rasa</th> 
                    <th>Narodowość</th>  
                </tr> 
            </thead>
            <tbody>
                <asp:Listview ID="playerList" runat="server" DataSourceID="playerSource">
                    <ItemTemplate>
                        <tr>
                            <td><%# XPath("Nick") %></td>
                            <td><%# XPath("Rasa") %></td>
                            <td><%# XPath("National") %></td>
                            
                        </tr>
                    </ItemTemplate>
                </asp:Listview>
            </tbody>
        </table>
    </div>
    </div>
</asp:Content>

