.class Lcom/kingroot/kinguser/ht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ic$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/ic$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic qQ:Lcom/kingroot/kinguser/hs;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/hs;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/kingroot/kinguser/ht;->qQ:Lcom/kingroot/kinguser/hs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 487
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    iget-object v0, p0, Lcom/kingroot/kinguser/ht;->qQ:Lcom/kingroot/kinguser/hs;

    iget-object v0, v0, Lcom/kingroot/kinguser/hs;->qP:Lcom/kingroot/kinguser/hb;

    invoke-static {v0}, Lcom/kingroot/kinguser/hb;->b(Lcom/kingroot/kinguser/hb;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/i;

    .line 491
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/ht;->qQ:Lcom/kingroot/kinguser/hs;

    iget-object v3, v3, Lcom/kingroot/kinguser/hs;->qP:Lcom/kingroot/kinguser/hb;

    invoke-static {v3, v0}, Lcom/kingroot/kinguser/hb;->a(Lcom/kingroot/kinguser/hb;Lcom/king/uranus/i;)Ljava/util/List;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_0

    .line 494
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    goto :goto_0

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ht;->qQ:Lcom/kingroot/kinguser/hs;

    iget-object v0, v0, Lcom/kingroot/kinguser/hs;->qP:Lcom/kingroot/kinguser/hb;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/hb;->d(Lcom/kingroot/kinguser/hb;Ljava/util/List;)V

    .line 503
    iget-object v0, p0, Lcom/kingroot/kinguser/ht;->qQ:Lcom/kingroot/kinguser/hs;

    iget-object v0, v0, Lcom/kingroot/kinguser/hs;->qP:Lcom/kingroot/kinguser/hb;

    invoke-static {v0}, Lcom/kingroot/kinguser/hb;->b(Lcom/kingroot/kinguser/hb;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 504
    const/4 v0, 0x0

    return-object v0
.end method
