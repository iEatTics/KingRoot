.class Lcom/kingroot/kinguser/axy$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axy;->i(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aNo:J

.field aYi:J

.field final synthetic anA:J

.field final synthetic bcw:Lcom/kingroot/kinguser/axy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axy;JJ)V
    .locals 2

    .prologue
    .line 311
    iput-object p1, p0, Lcom/kingroot/kinguser/axy$5;->bcw:Lcom/kingroot/kinguser/axy;

    iput-wide p2, p0, Lcom/kingroot/kinguser/axy$5;->anA:J

    iput-wide p4, p0, Lcom/kingroot/kinguser/axy$5;->aNo:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iget-wide v0, p0, Lcom/kingroot/kinguser/axy$5;->anA:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/axy$5;->aYi:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$5;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v0}, Lcom/kingroot/kinguser/axy;->d(Lcom/kingroot/kinguser/axy;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$5;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v0}, Lcom/kingroot/kinguser/axy;->d(Lcom/kingroot/kinguser/axy;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kinguser/axy$5;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v2}, Lcom/kingroot/kinguser/axy;->e(Lcom/kingroot/kinguser/axy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingroot/kinguser/axy$5;->aYi:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/axy$5;->aYi:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$5;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/axy;->b(Lcom/kingroot/kinguser/axy;Z)Z

    .line 321
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$5;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$5;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v0}, Lcom/kingroot/kinguser/axy;->c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/axy$5;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v0}, Lcom/kingroot/kinguser/axy;->c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v0

    iget v0, v0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 324
    sget-object v0, Lcom/kingroot/kinguser/aea$b;->aeD:Lcom/kingroot/kinguser/aea$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/axy$5;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v1}, Lcom/kingroot/kinguser/axy;->c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->gt:J

    iget-object v1, p0, Lcom/kingroot/kinguser/axy$5;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v1}, Lcom/kingroot/kinguser/axy;->c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v1

    iget v1, v1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajv:I

    invoke-static {v0, v2, v3, v1}, Lcom/kingroot/kinguser/aea;->a(Lcom/kingroot/kinguser/aea$b;JI)V

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 329
    :cond_2
    iget-wide v0, p0, Lcom/kingroot/kinguser/axy$5;->aYi:J

    iget-wide v2, p0, Lcom/kingroot/kinguser/axy$5;->aNo:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingroot/kinguser/axy$5;->aYi:J

    .line 330
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$5;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/axy$5;->aNo:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
