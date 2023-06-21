.class public abstract Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

.field static final TRANSACTION_addLog:I = 0x2

.field static final TRANSACTION_addLogsChangeListener:I = 0x7

.field static final TRANSACTION_clearAllLogs:I = 0x4

.field static final TRANSACTION_clearTimeOutLogs:I = 0x3

.field static final TRANSACTION_getLogs:I = 0x1

.field static final TRANSACTION_getTodayRequestAllowAppList:I = 0xa

.field static final TRANSACTION_getTodayRequestAppCount:I = 0x9

.field static final TRANSACTION_hasExistLogs:I = 0xb

.field static final TRANSACTION_removeLogsChangeListener:I = 0x8

.field static final TRANSACTION_setLogAble:I = 0x6

.field static final TRANSACTION_setLogLimit:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;
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
    const-string v0, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->getLogs()Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v0, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    .line 63
    :goto_1
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 68
    :sswitch_3
    const-string v0, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->clearTimeOutLogs()V

    goto :goto_0

    .line 74
    :sswitch_4
    const-string v0, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->clearAllLogs()I

    move-result v0

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    :sswitch_5
    const-string v0, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->setLogLimit(I)V

    goto :goto_0

    .line 90
    :sswitch_6
    const-string v2, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 93
    :cond_1
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->setLogAble(Z)V

    goto :goto_0

    .line 98
    :sswitch_7
    const-string v0, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/root/log/ILogsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/log/ILogsChangeListener;

    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->addLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V

    goto :goto_0

    .line 106
    :sswitch_8
    const-string v0, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/root/log/ILogsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/log/ILogsChangeListener;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->removeLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V

    goto/16 :goto_0

    .line 114
    :sswitch_9
    const-string v0, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->getTodayRequestAppCount()I

    move-result v0

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    :sswitch_a
    const-string v0, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->getTodayRequestAllowAppList()Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 130
    :sswitch_b
    const-string v2, "com.kingroot.kinguser.root.log.IRootMgrLogEngine"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->hasExistLogs()Z

    move-result v2

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

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
