.class Lcom/kingroot/kinguser/axg$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYv:Lcom/kingroot/kinguser/axg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg;JJ)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$1;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$1;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axg;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 107
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
