.class public final Landroid/content/pm/AuxiliaryResolveInfo;
.super Ljava/lang/Object;
.source "AuxiliaryResolveInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    }
.end annotation


# instance fields
.field public final failureIntent:Landroid/content/Intent;

.field public final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final installFailureActivity:Landroid/content/ComponentName;

.field public final needsPhaseTwo:Z

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 68
    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 71
    iput-object p2, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 77
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 56
    iput-boolean p2, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 57
    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 58
    iput-object p4, p0, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    return-void
.end method
