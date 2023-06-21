.class Lcom/kingroot/kinguser/cep$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cep;->b(Lcom/kingroot/kinguser/cff$d;[BLcom/kingroot/kinguser/ceo$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYA:Lcom/kingroot/kinguser/cep;

.field final synthetic bYB:Lcom/kingroot/kinguser/cff$d;

.field final synthetic bYC:[B

.field final synthetic bYD:Lcom/kingroot/kinguser/ceo$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cep;Lcom/kingroot/kinguser/cff$d;[BLcom/kingroot/kinguser/ceo$a;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kingroot/kinguser/cep$2;->bYA:Lcom/kingroot/kinguser/cep;

    iput-object p2, p0, Lcom/kingroot/kinguser/cep$2;->bYB:Lcom/kingroot/kinguser/cff$d;

    iput-object p3, p0, Lcom/kingroot/kinguser/cep$2;->bYC:[B

    iput-object p4, p0, Lcom/kingroot/kinguser/cep$2;->bYD:Lcom/kingroot/kinguser/ceo$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 110
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 113
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/ceo;

    iget-object v1, p0, Lcom/kingroot/kinguser/cep$2;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-static {v1}, Lcom/kingroot/kinguser/cep;->e(Lcom/kingroot/kinguser/cep;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/kingroot/kinguser/cep$2;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-static {v3}, Lcom/kingroot/kinguser/cep;->f(Lcom/kingroot/kinguser/cep;)Lcom/kingroot/kinguser/ceu;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/cep$2;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-static {v4}, Lcom/kingroot/kinguser/cep;->g(Lcom/kingroot/kinguser/cep;)Lcom/kingroot/kinguser/cfu;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/cep$2;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-static {v5}, Lcom/kingroot/kinguser/cep;->h(Lcom/kingroot/kinguser/cep;)Z

    move-result v5

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/kingroot/kinguser/ceo;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/ceu;Lcom/kingroot/kinguser/cfu;Z)V

    iget-object v1, p0, Lcom/kingroot/kinguser/cep$2;->bYB:Lcom/kingroot/kinguser/cff$d;

    iget-object v3, p0, Lcom/kingroot/kinguser/cep$2;->bYC:[B

    invoke-virtual {v0, v1, v3, v2}, Lcom/kingroot/kinguser/ceo;->a(Lcom/kingroot/kinguser/cff$d;[BLjava/util/concurrent/atomic/AtomicReference;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 121
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/cep$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/kingroot/kinguser/cep$2$1;-><init>(Lcom/kingroot/kinguser/cep$2;I[B)V

    const-string v0, "shark-http-callback"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/cep$2;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-static {v0}, Lcom/kingroot/kinguser/cep;->a(Lcom/kingroot/kinguser/cep;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 133
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cep$2;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-static {v0}, Lcom/kingroot/kinguser/cep;->i(Lcom/kingroot/kinguser/cep;)I

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/cep$2;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-static {v0}, Lcom/kingroot/kinguser/cep;->c(Lcom/kingroot/kinguser/cep;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/cep$2;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-static {v0}, Lcom/kingroot/kinguser/cep;->j(Lcom/kingroot/kinguser/cep;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 116
    :catch_0
    move-exception v0

    const/16 v0, -0x4b0

    move v1, v0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
