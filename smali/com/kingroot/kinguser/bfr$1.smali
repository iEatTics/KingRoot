.class Lcom/kingroot/kinguser/bfr$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bns:Lcom/kingroot/kinguser/bfr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfr;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kingroot/kinguser/bfr$1;->bns:Lcom/kingroot/kinguser/bfr;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/bfr$1;->bns:Lcom/kingroot/kinguser/bfr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfr;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 92
    iget-object v3, p0, Lcom/kingroot/kinguser/bfr$1;->bns:Lcom/kingroot/kinguser/bfr;

    invoke-static {v3, v0}, Lcom/kingroot/kinguser/bfr;->a(Lcom/kingroot/kinguser/bfr;Lcom/kingroot/kinguser/bq;)Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;

    move-result-object v0

    .line 93
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfr$1;->bns:Lcom/kingroot/kinguser/bfr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfr;->a(Lcom/kingroot/kinguser/bfr;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfr$1;->bns:Lcom/kingroot/kinguser/bfr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfr;->b(Lcom/kingroot/kinguser/bfr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/bfr$1;->bns:Lcom/kingroot/kinguser/bfr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfr;->b(Lcom/kingroot/kinguser/bfr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/bfr$1;->bns:Lcom/kingroot/kinguser/bfr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfr;->c(Lcom/kingroot/kinguser/bfr;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfr$1;->bns:Lcom/kingroot/kinguser/bfr;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfr;->b(Lcom/kingroot/kinguser/bfr;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfp;->bP(Ljava/util/List;)V

    .line 107
    return-void

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
