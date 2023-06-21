.class Lcom/kingroot/kinguser/axc$6;
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
    .line 794
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$6;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 797
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 799
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 801
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$6;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$6;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$6;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bil;->dismiss()V

    .line 807
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$6;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/axc;->a(Lcom/kingroot/kinguser/axc;Lcom/kingroot/kinguser/bil;)Lcom/kingroot/kinguser/bil;

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v0

    .line 805
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$6;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$6;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bil;->dismiss()V

    .line 807
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$6;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/axc;->a(Lcom/kingroot/kinguser/axc;Lcom/kingroot/kinguser/bil;)Lcom/kingroot/kinguser/bil;

    goto :goto_0

    .line 805
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axc$6;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v1}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 806
    iget-object v1, p0, Lcom/kingroot/kinguser/axc$6;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v1}, Lcom/kingroot/kinguser/axc;->f(Lcom/kingroot/kinguser/axc;)Lcom/kingroot/kinguser/bil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bil;->dismiss()V

    .line 807
    iget-object v1, p0, Lcom/kingroot/kinguser/axc$6;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/axc;->a(Lcom/kingroot/kinguser/axc;Lcom/kingroot/kinguser/bil;)Lcom/kingroot/kinguser/bil;

    :cond_1
    throw v0
.end method
