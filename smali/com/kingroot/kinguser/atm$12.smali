.class Lcom/kingroot/kinguser/atm$12;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->Pm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$12;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1061
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 1062
    invoke-static {}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->Ot()Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;

    move-result-object v0

    .line 1063
    if-eqz v0, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/kingroot/kinguser/atm$12;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v1}, Lcom/kingroot/kinguser/atm;->n(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;->processCountOptimized:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1065
    iget-object v1, p0, Lcom/kingroot/kinguser/atm$12;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v1}, Lcom/kingroot/kinguser/atm;->p(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;->memoryreReleased:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1066
    iget-object v1, p0, Lcom/kingroot/kinguser/atm$12;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v1}, Lcom/kingroot/kinguser/atm;->q(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;->optimizePercent:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1067
    iget-object v1, p0, Lcom/kingroot/kinguser/atm$12;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1068
    iget-object v1, p0, Lcom/kingroot/kinguser/atm$12;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1069
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1070
    iget v0, v0, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;->optimizePercent:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1071
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$12;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1076
    :goto_0
    return-void

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$12;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->v(Lcom/kingroot/kinguser/atm;)V

    goto :goto_0
.end method
