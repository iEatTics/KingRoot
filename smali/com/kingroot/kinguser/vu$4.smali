.class Lcom/kingroot/kinguser/vu$4;
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
    .line 427
    iput-object p1, p0, Lcom/kingroot/kinguser/vu$4;->LC:Lcom/kingroot/kinguser/vu;

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
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 430
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/wo;->a(Lcom/kingroot/kinguser/wo$a;)V

    .line 431
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/vu$4;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v2}, Lcom/kingroot/kinguser/vu;->c(Lcom/kingroot/kinguser/vu;)V

    .line 438
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 441
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$4;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->e(Lcom/kingroot/kinguser/vu;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$4;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->g(Lcom/kingroot/kinguser/vu;)Lcom/kingroot/common/report/autostart/BootRecord;

    .line 451
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hV()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_3

    instance-of v3, v0, Lcom/kingroot/kinguser/re;

    if-eqz v3, :cond_3

    .line 454
    check-cast v0, Lcom/kingroot/kinguser/re;

    .line 455
    invoke-virtual {v0}, Lcom/kingroot/kinguser/re;->hI()Z

    move-result v0

    .line 457
    :goto_1
    iget-object v3, p0, Lcom/kingroot/kinguser/vu$4;->LC:Lcom/kingroot/kinguser/vu;

    invoke-virtual {v3, v1, v0}, Lcom/kingroot/kinguser/vu;->k(IZ)V

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$4;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->f(Lcom/kingroot/kinguser/vu;)Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->mz()Z

    move-result v3

    if-nez v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/kingroot/kinguser/vu$4;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/vu;->a(Lcom/kingroot/kinguser/vu;I)V

    .line 471
    iget-object v3, p0, Lcom/kingroot/kinguser/vu$4;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {}, Lcom/kingroot/kinguser/acu;->se()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/kingroot/kinguser/vu;->a(Lcom/kingroot/kinguser/vu;J)Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;

    move-result-object v3

    .line 472
    iput-boolean v2, v3, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;->mIsInjectSwitchOn:Z

    .line 473
    invoke-virtual {v0, v3}, Lcom/kingroot/common/report/autostart/BootRecord;->a(Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;)V

    .line 474
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$4;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->h(Lcom/kingroot/kinguser/vu;)V

    .line 477
    if-nez v2, :cond_0

    .line 478
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$4;->LC:Lcom/kingroot/kinguser/vu;

    invoke-virtual {v0, v1, v1}, Lcom/kingroot/kinguser/vu;->c(ZI)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
