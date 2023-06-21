.class public Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$10;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->a(Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/atm;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$10;->this$0:Lcom/kingroot/kinguser/atm;

    iput-object p2, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 483
    invoke-static {p2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 484
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 485
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 489
    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->Iu()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->onlineFlag:Z

    if-nez v3, :cond_0

    move-object v1, v0

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 498
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$10;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->i(Lcom/kingroot/kinguser/atm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 500
    const-wide/16 v4, 0xa

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    goto :goto_0

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$10;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x70

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 506
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 507
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 508
    return-void
.end method
