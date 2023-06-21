.class Lcom/kingroot/kinguser/vu$3;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/vu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic LC:Lcom/kingroot/kinguser/vu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vu;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/wo$a;)V
    .locals 7
    .param p1    # Lcom/kingroot/kinguser/wo$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    .line 322
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/wo;->a(Lcom/kingroot/kinguser/wo$a;)V

    .line 323
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->c(Lcom/kingroot/kinguser/vu;)V

    .line 330
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 331
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 335
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->d(Lcom/kingroot/kinguser/vu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/vu;->a(Lcom/kingroot/kinguser/vu;Z)Z

    .line 343
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->e(Lcom/kingroot/kinguser/vu;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 345
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->f(Lcom/kingroot/kinguser/vu;)Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v3

    .line 347
    invoke-virtual {v3}, Lcom/kingroot/common/report/autostart/BootRecord;->mz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {v3, v0}, Lcom/kingroot/common/report/autostart/BootRecord;->dj(Ljava/lang/String;)Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    move-result-object v0

    .line 355
    if-nez v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Lcom/kingroot/kinguser/acu;->ci(I)J

    move-result-wide v4

    invoke-static {v0, v4, v5, v2, v1}, Lcom/kingroot/kinguser/vu;->a(Lcom/kingroot/kinguser/vu;JIZ)Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    move-result-object v0

    .line 361
    :cond_2
    invoke-virtual {v3}, Lcom/kingroot/common/report/autostart/BootRecord;->mx()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 362
    iput-boolean v6, v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mIsKilled:Z

    .line 366
    :cond_3
    invoke-virtual {v3, v0}, Lcom/kingroot/common/report/autostart/BootRecord;->a(Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;)V

    .line 375
    :goto_1
    iget-wide v2, v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mAppBootupTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    iget v0, v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mProcRanking:I

    if-nez v0, :cond_5

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->f(Lcom/kingroot/kinguser/vu;)Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->mu()V

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->h(Lcom/kingroot/kinguser/vu;)V

    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->k(Lcom/kingroot/kinguser/vu;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/vu$3$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/vu$3$1;-><init>(Lcom/kingroot/kinguser/vu$3;)V

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->g(Lcom/kingroot/kinguser/vu;)Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v3

    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Lcom/kingroot/kinguser/acu;->ci(I)J

    move-result-wide v4

    invoke-static {v0, v4, v5, v2, v1}, Lcom/kingroot/kinguser/vu;->a(Lcom/kingroot/kinguser/vu;JIZ)Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    move-result-object v0

    .line 372
    invoke-virtual {v3, v0}, Lcom/kingroot/common/report/autostart/BootRecord;->a(Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;)V

    goto :goto_1
.end method
