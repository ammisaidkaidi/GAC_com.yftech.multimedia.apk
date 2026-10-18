.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$Ranking$UserSentiment;
    }
.end annotation


# static fields
.field public static final USER_SENTIMENT_NEGATIVE:I = -0x1

.field public static final USER_SENTIMENT_NEUTRAL:I = 0x0

.field public static final USER_SENTIMENT_POSITIVE:I = 0x1

.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private mChannel:Landroid/app/NotificationChannel;

.field private mHidden:Z

.field private mImportance:I

.field private mImportanceExplanation:Ljava/lang/CharSequence;

.field private mIsAmbient:Z

.field private mKey:Ljava/lang/String;

.field private mMatchesInterruptionFilter:Z

.field private mOverrideGroupKey:Ljava/lang/String;

.field private mOverridePeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRank:I

.field private mShowBadge:Z

.field private mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressedVisualEffects:I

.field private mUserSentiment:I

.field private mVisibilityOverride:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1411
    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    const/4 v0, 0x0

    .line 1427
    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    return-void
.end method

.method public static importanceToString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "HIGH"

    return-object p0

    :pswitch_1
    const-string p0, "DEFAULT"

    return-object p0

    :pswitch_2
    const-string p0, "LOW"

    return-object p0

    :pswitch_3
    const-string p0, "MIN"

    return-object p0

    :pswitch_4
    const-string p0, "NONE"

    return-object p0

    :cond_0
    const-string p0, "UNSPECIFIED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canShowBadge()Z
    .locals 0

    .line 1564
    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    return p0
.end method

.method public getAdditionalPeople()Ljava/util/List;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1543
    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getChannel()Landroid/app/NotificationChannel;
    .locals 0

    .line 1521
    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method public getImportance()I
    .locals 0

    .line 1495
    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    return p0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .locals 0

    .line 1505
    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 1436
    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getOverrideGroupKey()Ljava/lang/String;
    .locals 0

    .line 1513
    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method public getRank()I
    .locals 0

    .line 1446
    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return p0
.end method

.method public getSnoozeCriteria()Ljava/util/List;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 1555
    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSuppressedVisualEffects()I
    .locals 0

    .line 1474
    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    return p0
.end method

.method public getUserSentiment()I
    .locals 0

    .line 1532
    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    return p0
.end method

.method public getVisibilityOverride()I
    .locals 0

    .line 1465
    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    return p0
.end method

.method public isAmbient()Z
    .locals 0

    .line 1454
    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    return p0
.end method

.method public isSuspended()Z
    .locals 0

    .line 1574
    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    return p0
.end method

.method public matchesInterruptionFilter()Z
    .locals 0

    .line 1485
    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    return p0
.end method

.method public populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZ)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZIII",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;ZIZ)V"
        }
    .end annotation

    .line 1587
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    .line 1588
    iput p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    const/4 p1, 0x2

    if-ge p6, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1589
    :goto_0
    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    .line 1590
    iput-boolean p3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    .line 1591
    iput p4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    .line 1592
    iput p5, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    .line 1593
    iput p6, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    .line 1594
    iput-object p7, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 1595
    iput-object p8, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    .line 1596
    iput-object p9, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    .line 1597
    iput-object p10, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    .line 1598
    iput-object p11, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 1599
    iput-boolean p12, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    .line 1600
    iput p13, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 1601
    iput-boolean p14, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    return-void
.end method
