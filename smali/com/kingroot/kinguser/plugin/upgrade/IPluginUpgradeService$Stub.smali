.class public abstract Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

.field static final TRANSACTION_deleteUpgradeInfo:I = 0x6

.field static final TRANSACTION_getUpgradeInfo:I = 0x1

.field static final TRANSACTION_getUpgradeInfoList:I = 0x9

.field static final TRANSACTION_processLocalOrderSync:I = 0x3

.field static final TRANSACTION_pullPluginOrderAsync:I = 0x2

.field static final TRANSACTION_pullPluginOrderSync:I = 0x4

.field static final TRANSACTION_setUpgradeInfoFlag:I = 0x7

.field static final TRANSACTION_startDownload:I = 0x5

.field static final TRANSACTION_stopDownload:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;
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
    const-string v0, "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 50
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;->getUpgradeInfo(I)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    move-result-object v2

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v2, p3, v1}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    :sswitch_2
    const-string v2, "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 66
    :cond_1
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;->pullPluginOrderAsync(Z)V

    goto :goto_0

    .line 71
    :sswitch_3
    const-string v0, "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;->processLocalOrderSync(I)I

    move-result v0

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    :sswitch_4
    const-string v2, "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 84
    :cond_2
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;->pullPluginOrderSync(Z)I

    move-result v0

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    :sswitch_5
    const-string v2, "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;

    move-result-object v3

    .line 96
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;->startDownload(ILcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;)Z

    move-result v2

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    :sswitch_6
    const-string v0, "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;->deleteUpgradeInfo(I)V

    goto/16 :goto_0

    .line 111
    :sswitch_7
    const-string v0, "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    invoke-virtual {p0, v0, v2}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;->setUpgradeInfoFlag(II)V

    goto/16 :goto_0

    .line 121
    :sswitch_8
    const-string v0, "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;->stopDownload(I)V

    goto/16 :goto_0

    .line 129
    :sswitch_9
    const-string v0, "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;->getUpgradeInfoList()Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

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
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
