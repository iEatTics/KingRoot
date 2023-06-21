.class public abstract Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/loader/multi/IKlPackageManagerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/multi/IKlPackageManagerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.kingroot.loader.multi.IKlPackageManagerBridge"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/kingroot/loader/multi/IKlPackageManagerBridge;
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
    const-string v0, "com.kingroot.loader.multi.IKlPackageManagerBridge"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a$a;

    invoke-direct {v0, p0}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a$a;-><init>(Landroid/os/IBinder;)V

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
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v0, "com.kingroot.loader.multi.IKlPackageManagerBridge"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.kingroot.loader.multi.IKlPackageManagerBridge"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;->markPluginRunning(II)V

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v0, "com.kingroot.loader.multi.IKlPackageManagerBridge"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;->getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {v0, p3, v2}, Lcom/kingroot/loader/sdk/KlPackage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    :sswitch_3
    const-string v0, "com.kingroot.loader.multi.IKlPackageManagerBridge"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;->getInstalledKlInfos()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 81
    :sswitch_4
    const-string v0, "com.kingroot.loader.multi.IKlPackageManagerBridge"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;->uninstallPlugin(I)V

    goto :goto_0

    .line 89
    :sswitch_5
    const-string v0, "com.kingroot.loader.multi.IKlPackageManagerBridge"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;->installPlugin(Ljava/lang/String;)I

    move-result v0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    :sswitch_6
    const-string v0, "com.kingroot.loader.multi.IKlPackageManagerBridge"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    sget-object v0, Lcom/kingroot/loader/sdk/KlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlInfo;

    .line 110
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 111
    :cond_1
    invoke-virtual {p0, v3, v0, v1}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;->installPluginEx(Ljava/lang/String;Lcom/kingroot/loader/sdk/KlInfo;Z)I

    move-result v0

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 107
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 118
    :sswitch_7
    const-string v0, "com.kingroot.loader.multi.IKlPackageManagerBridge"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 123
    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;->setEnabledSetting(IZ)Z

    move-result v0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 122
    goto :goto_2

    .line 130
    :sswitch_8
    const-string v0, "com.kingroot.loader.multi.IKlPackageManagerBridge"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge$a;->a(Landroid/os/IBinder;)Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge;

    move-result-object v1

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;->postRestartUpdate(Ljava/lang/String;Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge;)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
