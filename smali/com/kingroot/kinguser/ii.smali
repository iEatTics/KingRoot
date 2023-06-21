.class final Lcom/kingroot/kinguser/ii;
.super Lcom/kingroot/kinguser/nj;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/kingroot/kinguser/nj;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 4

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/lt;->eg()Lcom/kingroot/kinguser/lt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/lt;->ei()Lcom/kingroot/kinguser/lt$a;

    .line 186
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/mx;->eM()V

    .line 188
    invoke-static {}, Lcom/kingroot/kinguser/na;->eT()Lcom/kingroot/kinguser/na;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/na;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bZ()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 195
    return-void

    .line 193
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/kingroot/kinguser/ih;->bZ()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
