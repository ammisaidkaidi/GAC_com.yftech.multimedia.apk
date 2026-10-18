.class Landroid/widget/Spinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Spinner$DropdownPopup;

.field final synthetic val$this$0:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V
    .locals 0

    .line 1184
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Landroid/widget/Spinner$DropdownPopup$1;->val$this$0:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1186
    iget-object p1, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object p1, p1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1187
    iget-object p1, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object p1, p1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget-object p1, p1, Landroid/widget/Spinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 1188
    iget-object p1, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object p1, p1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget-object p4, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-static {p4}, Landroid/widget/Spinner$DropdownPopup;->access$300(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;

    move-result-object p4

    invoke-interface {p4, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1190
    :cond_0
    iget-object p0, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->dismiss()V

    return-void
.end method
