.class Lcom/kingroot/kinguser/bgb$8;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bgb;->abu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic boE:Lcom/kingroot/kinguser/bgb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bgb;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/kingroot/kinguser/bgb$8;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 293
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 294
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$8;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->a(Lcom/kingroot/kinguser/bgb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 295
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 298
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    .line 299
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bfs;->e(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    .line 300
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->dQ(Z)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$8;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->b(Lcom/kingroot/kinguser/bgb;)V

    .line 304
    return-void
.end method
