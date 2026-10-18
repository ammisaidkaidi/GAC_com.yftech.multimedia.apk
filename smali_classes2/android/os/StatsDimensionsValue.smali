.class public final Landroid/os/StatsDimensionsValue;
.super Ljava/lang/Object;
.source "StatsDimensionsValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final BOOLEAN_VALUE_TYPE:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StatsDimensionsValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLOAT_VALUE_TYPE:I = 0x6

.field public static final INT_VALUE_TYPE:I = 0x3

.field public static final LONG_VALUE_TYPE:I = 0x4

.field public static final STRING_VALUE_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "StatsDimensionsValue"

.field public static final TUPLE_VALUE_TYPE:I = 0x7


# instance fields
.field private final mField:I

.field private final mValue:Ljava/lang/Object;

.field private final mValueType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 267
    new-instance v0, Landroid/os/StatsDimensionsValue$1;

    invoke-direct {v0}, Landroid/os/StatsDimensionsValue$1;-><init>()V

    sput-object v0, Landroid/os/StatsDimensionsValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/StatsDimensionsValue;->mField:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    .line 95
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    invoke-static {v0, p1}, Landroid/os/StatsDimensionsValue;->readValueFromParcel(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    return-void
.end method

.method private static readValueFromParcel(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string p1, "StatsDimensionsValue"

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readValue of an impossible type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 341
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 342
    new-array v0, p0, [Landroid/os/StatsDimensionsValue;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 344
    new-instance v2, Landroid/os/StatsDimensionsValue;

    invoke-direct {v2, p1}, Landroid/os/StatsDimensionsValue;-><init>(Landroid/os/Parcel;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 339
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 337
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 335
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 333
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 331
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static writeValueToParcel(ILjava/lang/Object;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    :try_start_0
    const-string p1, "StatsDimensionsValue"

    goto :goto_1

    .line 310
    :pswitch_0
    check-cast p1, [Landroid/os/StatsDimensionsValue;

    .line 311
    array-length p0, p1

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    move p0, v0

    .line 312
    :goto_0
    array-length v2, p1

    if-ge p0, v2, :cond_0

    .line 313
    aget-object v2, p1, p0

    invoke-virtual {v2, p2, p3}, Landroid/os/StatsDimensionsValue;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v1

    .line 307
    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    .line 304
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return v1

    .line 301
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 298
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 295
    :pswitch_5
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 318
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "readValue of an impossible type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string p1, "StatsDimensionsValue"

    const-string/jumbo p2, "writeValue cast failed"

    .line 322
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBooleanValue()Z
    .locals 2

    .line 158
    :try_start_0
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "StatsDimensionsValue"

    const-string v1, "Failed to successfully get value"

    .line 160
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getField()I
    .locals 0

    .line 104
    iget p0, p0, Landroid/os/StatsDimensionsValue;->mField:I

    return p0
.end method

.method public getFloatValue()F
    .locals 2

    .line 172
    :try_start_0
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "StatsDimensionsValue"

    const-string v1, "Failed to successfully get value"

    .line 174
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getIntValue()I
    .locals 2

    .line 129
    :try_start_0
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "StatsDimensionsValue"

    const-string v1, "Failed to successfully get value"

    .line 131
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getLongValue()J
    .locals 2

    .line 143
    :try_start_0
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-string v0, "StatsDimensionsValue"

    const-string v1, "Failed to successfully get value"

    .line 145
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .line 115
    :try_start_0
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "StatsDimensionsValue"

    const-string v1, "Failed to successfully get value"

    .line 117
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTupleValueList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/StatsDimensionsValue;",
            ">;"
        }
    .end annotation

    .line 188
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    return-object v1

    .line 192
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast p0, [Landroid/os/StatsDimensionsValue;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 195
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 196
    aget-object v3, p0, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "StatsDimensionsValue"

    const-string v2, "Failed to successfully get value"

    .line 200
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getValueType()I
    .locals 0

    .line 219
    iget p0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    return p0
.end method

.method public isValueType(I)Z
    .locals 0

    .line 229
    iget p0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 243
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    iget v1, p0, Landroid/os/StatsDimensionsValue;->mField:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget v1, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "{"

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object p0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast p0, [Landroid/os/StatsDimensionsValue;

    const/4 v1, 0x0

    .line 249
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 250
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/os/StatsDimensionsValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "}"

    .line 253
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 255
    :cond_1
    iget-object p0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "StatsDimensionsValue"

    const-string v1, "Failed to successfully get value"

    .line 259
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 285
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mField:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    iget-object p0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    invoke-static {v0, p0, p1, p2}, Landroid/os/StatsDimensionsValue;->writeValueToParcel(ILjava/lang/Object;Landroid/os/Parcel;I)Z

    return-void
.end method
