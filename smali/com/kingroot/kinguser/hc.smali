.class Lcom/kingroot/kinguser/hc;
.super Lcom/kingroot/kinguser/mg;
.source "SourceFile"


# instance fields
.field final synthetic qP:Lcom/kingroot/kinguser/hb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/hb;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/kingroot/kinguser/hc;->qP:Lcom/kingroot/kinguser/hb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/mg;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/hc;->qP:Lcom/kingroot/kinguser/hb;

    invoke-static {v0}, Lcom/kingroot/kinguser/hb;->a(Lcom/kingroot/kinguser/hb;)Lcom/king/uranus/A;

    move-result-object v0

    .line 116
    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, v0, Lcom/king/uranus/A;->a:Ljava/util/ArrayList;

    .line 122
    iget-object v1, p0, Lcom/kingroot/kinguser/hc;->qP:Lcom/kingroot/kinguser/hb;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/hb;->a(Lcom/kingroot/kinguser/hb;Ljava/util/List;)V

    .line 125
    iget-object v1, p0, Lcom/kingroot/kinguser/hc;->qP:Lcom/kingroot/kinguser/hb;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/hb;->b(Lcom/kingroot/kinguser/hb;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/kingroot/kinguser/hc;->qP:Lcom/kingroot/kinguser/hb;

    invoke-static {v2}, Lcom/kingroot/kinguser/hb;->b(Lcom/kingroot/kinguser/hb;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/kingroot/kinguser/hc;->qP:Lcom/kingroot/kinguser/hb;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/hb;->c(Lcom/kingroot/kinguser/hb;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/kingroot/kinguser/hc;->qP:Lcom/kingroot/kinguser/hb;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/hb;->d(Lcom/kingroot/kinguser/hb;Ljava/util/List;)V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/hc;->qP:Lcom/kingroot/kinguser/hb;

    invoke-static {v0}, Lcom/kingroot/kinguser/hb;->b(Lcom/kingroot/kinguser/hb;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/hc;->qP:Lcom/kingroot/kinguser/hb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/hb;->h()V

    goto :goto_0
.end method
