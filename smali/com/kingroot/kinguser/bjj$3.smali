.class Lcom/kingroot/kinguser/bjj$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjj;->d(Lcom/kingroot/kinguser/aex$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxe:Lcom/kingroot/kinguser/bjj;

.field final synthetic bxg:Lcom/kingroot/kinguser/aex$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjj;Lcom/kingroot/kinguser/aex$a;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/kingroot/kinguser/bjj$3;->bxe:Lcom/kingroot/kinguser/bjj;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjj$3;->bxg:Lcom/kingroot/kinguser/aex$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 288
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$3;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v1, v0, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    monitor-enter v1

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$3;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjj$3;->bxg:Lcom/kingroot/kinguser/aex$a;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$3;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjj$3;->bxe:Lcom/kingroot/kinguser/bjj;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/kingroot/kinguser/bjj$3;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v4, v4, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bjj;->cb(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bjj;->j(Ljava/lang/Object;)V

    .line 292
    monitor-exit v1

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
