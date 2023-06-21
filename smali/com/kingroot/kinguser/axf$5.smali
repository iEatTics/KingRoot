.class Lcom/kingroot/kinguser/axf$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axf;->i(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aNo:J

.field final synthetic aYg:Lcom/kingroot/kinguser/axf;

.field aYi:J

.field final synthetic anA:J


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axf;JJ)V
    .locals 2

    .prologue
    .line 343
    iput-object p1, p0, Lcom/kingroot/kinguser/axf$5;->aYg:Lcom/kingroot/kinguser/axf;

    iput-wide p2, p0, Lcom/kingroot/kinguser/axf$5;->anA:J

    iput-wide p4, p0, Lcom/kingroot/kinguser/axf$5;->aNo:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iget-wide v0, p0, Lcom/kingroot/kinguser/axf$5;->anA:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/axf$5;->aYi:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/kingroot/kinguser/axf$5;->aYi:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/kingroot/kinguser/axf$5;->aYg:Lcom/kingroot/kinguser/axf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axf;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/axf$5;->aYi:J

    iget-wide v2, p0, Lcom/kingroot/kinguser/axf$5;->aNo:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingroot/kinguser/axf$5;->aYi:J

    .line 354
    iget-object v0, p0, Lcom/kingroot/kinguser/axf$5;->aYg:Lcom/kingroot/kinguser/axf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axf;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/axf$5;->aNo:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
