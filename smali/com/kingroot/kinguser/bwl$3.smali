.class Lcom/kingroot/kinguser/bwl$3;
.super Lcom/kingroot/kinguser/bwn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bwl;->aiP()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAf:I

.field final synthetic bRj:Lcom/kingroot/kinguser/bwl;

.field final synthetic bRk:I

.field final synthetic bRl:Landroid/util/SparseArray;

.field final synthetic bRm:Ljava/util/List;

.field final synthetic bRn:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bwl;IILandroid/util/SparseArray;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/kingroot/kinguser/bwl$3;->bRj:Lcom/kingroot/kinguser/bwl;

    iput p2, p0, Lcom/kingroot/kinguser/bwl$3;->bRk:I

    iput p3, p0, Lcom/kingroot/kinguser/bwl$3;->aAf:I

    iput-object p4, p0, Lcom/kingroot/kinguser/bwl$3;->bRl:Landroid/util/SparseArray;

    iput-object p5, p0, Lcom/kingroot/kinguser/bwl$3;->bRm:Ljava/util/List;

    iput p6, p0, Lcom/kingroot/kinguser/bwl$3;->bRn:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bwn;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 7

    .prologue
    .line 269
    .line 270
    const/4 v6, 0x1

    .line 273
    :try_start_0
    iget v0, p0, Lcom/kingroot/kinguser/bwl$3;->bRk:I

    iget v1, p0, Lcom/kingroot/kinguser/bwl$3;->aAf:I

    iget-object v2, p0, Lcom/kingroot/kinguser/bwl$3;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v2}, Lcom/kingroot/kinguser/bwl;->a(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bwk;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/kingroot/kinguser/bwl$3;->bRn:I

    iget-object v4, p0, Lcom/kingroot/kinguser/bwl$3;->bRl:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/kingroot/kinguser/bwl$3;->bRm:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bwm;->a(IILandroid/content/Context;ILandroid/util/SparseArray;Ljava/util/List;)Lcom/kingroot/kinguser/byi;

    move-result-object v1

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$3;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->h(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$3;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->h(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwi;

    move-result-object v0

    iget v2, p0, Lcom/kingroot/kinguser/bwl$3;->bRk:I

    iget v3, p0, Lcom/kingroot/kinguser/bwl$3;->aAf:I

    invoke-interface {v0, v2, v3, v1}, Lcom/kingroot/kinguser/bwi;->a(IILcom/kingroot/kinguser/byi;)Z

    move-result v0

    .line 281
    :goto_0
    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/kingroot/kinguser/bwt;->aiV()Lcom/kingroot/kinguser/bwt;

    move-result-object v0

    iget v2, p0, Lcom/kingroot/kinguser/bwl$3;->bRk:I

    iget v3, p0, Lcom/kingroot/kinguser/bwl$3;->aAf:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/kingroot/kinguser/bwt;->b(IILcom/kingroot/kinguser/byi;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_1
    return-void

    .line 284
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$3;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->f(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$3;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->f(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwp;

    move-result-object v0

    const-string v1, "stopTask"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-interface {v0, p1, v1, v2}, Lcom/kingroot/kinguser/bwp;->b(Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    .line 295
    :cond_0
    return-void
.end method
