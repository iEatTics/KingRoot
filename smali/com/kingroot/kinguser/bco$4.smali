.class Lcom/kingroot/kinguser/bco$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bco;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bhv:Lcom/kingroot/kinguser/bco;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bco;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/kingroot/kinguser/bco$4;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 552
    iget-object v0, p0, Lcom/kingroot/kinguser/bco$4;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v0}, Lcom/kingroot/kinguser/bco;->f(Lcom/kingroot/kinguser/bco;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bco$4;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v2}, Lcom/kingroot/kinguser/bco;->g(Lcom/kingroot/kinguser/bco;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/kingroot/kinguser/bco$4;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v0}, Lcom/kingroot/kinguser/bco;->h(Lcom/kingroot/kinguser/bco;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bco$4;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v2}, Lcom/kingroot/kinguser/bco;->f(Lcom/kingroot/kinguser/bco;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v0, p0, Lcom/kingroot/kinguser/bco$4;->bhv:Lcom/kingroot/kinguser/bco;

    iget-object v1, p0, Lcom/kingroot/kinguser/bco$4;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v1}, Lcom/kingroot/kinguser/bco;->f(Lcom/kingroot/kinguser/bco;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/kingroot/kinguser/bco$4;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v1}, Lcom/kingroot/kinguser/bco;->i(Lcom/kingroot/kinguser/bco;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bco;->a(Lcom/kingroot/kinguser/bco;J)J

    .line 557
    iget-object v0, p0, Lcom/kingroot/kinguser/bco$4;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v0}, Lcom/kingroot/kinguser/bco;->k(Lcom/kingroot/kinguser/bco;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingroot/kinguser/bco$4;->bhv:Lcom/kingroot/kinguser/bco;

    .line 558
    invoke-static {v2}, Lcom/kingroot/kinguser/bco;->j(Lcom/kingroot/kinguser/bco;)J

    move-result-wide v2

    .line 557
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bco$4;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v0}, Lcom/kingroot/kinguser/bco;->h(Lcom/kingroot/kinguser/bco;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bco$4;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v2}, Lcom/kingroot/kinguser/bco;->g(Lcom/kingroot/kinguser/bco;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
