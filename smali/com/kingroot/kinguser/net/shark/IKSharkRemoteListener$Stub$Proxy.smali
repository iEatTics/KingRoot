.class Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener$Stub;
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
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 72
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "com.kingroot.kinguser.net.shark.IKSharkRemoteListener"

    return-object v0
.end method

.method public onFinish(IIIILjava/lang/String;[B)V
    .locals 5

    .prologue
    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 85
    :try_start_0
    const-string v0, "com.kingroot.kinguser.net.shark.IKSharkRemoteListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
