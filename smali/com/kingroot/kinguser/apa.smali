.class public abstract Lcom/kingroot/kinguser/apa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/boo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/apa$a;,
        Lcom/kingroot/kinguser/apa$b;
    }
.end annotation


# instance fields
.field protected aGX:Lcom/kingroot/kinguser/bol;

.field protected final aGY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kingroot/kinguser/bom;",
            "Ljava/util/Map",
            "<",
            "Lcom/kingroot/kinguser/apa$a;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final axW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kingroot/kinguser/bom;",
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/kinguser/apa$b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/apa;->aGX:Lcom/kingroot/kinguser/bol;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/apa;->axW:Ljava/util/Map;

    .line 42
    invoke-static {}, Lcom/kingroot/kinguser/bnu;->agu()Lcom/kingroot/kinguser/bol;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/apa;->aGX:Lcom/kingroot/kinguser/bol;

    .line 43
    return-void
.end method

.method private declared-synchronized a(Lcom/kingroot/kinguser/bom;Lcom/kingroot/kinguser/apa$a;)V
    .locals 2

    .prologue
    .line 450
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 459
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 453
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 454
    if-nez v0, :cond_2

    .line 455
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 457
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v1, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lcom/kingroot/kinguser/apa$b;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p1, Lcom/kingroot/kinguser/apa$b;->aHa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/apa$b;->aHa:Ljava/lang/String;

    goto :goto_0
.end method

