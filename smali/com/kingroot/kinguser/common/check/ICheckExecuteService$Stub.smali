.class public abstract Lcom/kingroot/kinguser/common/check/ICheckExecuteService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/common/check/ICheckExecuteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/common/check/ICheckExecuteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/common/check/ICheckExecuteService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kingroot.kinguser.common.check.ICheckExecuteService"

.field static final TRANSACTION_checkAsync:I = 0x1

.field static final TRANSACTION_checkSync:I = 0x3

.field static final TRANSACTION_delayCheckAgain:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.kingroot.kinguser.common.check.ICheckExecuteService"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/kinguser/common/check/ICheckExecuteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/common/check/ICheckExecuteService;
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
    const-string v0, "com.kingroot.kinguser.common.check.ICheckExecuteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/kinguser/common/check/ICheckExecuteService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/kingroot/kinguser/common/check/ICheckExecuteService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/common/check/ICheckExecuteService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/common/check/ICheckExecuteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.kingroot.kinguser.common.check.ICheckExecuteService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.kingroot.kinguser.common.check.ICheckExecuteService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 51
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/common/check/ISuCheckListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/common/check/ISuCheckListener;

    move-result-object v3

    .line 54
    invoke-virtual {p0, v0, v2, v3}, Lcom/kingroot/kinguser/common/check/ICheckExecuteService$Stub;->checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 49
    goto :goto_1

    .line 59
    :sswitch_2
    const-string v0, "com.kingroot.kinguser.common.check.ICheckExecuteService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/kingroot/kinguser/common/check/ICheckExecuteService$Stub;->delayCheckAgain()V

    goto :goto_0

    .line 65
    :sswitch_3
    const-string v0, "com.kingroot.kinguser.common.check.ICheckExecuteService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 69
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 71
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/common/check/ISuCheckListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/common/check/ISuCheckListener;

    move-result-object v4

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 74
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    .line 75
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/kingroot/kinguser/common/check/ICheckExecuteService$Stub;->checkSync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;Ljava/util/List;)Z

    move-result v0

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 67
    goto :goto_2

    :cond_4
    move v3, v2

    .line 69
    goto :goto_3

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
