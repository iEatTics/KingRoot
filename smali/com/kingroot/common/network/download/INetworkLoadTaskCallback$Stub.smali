.class public abstract Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kingroot.common.network.download.INetworkLoadTaskCallback"

.field static final TRANSACTION_onDeleted:I = 0x7

.field static final TRANSACTION_onFailed:I = 0x5

.field static final TRANSACTION_onFinished:I = 0x4

.field static final TRANSACTION_onInstallFailed:I = 0x9

.field static final TRANSACTION_onInstallFinished:I = 0x8

.field static final TRANSACTION_onPaused:I = 0x6

.field static final TRANSACTION_onProgressChanged:I = 0x3

.field static final TRANSACTION_onRunning:I = 0x2

.field static final TRANSACTION_onWaiting:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.kingroot.common.network.download.INetworkLoadTaskCallback"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.kingroot.common.network.download.INetworkLoadTaskCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.kingroot.common.network.download.INetworkLoadTaskCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.kingroot.common.network.download.INetworkLoadTaskCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    sget-object v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    .line 55
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->onWaiting(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    move v0, v1

    .line 56
    goto :goto_0

    .line 60
    :sswitch_2
    const-string v2, "com.kingroot.common.network.download.INetworkLoadTaskCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    sget-object v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    .line 68
    :cond_1
    invoke-virtual {p0, v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->onRunning(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    move v0, v1

    .line 69
    goto :goto_0

    .line 73
    :sswitch_3
    const-string v2, "com.kingroot.common.network.download.INetworkLoadTaskCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    sget-object v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    .line 81
    :cond_2
    invoke-virtual {p0, v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->onProgressChanged(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    move v0, v1

    .line 82
    goto :goto_0

    .line 86
    :sswitch_4
    const-string v2, "com.kingroot.common.network.download.INetworkLoadTaskCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    sget-object v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    .line 94
    :cond_3
    invoke-virtual {p0, v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    move v0, v1

    .line 95
    goto :goto_0

    .line 99
    :sswitch_5
    const-string v2, "com.kingroot.common.network.download.INetworkLoadTaskCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    sget-object v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    .line 107
    :cond_4
    invoke-virtual {p0, v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->onFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    move v0, v1

    .line 108
    goto :goto_0

    .line 112
    :sswitch_6
    const-string v2, "com.kingroot.common.network.download.INetworkLoadTaskCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    sget-object v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    .line 120
    :cond_5
    invoke-virtual {p0, v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->onPaused(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    move v0, v1

    .line 121
    goto/16 :goto_0

    .line 125
    :sswitch_7
    const-string v2, "com.kingroot.common.network.download.INetworkLoadTaskCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    sget-object v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    .line 133
    :cond_6
    invoke-virtual {p0, v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->onDeleted(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    move v0, v1

    .line 134
    goto/16 :goto_0

    .line 138
    :sswitch_8
    const-string v2, "com.kingroot.common.network.download.INetworkLoadTaskCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 141
    sget-object v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    .line 146
    :cond_7
    invoke-virtual {p0, v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->onInstallFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    move v0, v1

    .line 147
    goto/16 :goto_0

    .line 151
    :sswitch_9
    const-string v2, "com.kingroot.common.network.download.INetworkLoadTaskCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 154
    sget-object v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    .line 159
    :cond_8
    invoke-virtual {p0, v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->onInstallFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    move v0, v1

    .line 160
    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
