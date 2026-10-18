.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final ALT:Ljava/lang/Object;

.field private static final CAP:Ljava/lang/Object;

.field private static final LOCKED:I = 0x4000011

.field private static final LOCKED_RETURN_VALUE:I = 0x2

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x2020200000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x20000000000L

.field private static final META_ALT_RELEASED:J = 0x2000000000000L

.field private static final META_ALT_USED:J = 0x200000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x10000000000L

.field private static final META_CAP_RELEASED:J = 0x1000000000000L

.field private static final META_CAP_USED:J = 0x100000000L

.field public static final META_SELECTING:I = 0x800

.field private static final META_SHIFT_MASK:J = 0x1010100000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x4040400000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x40000000000L

.field private static final META_SYM_RELEASED:J = 0x4000000000000L

.field private static final META_SYM_USED:J = 0x400000000L

.field private static final PRESSED:I = 0x1000011

.field private static final PRESSED_RETURN_VALUE:I = 0x1

.field private static final RELEASED:I = 0x2000011

.field private static final SELECTING:Ljava/lang/Object;

.field private static final SYM:Ljava/lang/Object;

.field private static final USED:I = 0x3000011


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 134
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 135
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2

    .line 296
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1000011

    if-ne v0, v1, :cond_0

    const v0, 0x3000011

    const/4 v1, 0x0

    .line 299
    invoke-interface {p0, p1, v1, v1, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    const v1, 0x2000011

    if-ne v0, v1, :cond_1

    .line 301
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static adjustMetaAfterKeypress(J)J
    .locals 6

    const-wide v0, 0x10000000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide v4, -0x1010100000102L

    if-eqz v0, :cond_0

    and-long/2addr p0, v4

    const-wide/16 v0, 0x1

    or-long/2addr p0, v0

    const-wide v0, 0x100000000L

    or-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    and-long/2addr p0, v4

    :cond_1
    :goto_0
    const-wide v0, 0x20000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x2020200000203L

    if-eqz v0, :cond_2

    and-long/2addr p0, v4

    const-wide/16 v0, 0x2

    or-long/2addr p0, v0

    const-wide v0, 0x200000000L

    or-long/2addr p0, v0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    and-long/2addr p0, v4

    :cond_3
    :goto_1
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x4040400000405L

    if-eqz v0, :cond_4

    and-long/2addr p0, v4

    const-wide/16 v0, 0x4

    or-long/2addr p0, v0

    const-wide v0, 0x400000000L

    or-long/2addr p0, v0

    goto :goto_2

    :cond_4
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    and-long/2addr p0, v4

    :cond_5
    :goto_2
    return-wide p0
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .locals 1

    .line 273
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 274
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 275
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 423
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 424
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_3

    .line 425
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .locals 2

    .line 251
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 255
    :cond_0
    check-cast p0, Landroid/text/Spanned;

    .line 256
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    const p1, 0x4000011

    if-ne p0, p1, :cond_1

    return p3

    :cond_1
    if-eqz p0, :cond_2

    return p2

    :cond_2
    return v1
.end method

.method public static final getMetaState(J)I
    .locals 6

    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v4, 0x200

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x200

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x2

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    :cond_3
    :goto_1
    const-wide/16 v4, 0x400

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x400

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x4

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_5

    or-int/lit8 v0, v0, 0x4

    :cond_5
    :goto_2
    return v0
.end method

.method public static final getMetaState(JI)I
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    return v3

    :pswitch_0
    const-wide/16 v6, 0x200

    and-long/2addr v6, p0

    cmp-long p2, v6, v4

    if-eqz p2, :cond_0

    return v2

    :cond_0
    const-wide/16 v6, 0x2

    and-long/2addr p0, v6

    cmp-long p0, p0, v4

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v3

    :pswitch_1
    const-wide/16 v6, 0x100

    and-long/2addr v6, p0

    cmp-long p2, v6, v4

    if-eqz p2, :cond_2

    return v2

    :cond_2
    const-wide/16 v6, 0x1

    and-long/2addr p0, v6

    cmp-long p0, p0, v4

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    const-wide/16 v6, 0x400

    and-long/2addr v6, p0

    cmp-long p2, v6, v4

    if-eqz p2, :cond_5

    return v2

    :cond_5
    const-wide/16 v6, 0x4

    and-long/2addr p0, v6

    cmp-long p0, p0, v4

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .locals 4

    .line 160
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    .line 161
    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    .line 162
    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const/16 v2, 0x800

    .line 163
    invoke-static {p0, v1, v2, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x800

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 205
    :pswitch_0
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, p1, v2, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    .line 202
    :pswitch_1
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, p1, v2, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    .line 211
    :cond_0
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, p1, v2, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    .line 208
    :cond_1
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, p1, v2, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I
    .locals 2

    .line 232
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 233
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 235
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result p0

    or-int/2addr v0, p0

    :cond_0
    const/16 p0, 0x800

    if-ne p0, p1, :cond_2

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    int-to-long v0, v0

    .line 246
    invoke-static {v0, v1, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(JI)I

    move-result p0

    return p0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I
    .locals 2

    .line 181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 182
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 184
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result p0

    or-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .locals 15

    move/from16 v0, p2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x39

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    const/4 v4, 0x4

    const-wide v5, 0x4040400000404L

    const-wide/16 v7, 0x400

    const-wide v9, 0x40000000000L

    const-wide/high16 v11, 0x4000000000000L

    const-wide v13, 0x400000000L

    move-wide v2, p0

    .line 554
    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide p0

    :cond_3
    :goto_0
    const/4 v4, 0x2

    const-wide v5, 0x2020200000202L

    const-wide/16 v7, 0x200

    const-wide v9, 0x20000000000L

    const-wide/high16 v11, 0x2000000000000L

    const-wide v13, 0x200000000L

    move-wide v2, p0

    .line 549
    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_1
    const/4 v4, 0x1

    const-wide v5, 0x1010100000101L

    const-wide/16 v7, 0x100

    const-wide v9, 0x10000000000L

    const-wide/high16 v11, 0x1000000000000L

    const-wide v13, 0x100000000L

    move-wide v2, p0

    .line 543
    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .locals 14

    move/from16 v0, p2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x39

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    const/4 v4, 0x4

    const-wide v5, 0x4040400000404L

    const-wide v7, 0x40000000000L

    const-wide/high16 v9, 0x4000000000000L

    const-wide v11, 0x400000000L

    move-wide v2, p0

    move-object/from16 v13, p3

    .line 592
    invoke-static/range {v2 .. v13}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide p0

    :cond_3
    :goto_0
    const/4 v4, 0x2

    const-wide v5, 0x2020200000202L

    const-wide v7, 0x20000000000L

    const-wide/high16 v9, 0x2000000000000L

    const-wide v11, 0x200000000L

    move-wide v2, p0

    move-object/from16 v13, p3

    .line 587
    invoke-static/range {v2 .. v13}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_1
    const/4 v4, 0x1

    const-wide v5, 0x1010100000101L

    const-wide v7, 0x10000000000L

    const-wide/high16 v9, 0x1000000000000L

    const-wide v11, 0x100000000L

    move-wide v2, p0

    move-object/from16 v13, p3

    .line 581
    invoke-static/range {v2 .. v13}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 0

    .line 283
    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 0

    .line 292
    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static press(JIJJJJJ)J
    .locals 11

    move v2, p2

    move-wide v3, p3

    and-long v7, p0, p7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    and-long v7, p0, p9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    not-long v3, v3

    and-long v0, p0, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    or-long v0, v0, p5

    goto :goto_1

    :cond_1
    and-long v7, p0, p11

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    :goto_0
    move-wide v0, p0

    goto :goto_1

    :cond_2
    and-long v5, p0, p5

    cmp-long v5, v5, v9

    if-eqz v5, :cond_3

    not-long v2, v3

    and-long v0, p0, v2

    goto :goto_1

    :cond_3
    int-to-long v2, v2

    or-long v2, v2, p7

    or-long v0, p0, v2

    :goto_1
    return-wide v0
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 4

    .line 346
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    const v0, 0x1000011

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x2000011

    const v2, 0x4000011

    const/4 v3, 0x0

    if-ne p0, v1, :cond_1

    .line 351
    invoke-interface {p1, p2, v3, v3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    const v1, 0x3000011

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-ne p0, v2, :cond_3

    .line 355
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :cond_3
    invoke-interface {p1, p2, v3, v3, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method

.method private static release(JIJJJJLandroid/view/KeyEvent;)J
    .locals 2

    .line 600
    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p11

    invoke-virtual {p11}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p11

    const/4 v0, 0x1

    if-eq p11, v0, :cond_0

    not-long p2, p3

    and-long/2addr p0, p2

    goto :goto_0

    :cond_0
    and-long/2addr p9, p0

    const-wide/16 v0, 0x0

    cmp-long p9, p9, v0

    if-eqz p9, :cond_1

    not-long p2, p3

    and-long/2addr p0, p2

    goto :goto_0

    :cond_1
    and-long p3, p0, p5

    cmp-long p3, p3, v0

    if-eqz p3, :cond_2

    int-to-long p2, p2

    or-long/2addr p2, p7

    or-long/2addr p0, p2

    :cond_2
    :goto_0
    return-wide p0
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .locals 1

    .line 401
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    .line 403
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 412
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const p3, 0x3000011

    if-ne p0, p3, :cond_1

    .line 406
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const p3, 0x1000011

    if-ne p0, p3, :cond_2

    const p0, 0x2000011

    const/4 p3, 0x0

    .line 408
    invoke-interface {p1, p2, p3, p3, p0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2

    .line 316
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x4000011

    if-ne v0, v1, :cond_0

    .line 319
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static resetLockedMeta(J)J
    .locals 4

    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide v0, -0x1010100000102L

    and-long/2addr p0, v0

    :cond_0
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x2020200000203L

    and-long/2addr p0, v0

    :cond_1
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-wide v0, -0x4040400000405L

    and-long/2addr p0, v0

    :cond_2
    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .locals 1

    .line 309
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 310
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 311
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 312
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .locals 1

    .line 145
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 146
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 147
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 148
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 2

    .line 365
    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const/4 v0, 0x0

    const v1, 0x1000011

    invoke-interface {p1, p0, v0, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 0

    .line 374
    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .locals 4

    and-int/lit8 p0, p3, 0x1

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x100

    and-long/2addr v2, p1

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    const-wide v2, -0x1010100000102L

    and-long/2addr p1, v2

    :cond_0
    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_1

    const-wide/16 v2, 0x200

    and-long/2addr v2, p1

    cmp-long p0, v2, v0

    if-eqz p0, :cond_1

    const-wide v2, -0x2020200000203L

    and-long/2addr p1, v2

    :cond_1
    and-int/lit8 p0, p3, 0x4

    if-eqz p0, :cond_2

    const-wide/16 v2, 0x400

    and-long/2addr v2, p1

    cmp-long p0, v2, v0

    if-eqz p0, :cond_2

    const-wide v0, -0x4040400000405L

    and-long/2addr p1, v0

    :cond_2
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0

    .line 418
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    const/16 p4, 0x3b

    if-eq p3, p4, :cond_4

    const/16 p4, 0x3c

    if-ne p3, p4, :cond_0

    goto :goto_1

    :cond_0
    const/16 p4, 0x39

    if-eq p3, p4, :cond_3

    const/16 p4, 0x3a

    if-eq p3, p4, :cond_3

    const/16 p4, 0x4e

    if-ne p3, p4, :cond_1

    goto :goto_0

    :cond_1
    const/16 p4, 0x3f

    if-ne p3, p4, :cond_2

    .line 338
    sget-object p3, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 333
    :cond_3
    :goto_0
    sget-object p3, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    return p1

    .line 327
    :cond_4
    :goto_1
    sget-object p3, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    return p1
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x1

    const/16 v0, 0x3b

    if-eq p3, v0, :cond_4

    const/16 v0, 0x3c

    if-ne p3, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x39

    if-eq p3, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p3, v0, :cond_3

    const/16 v0, 0x4e

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f

    if-ne p3, v0, :cond_2

    .line 393
    sget-object p3, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 388
    :cond_3
    :goto_0
    sget-object p3, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    return p1

    .line 382
    :cond_4
    :goto_1
    sget-object p3, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    return p1
.end method
