.class Lcom/kingroot/kinguser/bgb$7;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bgb;->abt()V
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
    .line 269
    iput-object p1, p0, Lcom/kingroot/kinguser/bgb$7;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 272
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$7;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->a(Lcom/kingroot/kinguser/bgb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 275
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 279
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v2

    iget-object v3, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bfs;->lh(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bfs;->d(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    .line 281
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->dQ(Z)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$7;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->b(Lcom/kingroot/kinguser/bgb;)V

    .line 285
    return-void
.end method
