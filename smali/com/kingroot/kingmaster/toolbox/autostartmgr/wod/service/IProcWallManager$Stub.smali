.class public abstract Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kingroot.processwall.server.IProcWallManager"

.field static final TRANSACTION_getPackageConfig:I = 0x6

.field static final TRANSACTION_getVersionCode:I = 0x1

.field static final TRANSACTION_initPackageConfigMap:I = 0x3

.field static final TRANSACTION_setAutoForceStopEnable:I = 0x7

.field static final TRANSACTION_setEnable:I = 0x2

.field static final TRANSACTION_setPackageConfig:I = 0x4

.field static final TRANSACTION_setPackageConfigMap:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.kingroot.processwall.server.IProcWallManager"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;
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
    const-string v0, "com.kingroot.processwall.server.IProcWallManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.kingroot.processwall.server.IProcWallManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.kingroot.processwall.server.IProcWallManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub;->getVersionCode()I

    move-result v0

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v2, "com.kingroot.processwall.server.IProcWallManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 58
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub;->setEnable(Z)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    :sswitch_3
    const-string v0, "com.kingroot.processwall.server.IProcWallManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 72
    :goto_1
    invoke-virtual {p0, v0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub;->initPackageConfigMap(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 70
    goto :goto_1

    .line 78
    :sswitch_4
    const-string v0, "com.kingroot.processwall.server.IProcWallManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    invoke-virtual {p0, v0, v2}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub;->setPackageConfig(Ljava/lang/String;I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    :sswitch_5
    const-string v0, "com.kingroot.processwall.server.IProcWallManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 97
    :goto_2
    invoke-virtual {p0, v0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub;->setPackageConfigMap(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 95
    goto :goto_2

    .line 103
    :sswitch_6
    const-string v0, "com.kingroot.processwall.server.IProcWallManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub;->getPackageConfig(Ljava/lang/String;)I

    move-result v0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    :sswitch_7
    const-string v2, "com.kingroot.processwall.server.IProcWallManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 116
    :cond_3
    invoke-virtual {p0, v0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub;->setAutoForceStopEnable(Z)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
