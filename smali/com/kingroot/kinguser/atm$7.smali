.class Lcom/kingroot/kinguser/atm$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atm;
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
    .line 744
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$7;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Ow()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 763
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$7;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->n(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 764
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$7;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->p(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 765
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$7;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->q(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 766
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$7;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->o(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/aav;->qp()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 767
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$7;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 769
    return-void
.end method

.method public Ox()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$7;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 775
    return-void
.end method

.method public b(DI)V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method public f(Ljava/lang/String;II)V
    .locals 4

    .prologue
    .line 753
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$7;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->n(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 754
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$7;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->o(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 755
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$7;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->p(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 756
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$7;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->q(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 757
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$7;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 759
    return-void
.end method

.method public gz(I)J
    .locals 4

    .prologue
    .line 779
    if-nez p1, :cond_0

    .line 780
    const-wide/16 v0, 0x0

    .line 785
    :goto_0
    return-wide v0

    .line 782
    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 783
    const-wide/16 v0, 0xfa0

    int-to-long v2, p1

    div-long/2addr v0, v2

    goto :goto_0

    .line 785
    :cond_1
    const-wide/16 v0, 0x7d0

    int-to-long v2, p1

    div-long/2addr v0, v2

    goto :goto_0
.end method
