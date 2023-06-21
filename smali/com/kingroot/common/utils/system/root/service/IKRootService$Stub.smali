.class public abstract Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/common/utils/system/root/service/IKRootService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/utils/system/root/service/IKRootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kingroot.common.utils.system.root.service.IKRootService"

.field static final TRANSACTION_closeShell:I = 0x4

.field static final TRANSACTION_isRootPermition:I = 0x5

.field static final TRANSACTION_isRootPermitionInBackupSu:I = 0x6

.field static final TRANSACTION_registerCallBack:I = 0x2

.field static final TRANSACTION_registerRootHolder:I = 0x1

.field static final TRANSACTION_runRootCommand:I = 0x7

.field static final TRANSACTION_runRootCommandCustomTimeLimited:I = 0x8

.field static final TRANSACTION_runRootCommands:I = 0x9

.field static final TRANSACTION_runRootCommandsTimeOut:I = 0xb

.field static final TRANSACTION_runRootVTCommands:I = 0xa

.field static final TRANSACTION_unregisterCallBack:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/utils/system/root/service/IKRootService;
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
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/common/utils/system/root/service/IKRootService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/kingroot/common/utils/system/root/service/IKRootService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->registerRootHolder(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/common/utils/system/root/service/IKRootCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->registerCallBack(Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;)V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/common/utils/system/root/service/IKRootCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->unregisterCallBack(Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;)V

    goto :goto_0

    .line 71
    :sswitch_4
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->closeShell()V

    goto :goto_0

    .line 77
    :sswitch_5
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 80
    :goto_1
    invoke-virtual {p0, v0}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->isRootPermition(Z)Z

    move-result v0

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 79
    goto :goto_1

    .line 87
    :sswitch_6
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->isRootPermitionInBackupSu()Z

    move-result v0

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    :sswitch_7
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 102
    :goto_2
    invoke-virtual {p0, v3, v4, v0}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->runRootCommand(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v0, p3, v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 101
    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    :sswitch_8
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 122
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->runRootCommandCustomTimeLimited(Ljava/lang/String;Ljava/lang/String;J)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v0, :cond_5

    .line 125
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {v0, p3, v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 129
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    :sswitch_9
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    invoke-virtual {p0, v0}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 145
    :sswitch_a
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/kingroot/common/utils/system/VTCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 148
    invoke-virtual {p0, v0}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->runRootVTCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 155
    :sswitch_b
    const-string v0, "com.kingroot.common.utils.system.root.service.IKRootService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v2, v1

    .line 160
    :cond_6
    invoke-virtual {p0, v0, v2}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->runRootCommandsTimeOut(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
