.class Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cbw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aav:Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;


# direct methods
.method constructor <init>(Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl$1;->aav:Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ad(Z)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl$1;->aav:Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;

    invoke-static {v0}, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->access$000(Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl$1;->aav:Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;

    invoke-static {v0}, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->access$100(Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 58
    :goto_0
    if-lez v0, :cond_0

    .line 59
    add-int/lit8 v1, v0, -0x1

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl$1;->aav:Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;

    invoke-static {v0}, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->access$100(Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;

    invoke-interface {v0, p1}, Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;->onAppyResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 62
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 64
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl$1;->aav:Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;

    invoke-static {v0}, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->access$100(Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 65
    monitor-exit v2

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
