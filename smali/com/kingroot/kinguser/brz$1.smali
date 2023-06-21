.class Lcom/kingroot/kinguser/brz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/brp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/brz;->a(Ljava/util/ArrayList;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bLl:Lcom/kingroot/kinguser/brz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/brz;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/brz$1;->bLl:Lcom/kingroot/kinguser/brz;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsc;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 151
    if-eqz p2, :cond_0

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahL()Lcom/kingroot/kinguser/bsb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bsb;->ck(Ljava/util/List;)V

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/brz$1;->bLl:Lcom/kingroot/kinguser/brz;

    invoke-static {v0}, Lcom/kingroot/kinguser/brz;->a(Lcom/kingroot/kinguser/brz;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/brz;->a(Lcom/kingroot/kinguser/brz;I)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brz$1;->bLl:Lcom/kingroot/kinguser/brz;

    invoke-static {v0}, Lcom/kingroot/kinguser/brz;->b(Lcom/kingroot/kinguser/brz;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brz$1;->bLl:Lcom/kingroot/kinguser/brz;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/brz;->a(Lcom/kingroot/kinguser/brz;Z)V

    .line 157
    monitor-exit v1

    .line 160
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
