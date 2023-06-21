.class Lcom/kingroot/kinguser/bwl$4;
.super Lcom/kingroot/kinguser/bwn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bwl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/bwq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bRj:Lcom/kingroot/kinguser/bwl;

.field final synthetic bRo:Lcom/kingroot/kinguser/bwq;

.field final synthetic bRp:Ljava/lang/String;

.field final synthetic yu:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bwl;Lcom/kingroot/kinguser/bwq;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/kingroot/kinguser/bwl$4;->bRj:Lcom/kingroot/kinguser/bwl;

    iput-object p2, p0, Lcom/kingroot/kinguser/bwl$4;->bRo:Lcom/kingroot/kinguser/bwq;

    iput-object p3, p0, Lcom/kingroot/kinguser/bwl$4;->yu:Landroid/content/Context;

    iput-object p4, p0, Lcom/kingroot/kinguser/bwl$4;->bRp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bwn;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 8

    .prologue
    .line 316
    invoke-static {}, Lcom/kingroot/kinguser/bwt;->aiV()Lcom/kingroot/kinguser/bwt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bwt;->aiY()Ljava/util/Map;

    move-result-object v2

    .line 317
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$4;->bRo:Lcom/kingroot/kinguser/bwq;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/bwq;->onError(I)V

    .line 374
    :cond_0
    return-void

    .line 322
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bxh;->ajA()Lcom/kingroot/kinguser/bxh;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bwl$4;->yu:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bxh;->ch(Landroid/content/Context;)Lcom/kingroot/kinguser/bym;

    move-result-object v3

    .line 323
    invoke-static {}, Lcom/kingroot/kinguser/bxl;->ajC()Lcom/kingroot/kinguser/bxl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bxl;->ajD()I

    move-result v4

    .line 325
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byi;

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/kingroot/kinguser/byi;->bTW:J

    .line 328
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl$4;->bRp:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/byi;->bTX:Ljava/lang/String;

    .line 330
    iput-object v3, v0, Lcom/kingroot/kinguser/byi;->bUi:Lcom/kingroot/kinguser/bym;

    .line 331
    iput v4, v0, Lcom/kingroot/kinguser/byi;->bUk:I

    .line 334
    invoke-static {}, Lcom/kingroot/kinguser/byc;->ajQ()Lcom/kingroot/kinguser/byc;

    move-result-object v1

    iget-object v6, p0, Lcom/kingroot/kinguser/bwl$4;->yu:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/kingroot/kinguser/byc;->cm(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    .line 335
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 336
    iget-object v1, v0, Lcom/kingroot/kinguser/byi;->bTY:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 339
    :cond_3
    const/4 v1, 0x0

    .line 342
    iget-object v7, p0, Lcom/kingroot/kinguser/bwl$4;->bRo:Lcom/kingroot/kinguser/bwq;

    instance-of v7, v7, Lcom/kingroot/kinguser/bwh;

    if-eqz v7, :cond_5

    .line 343
    iget-object v7, p0, Lcom/kingroot/kinguser/bwl$4;->bRj:Lcom/kingroot/kinguser/bwl;

    iget-object v1, p0, Lcom/kingroot/kinguser/bwl$4;->bRo:Lcom/kingroot/kinguser/bwq;

    check-cast v1, Lcom/kingroot/kinguser/bwh;

    invoke-static {v7, v1, v0}, Lcom/kingroot/kinguser/bwl;->a(Lcom/kingroot/kinguser/bwl;Lcom/kingroot/kinguser/bwh;Lcom/kingroot/kinguser/byi;)Z

    move-result v1

    .line 349
    :cond_4
    :goto_0
    if-eqz v1, :cond_2

    .line 354
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 359
    :catch_0
    move-exception v0

    goto :goto_1

    .line 345
    :cond_5
    iget-object v7, p0, Lcom/kingroot/kinguser/bwl$4;->bRo:Lcom/kingroot/kinguser/bwq;

    instance-of v7, v7, Lcom/kingroot/kinguser/bwj;

    if-eqz v7, :cond_4

    .line 346
    iget-object v7, p0, Lcom/kingroot/kinguser/bwl$4;->bRj:Lcom/kingroot/kinguser/bwl;

    iget-object v1, p0, Lcom/kingroot/kinguser/bwl$4;->bRo:Lcom/kingroot/kinguser/bwq;

    check-cast v1, Lcom/kingroot/kinguser/bwj;

    invoke-static {v7, v1, v0}, Lcom/kingroot/kinguser/bwl;->a(Lcom/kingroot/kinguser/bwl;Lcom/kingroot/kinguser/bwj;Lcom/kingroot/kinguser/byi;)Z

    move-result v1

    goto :goto_0

    .line 364
    :cond_6
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 369
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$4;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->f(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$4;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->f(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwp;

    move-result-object v0

    const-string v1, "identify"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-interface {v0, p1, v1, v2}, Lcom/kingroot/kinguser/bwp;->b(Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    .line 381
    :cond_0
    return-void
.end method