.method private c(Lcom/kingroot/kinguser/apa$b;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/apa;->b(Lcom/kingroot/kinguser/apa$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p1, Lcom/kingroot/kinguser/apa$b;->aGZ:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/apa;->hJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/kingroot/kinguser/apa$b;)Lcom/kingroot/kinguser/bom;
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/apa;->a(Lcom/kingroot/kinguser/apa$b;)Lcom/kingroot/kinguser/bom;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/kingroot/kinguser/apa;->aGX:Lcom/kingroot/kinguser/bol;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bol;->o(Lcom/kingroot/kinguser/bom;)V

    .line 227
    return-object v0
.end method


# virtual methods
.method public KP()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/apa;->axW:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected abstract Kv()Z
.end method

.method protected a(Lcom/kingroot/kinguser/apa$b;)Lcom/kingroot/kinguser/bom;
    .locals 10

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/apa;->b(Lcom/kingroot/kinguser/apa$b;)Ljava/lang/String;

    move-result-object v5

    .line 164
    iget-object v0, p1, Lcom/kingroot/kinguser/apa$b;->aGZ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/apa;->hJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    iget-object v1, p0, Lcom/kingroot/kinguser/apa;->aGX:Lcom/kingroot/kinguser/bol;

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/kingroot/kinguser/apa$b;->url:Ljava/lang/String;

    const-wide/16 v8, -0x1

    move-object v7, p0

    invoke-interface/range {v1 .. v9}, Lcom/kingroot/kinguser/bol;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/boo;J)Lcom/kingroot/kinguser/bom;

    move-result-object v1

    .line 166
    sget-object v0, Lcom/kingroot/kinguser/bop;->bFw:Lcom/kingroot/kinguser/bop;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bom;->a(Lcom/kingroot/kinguser/bop;)V

    .line 167
    invoke-virtual {p0}, Lcom/kingroot/kinguser/apa;->Kv()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bon;->bFr:Lcom/kingroot/kinguser/bon;

    :goto_0
    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bom;->a(Lcom/kingroot/kinguser/bon;)V

    .line 168
    return-object v1

    .line 167
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bon;->bFq:Lcom/kingroot/kinguser/bon;

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/apa$b;Lcom/kingroot/kinguser/apa$a;)Lcom/kingroot/kinguser/bom;
    .locals 4
    .param p1    # Lcom/kingroot/kinguser/apa$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/apa$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 184
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/apa$b;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 219
    :goto_0
    return-object v0

    .line 191
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/kingroot/kinguser/apa$b;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/apa;->hX(Ljava/lang/String;)Lcom/kingroot/kinguser/bom;

    move-result-object v0

    .line 192
    if-nez v0, :cond_2

    .line 195
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/apa;->c(Lcom/kingroot/kinguser/apa$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/apa;->hZ(Ljava/lang/String;)Lcom/kingroot/kinguser/bom;

    move-result-object v0

    .line 198
    :cond_2
    if-nez v0, :cond_4

    .line 199
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/apa;->d(Lcom/kingroot/kinguser/apa$b;)Lcom/kingroot/kinguser/bom;

    move-result-object v0

    .line 213
    :cond_3
    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/kingroot/kinguser/apa;->a(Lcom/kingroot/kinguser/bom;Lcom/kingroot/kinguser/apa$a;)V

    .line 214
    invoke-virtual {p0, v0, p1}, Lcom/kingroot/kinguser/apa;->a(Lcom/kingroot/kinguser/bom;Lcom/kingroot/kinguser/apa$b;)V

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 219
    goto :goto_0

    .line 202
    :cond_4
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->isRunning()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_5

    .line 203
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->agF()Z

    .line 208
    :cond_5
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    iget-object v2, p0, Lcom/kingroot/kinguser/apa;->aGX:Lcom/kingroot/kinguser/bol;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/kingroot/kinguser/bol;->a(Lcom/kingroot/kinguser/bom;Z)V

    .line 210
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/apa;->d(Lcom/kingroot/kinguser/apa$b;)Lcom/kingroot/kinguser/bom;
    :try_end_0
    .catch Lcom/kingroot/kinguser/bnx; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 268
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 270
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->a(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 275
    :cond_1
    return-void
.end method

.method declared-synchronized a(Lcom/kingroot/kinguser/bom;Lcom/kingroot/kinguser/apa$b;)V
    .locals 2

    .prologue
    .line 438
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 447
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 441
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->axW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 442
    if-nez v0, :cond_2

    .line 443
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 445
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v1, p0, Lcom/kingroot/kinguser/apa;->axW:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 281
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->b(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 288
    :cond_1
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 294
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 296
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->c(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 301
    :cond_1
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 307
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->d(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 314
    :cond_1
    return-void
.end method

.method public e(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 320
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 322
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->e(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 327
    :cond_1
    return-void
.end method

.method public f(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 333
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 335
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->f(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 340
    :cond_1
    return-void
.end method

.method public g(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 346
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 347
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 348
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->g(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 353
    :cond_1
    return-void
.end method

.method public h(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 361
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 363
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->h(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 368
    :cond_1
    return-void
.end method

.method protected abstract hJ(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public hK(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/apa;->hX(Ljava/lang/String;)Lcom/kingroot/kinguser/bom;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->pause()V

    .line 108
    :cond_0
    return-void
.end method

.method public hL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/apa;->hX(Ljava/lang/String;)Lcom/kingroot/kinguser/bom;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->agF()Z

    .line 120
    :cond_0
    return-void
.end method

.method public hX(Ljava/lang/String;)Lcom/kingroot/kinguser/bom;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, v2

    .line 73
    :goto_0
    return-object v1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGX:Lcom/kingroot/kinguser/bol;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bol;->agC()Ljava/util/List;

    move-result-object v0

    .line 63
    if-nez v0, :cond_1

    move-object v1, v2

    .line 64
    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 67
    instance-of v0, v1, Lcom/kingroot/kinguser/bom;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 68
    check-cast v0, Lcom/kingroot/kinguser/bom;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    check-cast v1, Lcom/kingroot/kinguser/bom;

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 73
    goto :goto_0
.end method

.method public hY(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->axW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bom;

    .line 81
    iget-object v1, p0, Lcom/kingroot/kinguser/apa;->axW:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 82
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/apa$b;

    .line 83
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/kingroot/kinguser/apa$b;->tag:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_2
    return-object v2
.end method

.method public hZ(Ljava/lang/String;)Lcom/kingroot/kinguser/bom;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, v2

    .line 246
    :goto_0
    return-object v1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGX:Lcom/kingroot/kinguser/bol;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bol;->agC()Ljava/util/List;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 240
    instance-of v0, v1, Lcom/kingroot/kinguser/bom;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 241
    check-cast v0, Lcom/kingroot/kinguser/bom;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->KI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    check-cast v1, Lcom/kingroot/kinguser/bom;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 246
    goto :goto_0
.end method

.method public i(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 376
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 377
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 378
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->i(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 383
    :cond_1
    return-void
.end method

.method public j(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 389
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 391
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->j(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 396
    :cond_1
    return-void
.end method

.method public k(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 402
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 404
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->k(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 409
    :cond_1
    return-void
.end method

.method public declared-synchronized k(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingroot/kinguser/bom;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bom;

    .line 468
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->isPaused()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    :try_start_1
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->agF()Z
    :try_end_1
    .catch Lcom/kingroot/kinguser/bnx; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    goto :goto_0

    .line 476
    :cond_1
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 415
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 417
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->l(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 422
    :cond_1
    return-void
.end method

.method public m(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 428
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 430
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->m(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 435
    :cond_1
    return-void
.end method

.method public z(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->aGX:Lcom/kingroot/kinguser/bol;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bol;->agC()Ljava/util/List;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 141
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 143
    instance-of v0, v1, Lcom/kingroot/kinguser/bom;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 144
    check-cast v0, Lcom/kingroot/kinguser/bom;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v3, p0, Lcom/kingroot/kinguser/apa;->aGX:Lcom/kingroot/kinguser/bol;

    move-object v0, v1

    check-cast v0, Lcom/kingroot/kinguser/bom;

    invoke-interface {v3, v0, p2}, Lcom/kingroot/kinguser/bol;->a(Lcom/kingroot/kinguser/bom;Z)V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/apa;->axW:Ljava/util/Map;

    check-cast v1, Lcom/kingroot/kinguser/bom;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
