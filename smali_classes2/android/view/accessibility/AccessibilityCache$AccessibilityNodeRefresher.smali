.class public Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityNodeRefresher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z
    .locals 0

    const/4 p0, 0x0

    .line 561
    invoke-virtual {p1, p0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result p0

    return p0
.end method
