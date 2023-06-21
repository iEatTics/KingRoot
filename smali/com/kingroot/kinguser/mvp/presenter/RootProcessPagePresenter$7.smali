.class public Lcom/kingroot/kinguser/mvp/presenter/RootProcessPagePresenter$7;
.super Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aus;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aus;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/kingroot/kinguser/mvp/presenter/RootProcessPagePresenter$7;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-direct {p0}, Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/RootProcessPagePresenter$7;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->e(Lcom/kingroot/kinguser/aus;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/RootProcessPagePresenter$7;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->e(Lcom/kingroot/kinguser/aus;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 613
    monitor-exit v1

    .line 614
    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 0

    .prologue
    .line 606
    return-void
.end method

.method public onInstallFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/RootProcessPagePresenter$7;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->e(Lcom/kingroot/kinguser/aus;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/RootProcessPagePresenter$7;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->e(Lcom/kingroot/kinguser/aus;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 631
    monitor-exit v1

    .line 632
    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onInstallFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/RootProcessPagePresenter$7;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->e(Lcom/kingroot/kinguser/aus;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/RootProcessPagePresenter$7;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->e(Lcom/kingroot/kinguser/aus;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 622
    monitor-exit v1

    .line 623
    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProgressChanged(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 0

    .prologue
    .line 601
    return-void
.end method
