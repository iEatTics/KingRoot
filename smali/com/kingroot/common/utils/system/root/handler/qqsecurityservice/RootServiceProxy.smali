.class public final Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/RootServiceProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/IRootService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/RootServiceProxy;->mRemote:Landroid/os/IBinder;

    .line 13
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/RootServiceProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkVersion(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 41
    :try_start_0
    const-string v3, "com.tencent.tmsecurelite.IRootService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v3, p0, Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/RootServiceProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 44
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 45
    invoke-virtual {v2}, Landroid/os/Parcel;->readByte()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 47
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 45
    return v0

    .line 47
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public shareRootRunCmd(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 21
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 25
    :try_start_0
    const-string v0, "com.tencent.tmsecurelite.IRootService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/RootServiceProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 28
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 33
    return-void

    .line 30
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
