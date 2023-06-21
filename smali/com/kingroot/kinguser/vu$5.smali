.class Lcom/kingroot/kinguser/vu$5;
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
    .line 496
    iput-object p1, p0, Lcom/kingroot/kinguser/vu$5;->LC:Lcom/kingroot/kinguser/vu;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/wo$a;)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/wo$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 499
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/wo;->a(Lcom/kingroot/kinguser/wo$a;)V

    .line 500
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v1

    .line 501
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$5;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->c(Lcom/kingroot/kinguser/vu;)V

    .line 507
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 508
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 511
    iget-object v1, p0, Lcom/kingroot/kinguser/vu$5;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v1}, Lcom/kingroot/kinguser/vu;->f(Lcom/kingroot/kinguser/vu;)Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v1

    .line 512
    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {v1}, Lcom/kingroot/common/report/autostart/BootRecord;->mz()Z

    move-result v3

    if-nez v3, :cond_0

    .line 520
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kingroot/common/report/autostart/BootRecord;->dk(Ljava/lang/String;)Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;

    move-result-object v3

    .line 521
    if-eqz v3, :cond_0

    .line 526
    iget-object v4, p0, Lcom/kingroot/kinguser/vu$5;->LC:Lcom/kingroot/kinguser/vu;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/vu;->a(Lcom/kingroot/kinguser/vu;I)V

    .line 528
    invoke-static {}, Lcom/kingroot/kinguser/acu;->se()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;->mInjectFinishTime:J

    .line 529
    iput v0, v3, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;->mInjectTryCount:I

    .line 530
    iput-boolean v2, v3, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;->mIsSuccess:Z

    .line 531
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    iput-boolean v0, v3, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;->mIsRoot:Z

    .line 532
    invoke-virtual {v1, v3}, Lcom/kingroot/common/report/autostart/BootRecord;->a(Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;)V

    .line 535
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$5;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->k(Lcom/kingroot/kinguser/vu;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/vu$5$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/vu$5$1;-><init>(Lcom/kingroot/kinguser/vu$5;)V

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 552
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$5;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->m(Lcom/kingroot/kinguser/vu;)V

    .line 553
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$5;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->n(Lcom/kingroot/kinguser/vu;)V

    .line 555
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$5;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->h(Lcom/kingroot/kinguser/vu;)V

    goto :goto_0
.end method
