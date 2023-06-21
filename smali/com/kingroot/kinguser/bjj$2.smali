.class Lcom/kingroot/kinguser/bjj$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjj;->p(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxe:Lcom/kingroot/kinguser/bjj;

.field final synthetic bxf:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjj;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/kingroot/kinguser/bjj$2;->bxe:Lcom/kingroot/kinguser/bjj;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjj$2;->bxf:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 270
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$2;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v1, v0, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$2;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjj$2;->bxf:Ljava/util/HashSet;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$2;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjj$2;->bxe:Lcom/kingroot/kinguser/bjj;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/kingroot/kinguser/bjj$2;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v4, v4, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bjj;->cb(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bjj;->j(Ljava/lang/Object;)V

    .line 274
    monitor-exit v1

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
