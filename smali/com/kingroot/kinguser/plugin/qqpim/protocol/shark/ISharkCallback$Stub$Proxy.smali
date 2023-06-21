.class Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 76
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "com.kingroot.kinguser.plugin.qqpim.protocol.shark.ISharkCallback"

    return-object v0
.end method

.method public onFinish(IIIILcom/kingroot/loader/common/protocol/SerializableParcel;)V
    .locals 5

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 90
    :try_start_0
    const-string v0, "com.kingroot.kinguser.plugin.qqpim.protocol.shark.ISharkCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    if-eqz p5, :cond_0

    .line 96
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p5, v1, v0}, Lcom/kingroot/loader/common/protocol/SerializableParcel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 103
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
