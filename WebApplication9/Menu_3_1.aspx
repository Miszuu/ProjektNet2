<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu_3_1.aspx.cs" Inherits="WebApplication9.Menu_3_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:XmlDataSource ID="playerSource" runat="server" DataFile="player.xml" XPath="/PlayerList/Player" />
<asp:XmlDataSource ID="playerSource2" runat="server" DataFile="player.xml" XPath="/PlayerList/Player" />
    to jest menu 3_1
     <div class="row">
    <div class="col-lg-6">
    <div class="panel panel-default ">
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="false" DataSourceID="playerSource2" CssClass="table table-hover pizzaTables" GridLines="None" FieldHeaderStyle-CssClass="thead">
                <Fields>
                    <asp:TemplateField HeaderText="Imię i nazwisko" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <%# XPath("Name") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nick gracza" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <%# XPath("Nick") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Klan" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <%# XPath("Clan") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rasa" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <%# XPath("Rasa") %> 
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Narodowość" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                           <%# XPath("National") %> 
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Zdjęcie" HeaderStyle-Font-Bold="true">

                        <ItemTemplate>
                             <%# XPath("Picture") %> <br />
                        </ItemTemplate>
 
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
    </div>
    </div>
    <div class="col-lg-6">
    <div class="panel panel-default ">
        <asp:GridView ID="GridView2" runat="server" DataKeyNames="ID" AutoGenerateColumns="False" DataSourceID="playerSource" CssClass="table table-hover" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>
            <asp:TemplateField HeaderText="Wybierz gracza">
                <ItemTemplate>
                    <%# XPath("Nick") %>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:CommandField AccessibleHeaderText="wybierz" ShowSelectButton="True"  />
            </Columns>
        </asp:GridView>

    </div>
    </div>
    </div>

</asp:Content>
