.class Lcom/kingroot/kinguser/axc$13;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXx:Lcom/kingroot/kinguser/axc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axc;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$13;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 662
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 664
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$13;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->g(Lcom/kingroot/kinguser/axc;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/bhe;->acj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$13;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 675
    :goto_1
    return-void

    .line 673
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axc$13;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v1}, Lcom/kingroot/kinguser/axc;->e(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_1

    .line 665
    :catch_0
    move-exception v0

    goto :goto_0
.end method
