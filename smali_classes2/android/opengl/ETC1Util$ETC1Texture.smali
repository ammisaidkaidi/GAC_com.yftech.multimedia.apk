.class public Landroid/opengl/ETC1Util$ETC1Texture;
.super Ljava/lang/Object;
.source "ETC1Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/ETC1Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ETC1Texture"
.end annotation


# instance fields
.field private mData:Ljava/nio/ByteBuffer;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(IILjava/nio/ByteBuffer;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Landroid/opengl/ETC1Util$ETC1Texture;->mWidth:I

    .line 119
    iput p2, p0, Landroid/opengl/ETC1Util$ETC1Texture;->mHeight:I

    .line 120
    iput-object p3, p0, Landroid/opengl/ETC1Util$ETC1Texture;->mData:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 0

    .line 139
    iget-object p0, p0, Landroid/opengl/ETC1Util$ETC1Texture;->mData:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 133
    iget p0, p0, Landroid/opengl/ETC1Util$ETC1Texture;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 127
    iget p0, p0, Landroid/opengl/ETC1Util$ETC1Texture;->mWidth:I

    return p0
.end method
