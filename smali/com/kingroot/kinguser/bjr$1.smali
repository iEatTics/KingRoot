.class Lcom/kingroot/kinguser/bjr$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjr;->ael()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byr:Lcom/kingroot/kinguser/bjr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$1;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 310
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 312
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$1;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->a(Lcom/kingroot/kinguser/bjr;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$1;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->b(Lcom/kingroot/kinguser/bjr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$1;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->c(Lcom/kingroot/kinguser/bjr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjj;

    check-cast v0, Lcom/kingroot/kinguser/bjj;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$1;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v1}, Lcom/kingroot/kinguser/bjr;->a(Lcom/kingroot/kinguser/bjr;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjj;->bZ(Ljava/util/List;)V

    .line 313
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 319
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    if-nez v0, :cond_2

    .line 349
    :cond_1
    :goto_1
    return-void

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$1;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->d(Lcom/kingroot/kinguser/bjr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ym;

    .line 327
    instance-of v2, v0, Lcom/kingroot/kinguser/bjj;

    if-eqz v2, :cond_3

    .line 331
    check-cast v0, Lcom/kingroot/kinguser/bjj;

    .line 332
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjj;->adZ()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$1;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v1}, Lcom/kingroot/kinguser/bjr;->e(Lcom/kingroot/kinguser/bjr;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 338
    :goto_2
    if-eq v0, v3, :cond_1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$1;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v1}, Lcom/kingroot/kinguser/bjr;->f(Lcom/kingroot/kinguser/bjr;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 343
    new-instance v1, Lcom/kingroot/kinguser/bjr$1$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/bjr$1$1;-><init>(Lcom/kingroot/kinguser/bjr$1;I)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2
.end method
