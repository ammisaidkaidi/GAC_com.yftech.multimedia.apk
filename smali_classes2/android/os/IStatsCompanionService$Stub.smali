.class public abstract Landroid/os/IStatsCompanionService$Stub;
.super Landroid/os/Binder;
.source "IStatsCompanionService.java"

# interfaces
.implements Landroid/os/IStatsCompanionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStatsCompanionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IStatsCompanionService"

.field static final TRANSACTION_cancelAlarmForSubscriberTriggering:I = 0x7

.field static final TRANSACTION_cancelAnomalyAlarm:I = 0x3

.field static final TRANSACTION_cancelPullingAlarm:I = 0x5

.field static final TRANSACTION_pullData:I = 0x8

.field static final TRANSACTION_sendDataBroadcast:I = 0x9

.field static final TRANSACTION_sendSubscriberBroadcast:I = 0xa

.field static final TRANSACTION_setAlarmForSubscriberTriggering:I = 0x6

.field static final TRANSACTION_setAnomalyAlarm:I = 0x2

.field static final TRANSACTION_setPullingAlarm:I = 0x4

.field static final TRANSACTION_statsdReady:I = 0x1

.field static final TRANSACTION_triggerUidSnapshot:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IStatsCompanionService"

    .line 19
    invoke-virtual {p0, p0, v0}, Landroid/os/IStatsCompanionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IStatsCompanionService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.os.IStatsCompanionService"

    .line 30
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    instance-of v1, v0, Landroid/os/IStatsCompanionService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/os/IStatsCompanionService;

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Landroid/os/IStatsCompanionService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IStatsCompanionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "android.os.IStatsCompanionService"

    const v5, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v1, v5, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 151
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 145
    :pswitch_0
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/os/IStatsCompanionService$Stub;->triggerUidSnapshot()V

    return v12

    .line 120
    :pswitch_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v11

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_0

    .line 135
    sget-object v13, Landroid/os/StatsDimensionsValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v13, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StatsDimensionsValue;

    :goto_0
    move-object v13, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v9

    move-object v10, v11

    move-object v11, v13

    .line 140
    invoke-virtual/range {v0 .. v11}, Landroid/os/IStatsCompanionService$Stub;->sendSubscriberBroadcast(Landroid/os/IBinder;JJJJ[Ljava/lang/String;Landroid/os/StatsDimensionsValue;)V

    return v12

    .line 110
    :pswitch_2
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 115
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IStatsCompanionService$Stub;->sendDataBroadcast(Landroid/os/IBinder;J)V

    return v12

    .line 100
    :pswitch_3
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    invoke-virtual {p0, v1}, Landroid/os/IStatsCompanionService$Stub;->pullData(I)[Landroid/os/StatsLogEventWrapper;

    move-result-object v0

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {v3, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 94
    :pswitch_4
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/os/IStatsCompanionService$Stub;->cancelAlarmForSubscriberTriggering()V

    return v12

    .line 86
    :pswitch_5
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 89
    invoke-virtual {p0, v1, v2}, Landroid/os/IStatsCompanionService$Stub;->setAlarmForSubscriberTriggering(J)V

    return v12

    .line 80
    :pswitch_6
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/os/IStatsCompanionService$Stub;->cancelPullingAlarm()V

    return v12

    .line 72
    :pswitch_7
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 75
    invoke-virtual {p0, v1, v2}, Landroid/os/IStatsCompanionService$Stub;->setPullingAlarm(J)V

    return v12

    .line 66
    :pswitch_8
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/os/IStatsCompanionService$Stub;->cancelAnomalyAlarm()V

    return v12

    .line 58
    :pswitch_9
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 61
    invoke-virtual {p0, v1, v2}, Landroid/os/IStatsCompanionService$Stub;->setAnomalyAlarm(J)V

    return v12

    .line 52
    :pswitch_a
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/os/IStatsCompanionService$Stub;->statsdReady()V

    return v12

    .line 47
    :cond_1
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
