.class public abstract Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kingroot.kinguser.plugin.qqpim.protocol.shark.ISharkCallback"

.field static final TRANSACTION_onFinish:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.kingroot.kinguser.plugin.qqpim.protocol.shark.ISharkCallback"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;
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
    const-string v0, "com.kingroot.kinguser.plugin.qqpim.protocol.shark.ISharkCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.kingroot.kinguser.plugin.qqpim.protocol.shark.ISharkCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.kingroot.kinguser.plugin.qqpim.protocol.shark.ISharkCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/kingroot/loader/common/protocol/SerializableParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/common/protocol/SerializableParcel;

    move-object v5, v0

    :goto_1
    move-object v0, p0

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback$Stub;->onFinish(IIIILcom/kingroot/loader/common/protocol/SerializableParcel;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 65
    goto :goto_0

    .line 61
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method