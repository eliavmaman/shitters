<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Shiters.aspx.cs" Inherits="Shiters" %>

<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <h2 class="page_headers">
        Shiters
    </h2>
    <div class="row">
        <div class="col-sm-4">
            <asp:DropDownList CssClass="form-control" ID="ddlShiters" runat="server" OnSelectedIndexChanged="ddlShiters_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <div class="col-sm-8">
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>
                            מספר פקע
                        </th>
                        <th>
                            מספר שיטר
                        </th>
                        <th>
                            סוג נייר
                        </th>
                        <th>
                            כמות לייצור
                        </th>
                        <th>
                            סוג אריזה
                        </th>
                        <th>
                            תאריך
                        </th>
                        <th>
                            לקוח
                        </th>
                        <th>
                            נדרש מעבר
                        </th>
                        <th>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <% foreach (DataRow row in operationsDt.Rows)
                       {%>
                    <tr>
                        <td>
                            <%=row["id"].ToString() %>
                        </td>
                        <td>
                            <%=row["shit_number"].ToString() %>
                        </td>
                        <td>
                            <%=row["paper_type"].ToString() %>
                        </td>
                        <td>
                            <%=row["amount"].ToString() %>
                        </td>
                        <td>
                            <%=row["cover"].ToString() %>
                        </td>
                        <td>
                            <%=row["op_date"].ToString() %>
                        </td>
                        <td>
                            <%=row["customer"].ToString() %>
                        </td>
                        <td>
                            <%=row["setup_req"].ToString()=="true"?"Yes":"No" %>
                        </td>
                        <td>
                            <a class="btn btn-success" href="EditShiter.aspx?id=<%=row["id"].ToString() %>">Edit</a>
                            <a class="btn btn-danger" href="EditShiter.aspx?delete=1&id=<%=row["id"].ToString() %>">
                                Delete</a>
                        </td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
