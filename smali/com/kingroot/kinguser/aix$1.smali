.class final Lcom/kingroot/kinguser/aix$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 441
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 443
    sget-boolean v0, Lcom/kingroot/kinguser/aix;->asI:Z

    if-nez v0, :cond_0

    .line 445
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootSdk;->loadRootEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/aix;->asI:Z

    .line 448
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18763

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 455
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/kingroot/kinguser/aix;->asI:Z

    if-eqz v0, :cond_1

    .line 457
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootSdk;->checkCanRoot()Lcloudsdk/ext/kr/RootInfo;

    move-result-object v0

    .line 459
    invoke-static {}, Lcom/kingroot/kinguser/bbs;->WD()Lcom/kingroot/kinguser/bbs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bbs;->c(Lcloudsdk/ext/kr/RootInfo;)V

    .line 460
    invoke-static {v0}, Lcom/kingroot/kinguser/aix;->b(Lcloudsdk/ext/kr/RootInfo;)I

    .line 462
    :cond_1
    sget-object v1, Lcom/kingroot/kinguser/aix;->asH:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aix;->asH:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 466
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    return-void

    .line 452
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18764

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
