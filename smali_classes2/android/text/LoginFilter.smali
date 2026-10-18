.class public abstract Landroid/text/LoginFilter;
.super Ljava/lang/Object;
.source "LoginFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/LoginFilter$PasswordFilterGMail;,
        Landroid/text/LoginFilter$UsernameFilterGeneric;,
        Landroid/text/LoginFilter$UsernameFilterGMail;
    }
.end annotation


# instance fields
.field private mAppendInvalid:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .line 52
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStart()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p5, :cond_1

    .line 57
    invoke-interface {p4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    .line 58
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    move-object v1, p5

    move p5, p2

    :goto_1
    if-ge p5, p3, :cond_5

    .line 66
    invoke-interface {p1, p5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 67
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 71
    :cond_2
    iget-boolean v3, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    .line 75
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    sub-int v0, p5, p2

    :cond_4
    add-int/lit8 v3, v0, 0x1

    .line 79
    invoke-virtual {v1, v0, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 82
    :goto_2
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    :goto_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 88
    :cond_5
    :goto_4
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p1

    if-ge p6, p1, :cond_7

    .line 89
    invoke-interface {p4, p6}, Landroid/text/Spanned;->charAt(I)C

    move-result p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    :cond_6
    add-int/lit8 p6, p6, 0x1

    goto :goto_4

    .line 93
    :cond_7
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStop()V

    return-object v1
.end method

.method public abstract isAllowed(C)Z
.end method

.method public onInvalidCharacter(C)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
