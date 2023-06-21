.class Lcom/kingroot/kinguser/aek$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cbq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aek;->c(ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic afb:Z

.field final synthetic afc:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

.field final synthetic afd:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic this$0:Lcom/kingroot/kinguser/aek;

.field final synthetic yu:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aek;Landroid/content/Context;ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/kingroot/kinguser/aek$3;->this$0:Lcom/kingroot/kinguser/aek;

    iput-object p2, p0, Lcom/kingroot/kinguser/aek$3;->yu:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/kingroot/kinguser/aek$3;->afb:Z

    iput-object p4, p0, Lcom/kingroot/kinguser/aek$3;->afc:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    iput-object p5, p0, Lcom/kingroot/kinguser/aek$3;->afd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 481
    const-string v0, "key_softupdate_conch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 483
    instance-of v1, v0, Lcom/kingroot/kinguser/ae;

    if-eqz v1, :cond_7

    .line 484
    check-cast v0, Lcom/kingroot/kinguser/ae;

    .line 487
    :goto_0
    if-nez v0, :cond_1

    .line 521
    :cond_0
    :goto_1
    return-void

    .line 491
    :cond_1
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 493
    iget-object v1, v0, Lcom/kingroot/kinguser/ae;->gQ:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 494
    iget-object v0, v0, Lcom/kingroot/kinguser/ae;->gQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/x;

    .line 497
    iget-object v1, v0, Lcom/kingroot/kinguser/x;->gy:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 498
    iget-object v1, v0, Lcom/kingroot/kinguser/x;->gy:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/u;

    move-object v3, v1

    .line 501
    :goto_3
    iget-object v1, p0, Lcom/kingroot/kinguser/aek$3;->this$0:Lcom/kingroot/kinguser/aek;

    iget-object v2, p0, Lcom/kingroot/kinguser/aek$3;->yu:Landroid/content/Context;

    iget-wide v4, v0, Lcom/kingroot/kinguser/x;->gt:J

    iget-boolean v6, p0, Lcom/kingroot/kinguser/aek$3;->afb:Z

    invoke-static/range {v1 .. v6}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;Landroid/content/Context;Lcom/kingroot/kinguser/u;JZ)Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_2

    .line 504
    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_2

    .line 510
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aek$3;->afc:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/kingroot/kinguser/aek$3;->afd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    .line 512
    iget-object v1, p0, Lcom/kingroot/kinguser/aek$3;->afc:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    iget-object v0, p0, Lcom/kingroot/kinguser/aek$3;->afd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;->onCheckEvent(I)V

    .line 515
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/aek$3;->afc:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;

    :goto_4
    invoke-interface {v1, v0}, Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;->onCheckFinished(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    goto :goto_1

    .line 517
    :catch_0
    move-exception v0

    goto :goto_1

    .line 515
    :cond_5
    sget-object v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->aeM:Lcom/kingroot/kingmaster/network/updata/CheckResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_6
    move-object v3, v7

    goto :goto_3

    :cond_7
    move-object v0, v7

    goto/16 :goto_0
.end method
