.class Lcom/kingroot/kinguser/bjb$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjb;->b(Lcom/kingroot/kinguser/bjb$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bvB:Lcom/kingroot/kinguser/bjb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjb;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/kingroot/kinguser/bjb$1;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 460
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 464
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb$1;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/bjb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 465
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjb$1;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-static {v2}, Lcom/kingroot/kinguser/bjb;->c(Lcom/kingroot/kinguser/bjb;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 466
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb$1;->bvB:Lcom/kingroot/kinguser/bjb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjb;->c(Lcom/kingroot/kinguser/bjb;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 467
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-static {}, Lcom/kingroot/kinguser/aeu;->isWodAvailible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-static {}, Lcom/kingroot/kinguser/aeu;->uG()V

    .line 479
    :goto_0
    return-void

    .line 467
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 474
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aeu;->uH()V

    goto :goto_0
.end method
