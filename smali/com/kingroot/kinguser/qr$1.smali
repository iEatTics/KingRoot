.class Lcom/kingroot/kinguser/qr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/qr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ET:Lcom/kingroot/kinguser/qr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/qr;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const v3, 0x3c23d70a    # 0.01f

    .line 595
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/qr;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    iget-object v1, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v1}, Lcom/kingroot/kinguser/qr;->a(Lcom/kingroot/kinguser/qr;)F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v2}, Lcom/kingroot/kinguser/qr;->b(Lcom/kingroot/kinguser/qr;)F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/qr;->a(Lcom/kingroot/kinguser/qr;F)F

    .line 597
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    iget-object v1, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v1}, Lcom/kingroot/kinguser/qr;->c(Lcom/kingroot/kinguser/qr;)F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v2}, Lcom/kingroot/kinguser/qr;->b(Lcom/kingroot/kinguser/qr;)F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/qr;->b(Lcom/kingroot/kinguser/qr;F)F

    .line 598
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v0}, Lcom/kingroot/kinguser/qr;->a(Lcom/kingroot/kinguser/qr;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/qr;->stop()V

    .line 607
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v0}, Lcom/kingroot/kinguser/qr;->c(Lcom/kingroot/kinguser/qr;)F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v1}, Lcom/kingroot/kinguser/qr;->f(Lcom/kingroot/kinguser/qr;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/qr;->a(Lcom/kingroot/kinguser/qr;Z)Z

    .line 609
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    iget-object v1, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v1}, Lcom/kingroot/kinguser/qr;->c(Lcom/kingroot/kinguser/qr;)F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v2}, Lcom/kingroot/kinguser/qr;->f(Lcom/kingroot/kinguser/qr;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/qr;->b(Lcom/kingroot/kinguser/qr;F)F

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/qr;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    iget-object v1, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v1}, Lcom/kingroot/kinguser/qr;->g(Lcom/kingroot/kinguser/qr;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/qr;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    .line 616
    return-void

    .line 601
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/qr;->hx()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 602
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    iget-object v1, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v1}, Lcom/kingroot/kinguser/qr;->c(Lcom/kingroot/kinguser/qr;)F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v2}, Lcom/kingroot/kinguser/qr;->d(Lcom/kingroot/kinguser/qr;)F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/qr;->b(Lcom/kingroot/kinguser/qr;F)F

    goto :goto_0

    .line 604
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    iget-object v1, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v1}, Lcom/kingroot/kinguser/qr;->c(Lcom/kingroot/kinguser/qr;)F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/qr$1;->ET:Lcom/kingroot/kinguser/qr;

    invoke-static {v2}, Lcom/kingroot/kinguser/qr;->e(Lcom/kingroot/kinguser/qr;)F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/qr;->b(Lcom/kingroot/kinguser/qr;F)F

    goto :goto_0
.end method
