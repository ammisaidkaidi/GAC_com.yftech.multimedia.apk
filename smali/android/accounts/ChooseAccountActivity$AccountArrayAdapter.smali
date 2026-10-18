.class Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/accounts/ChooseAccountActivity$AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInfos:[Landroid/accounts/ChooseAccountActivity$AccountInfo;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Landroid/accounts/ChooseAccountActivity$AccountInfo;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 197
    iput-object p3, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mInfos:[Landroid/accounts/ChooseAccountActivity$AccountInfo;

    const-string p2, "layout_inflater"

    .line 198
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 207
    iget-object p2, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p3, 0x1090048

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 208
    new-instance p3, Landroid/accounts/ChooseAccountActivity$ViewHolder;

    invoke-direct {p3, v0}, Landroid/accounts/ChooseAccountActivity$ViewHolder;-><init>(Landroid/accounts/ChooseAccountActivity$1;)V

    const v0, 0x1020173

    .line 209
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Landroid/accounts/ChooseAccountActivity$ViewHolder;->text:Landroid/widget/TextView;

    const v0, 0x1020172

    .line 210
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Landroid/accounts/ChooseAccountActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 211
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/accounts/ChooseAccountActivity$ViewHolder;

    .line 216
    :goto_0
    iget-object v0, p3, Landroid/accounts/ChooseAccountActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mInfos:[Landroid/accounts/ChooseAccountActivity$AccountInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/accounts/ChooseAccountActivity$AccountInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object p3, p3, Landroid/accounts/ChooseAccountActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p0, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mInfos:[Landroid/accounts/ChooseAccountActivity$AccountInfo;

    aget-object p0, p0, p1

    iget-object p0, p0, Landroid/accounts/ChooseAccountActivity$AccountInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
