report 50100 "Posted Deferral Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Posted Deferral Report';
    DefaultRenderingLayout = RDLC;

    dataset
    {
        dataitem(PostedDeferralHeader; "Posted Deferral Header")
        {
            RequestFilterFields = "Document No.", "Posting Date", "Start Date", "Amount to Defer";

            column(DocumentNo; "Document No.")
            {
            }
            column(AmountToDefer; "Amount to Defer")
            {
            }
            column(StartDate; "Start Date")
            {
            }
            column(PostingDate; "Posting Date")
            {
            }

            dataitem(PostedDeferralLine; "Posted Deferral Line")
            {
                DataItemLink = "Document No." = field("Document No.");
                DataItemLinkReference = PostedDeferralHeader;
                RequestFilterFields = Description, Amount;

                column(Description; Description)
                {
                }
                column(Amount; Amount)
                {
                }
            }
        }
    }

    rendering
    {
        layout(RdlcLayout)
        {
            Type = RDLC;
            LayoutFile = 'src/reportlayouts/PostedDeferralReport.rdl';
        }
    }

    var
        Dummy: Integer;
}
