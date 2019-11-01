﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RecurringCommunicationsList.ascx.cs" Inherits="RockWeb.Plugins.org_secc.RecurringCommunications.RecurringCommunicationsList" %>
<asp:UpdatePanel runat="server" ID="upContent">
    <ContentTemplate>
        <Rock:Grid runat="server" ID="gRC" DataKeyNames="Id" OnRowSelected="gRC_RowSelected">
            <Columns>
                <Rock:RockBoundField HeaderText="Communication Name" DataField="Name" />
                <Rock:RockBoundField HeaderText="Created By" DataField="CreatedByPersonAlias.Person.FullName" />
                <Rock:RockBoundField HeaderText="DataView" DataField="DataView.Name" />
            </Columns>
        </Rock:Grid>
    </ContentTemplate>
</asp:UpdatePanel>
