.class public final Landroid/text/FontConfig$Alias;
.super Ljava/lang/Object;
.source "FontConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alias"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mToName:Ljava/lang/String;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Landroid/text/FontConfig$Alias;->mToName:Ljava/lang/String;

    .line 147
    iput p3, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/text/FontConfig$Alias;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getToName()Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Landroid/text/FontConfig$Alias;->mToName:Ljava/lang/String;

    return-object p0
.end method

.method public getWeight()I
    .locals 0

    .line 168
    iget p0, p0, Landroid/text/FontConfig$Alias;->mWeight:I

    return p0
.end method
