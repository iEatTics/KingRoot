.class Lcom/kingroot/kinguser/ati$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/boo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ati;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aNT:Lcom/kingroot/kinguser/ati;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ati;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 186
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->a(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 193
    :cond_1
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 199
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->b(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 212
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->c(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 219
    :cond_1
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 225
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 227
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->d(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 232
    :cond_1
    return-void
.end method

.method public e(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 238
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->e(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 245
    :cond_1
    return-void
.end method

.method public f(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 251
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 253
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->f(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 258
    :cond_1
    return-void
.end method

.method public g(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 264
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->g(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 271
    :cond_1
    return-void
.end method

.method public h(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 279
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 281
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->h(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 286
    :cond_1
    return-void
.end method

.method public i(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 292
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 294
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->i(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 299
    :cond_1
    return-void
.end method

.method public j(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 305
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 307
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->j(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 312
    :cond_1
    return-void
.end method

.method public k(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 318
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 320
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->k(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 325
    :cond_1
    return-void
.end method

.method public l(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 331
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 333
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->l(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 338
    :cond_1
    return-void
.end method

.method public m(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/kingroot/kinguser/ati$1;->aNT:Lcom/kingroot/kinguser/ati;

    invoke-static {v0}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 344
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
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

    check-cast v0, Lcom/kingroot/kinguser/ati$a;

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ati$a;->m(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 351
    :cond_1
    return-void
.end method
