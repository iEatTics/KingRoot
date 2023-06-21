.class Lcom/kingroot/kinguser/aly$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aly;->HO()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aly;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aly;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/kingroot/kinguser/aly$2;->this$0:Lcom/kingroot/kinguser/aly;

    iput-object p2, p0, Lcom/kingroot/kinguser/aly$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 676
    instance-of v0, p5, Lcom/kingroot/kinguser/dp;

    if-eqz v0, :cond_1

    check-cast p5, Lcom/kingroot/kinguser/dp;

    iget v0, p5, Lcom/kingroot/kinguser/dp;->gv:I

    if-ne v0, v2, :cond_1

    .line 677
    iget-object v0, p0, Lcom/kingroot/kinguser/aly$2;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-static {v0}, Lcom/kingroot/kinguser/aly;->h(Lcom/kingroot/kinguser/aly;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 682
    :goto_0
    if-nez p3, :cond_0

    .line 683
    iget-object v0, p0, Lcom/kingroot/kinguser/aly$2;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-static {v0}, Lcom/kingroot/kinguser/aly;->i(Lcom/kingroot/kinguser/aly;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aly$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 687
    return-void

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aly$2;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-static {v0}, Lcom/kingroot/kinguser/aly;->h(Lcom/kingroot/kinguser/aly;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
