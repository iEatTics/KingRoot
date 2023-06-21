.class Lcom/kingroot/kinguser/brk$2;
.super Lcom/kingroot/kinguser/brb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/brk;->a(Lcom/tencent/qqpim/discovery/AdRequestData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bJZ:Lcom/kingroot/kinguser/brk;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/brk;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/brk$2;->bJZ:Lcom/kingroot/kinguser/brk;

    .line 240
    invoke-direct {p0}, Lcom/kingroot/kinguser/brb;-><init>()V

    return-void
.end method


# virtual methods
.method public i(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpim/discovery/AdDisplayModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$2;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0}, Lcom/kingroot/kinguser/brk;->b(Lcom/kingroot/kinguser/brk;)Lcom/kingroot/kinguser/brt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brt;->reset()V

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$2;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0}, Lcom/kingroot/kinguser/brk;->c(Lcom/kingroot/kinguser/brk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$2;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brk;Ljava/util/List;)V

    .line 246
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$2;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brk;)Lcom/kingroot/kinguser/brd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {p2}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$2;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brk;)Lcom/kingroot/kinguser/brd;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brk$2;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-interface {v0, v1, p1}, Lcom/kingroot/kinguser/brd;->a(Lcom/kingroot/kinguser/brc;I)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 246
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$2;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brk;)Lcom/kingroot/kinguser/brd;

    move-result-object v0

    instance-of v0, v0, Lcom/kingroot/kinguser/brf;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$2;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brk;)Lcom/kingroot/kinguser/brd;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/brf;

    iget-object v1, p0, Lcom/kingroot/kinguser/brk$2;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-interface {v0, v1, p2}, Lcom/kingroot/kinguser/brf;->a(Lcom/kingroot/kinguser/brc;Ljava/util/List;)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/brk$2;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-static {v0}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brk;)Lcom/kingroot/kinguser/brd;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brk$2;->bJZ:Lcom/kingroot/kinguser/brk;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/brd;->a(Lcom/kingroot/kinguser/brc;)V

    goto :goto_0
.end method
