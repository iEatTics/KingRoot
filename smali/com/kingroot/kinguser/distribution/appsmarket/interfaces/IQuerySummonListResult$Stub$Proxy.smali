.class Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult$Stub;
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
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 64
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "com.kingroot.kinguser.distribution.appsmarket.interfaces.IQuerySummonListResult"

    return-object v0
.end method

.method public onResult(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 77
    :try_start_0
    const-string v0, "com.kingroot.kinguser.distribution.appsmarket.interfaces.IQuerySummonListResult"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
