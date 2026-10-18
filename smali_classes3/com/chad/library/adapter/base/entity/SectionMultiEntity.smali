.class public abstract Lcom/chad/library/adapter/base/entity/SectionMultiEntity;
.super Ljava/lang/Object;
.source "SectionMultiEntity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;"
    }
.end annotation


# instance fields
.field public header:Ljava/lang/String;

.field public isHeader:Z

.field public t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/entity/SectionMultiEntity;->isHeader:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/chad/library/adapter/base/entity/SectionMultiEntity;->header:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/chad/library/adapter/base/entity/SectionMultiEntity;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/entity/SectionMultiEntity;->isHeader:Z

    .line 16
    iput-object p2, p0, Lcom/chad/library/adapter/base/entity/SectionMultiEntity;->header:Ljava/lang/String;

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/chad/library/adapter/base/entity/SectionMultiEntity;->t:Ljava/lang/Object;

    return-void
.end method
