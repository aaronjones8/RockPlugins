﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PersonSearch.ascx.cs" Inherits="RockWeb.Plugins.org_secc.Crm.PersonSearch" %>

<asp:UpdatePanel ID="upnlContent" runat="server">
    <ContentTemplate>

        <Rock:NotificationBox ID="nbNotice" runat="server" NotificationBoxType="Info" Visible="false"></Rock:NotificationBox>
        
        <script>
            Sys.Application.add_load( function () {
                $("div.photo-round").lazyload({
                    effect: "fadeIn"
                });
            });
        </script>

        <div class="grid">
            <Rock:Grid ID="gPeople" runat="server" EmptyDataText="No People Found" AllowSorting="true" OnRowSelected="gPeople_RowSelected">
                <Columns>
                    <Rock:SelectField />
                    <Rock:RockTemplateField HeaderText="Person" SortExpression="LastName,FirstName">
                        <ItemTemplate>
                            <asp:Literal ID="lPerson" runat="server" />
                        </ItemTemplate>
                    </Rock:RockTemplateField>
                    <Rock:DateField 
                        DataField="BirthDate" 
                        HeaderText="Birthdate" 
                        SortExpression="BirthYear desc,BirthMonth desc,BirthDay desc" 
                        ColumnPriority="Desktop" />
                    <Rock:RockBoundField 
                        ItemStyle-HorizontalAlign="Right"
                        HeaderStyle-HorizontalAlign="Right"
                        DataField="Age"  
                        HeaderText="Age"  
                        SortExpression="BirthYear desc,BirthMonth desc,BirthDay desc" 
                        ColumnPriority="Desktop" />
                    <Rock:RockBoundField 
                        ItemStyle-HorizontalAlign="Right"
                        HeaderStyle-HorizontalAlign="Right"
                        DataField="BirthDate"  
                        DataFormatString="{0:d}"
                        HeaderText="DOB" 
                        Visible="false"
                        SortExpression="BirthYear desc,BirthMonth desc,BirthDay desc" 
                        ColumnPriority="Desktop" />
                    <Rock:DefinedValueField
                        DataField="ConnectionStatusValueId"
                        HeaderText="Connection Status"
                        ColumnPriority="Tablet" />
                    <Rock:DefinedValueField
                        DataField="RecordStatusValueId"
                        HeaderText="Record Status" 
                        ColumnPriority="Desktop" />
                    <Rock:RockTemplateField HeaderText="Campus" ColumnPriority="Tablet" >
                        <ItemTemplate>
                            <asp:Literal ID="lCampus" runat="server" />
                        </ItemTemplate>
                    </Rock:RockTemplateField>
                </Columns>
            </Rock:Grid>
        </div>

        <asp:Literal ID="lPerformance" runat="server" />

    </ContentTemplate>
</asp:UpdatePanel>

