.class final Landroid/database/ContentObserver$Transport;
.super Landroid/database/IContentObserver$Stub;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Landroid/database/IContentObserver$Stub;-><init>()V

    .line 224
    iput-object p1, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 229
    iget-object p0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz p0, :cond_0

    .line 231
    invoke-static {p0, p1, p2, p3}, Landroid/database/ContentObserver;->access$000(Landroid/database/ContentObserver;ZLandroid/net/Uri;I)V

    :cond_0
    return-void
.end method

.method public releaseContentObserver()V
    .locals 1

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method
