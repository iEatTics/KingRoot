.class final Lcom/kingroot/kinguser/afe$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic ahm:Lcom/kingroot/kinguser/afe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/afe;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/kingroot/kinguser/afe$c;->ahm:Lcom/kingroot/kinguser/afe;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/afe$c;->ahm:Lcom/kingroot/kinguser/afe;

    invoke-static {v0}, Lcom/kingroot/kinguser/afe;->b(Lcom/kingroot/kinguser/afe;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/afe$c;->ahm:Lcom/kingroot/kinguser/afe;

    invoke-static {v0}, Lcom/kingroot/kinguser/afe;->b(Lcom/kingroot/kinguser/afe;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    .line 152
    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/afe$c;->ahm:Lcom/kingroot/kinguser/afe;

    invoke-static {v0}, Lcom/kingroot/kinguser/afe;->b(Lcom/kingroot/kinguser/afe;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    .line 155
    if-eqz v0, :cond_0

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/afe$c;->ahm:Lcom/kingroot/kinguser/afe;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/afe;->vb()V

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/kingroot/kinguser/afe$c;->ahm:Lcom/kingroot/kinguser/afe;

    invoke-static {v3}, Lcom/kingroot/kinguser/afe;->b(Lcom/kingroot/kinguser/afe;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    return-void

    :cond_2
    move v0, v2

    .line 162
    goto :goto_0
.end method
