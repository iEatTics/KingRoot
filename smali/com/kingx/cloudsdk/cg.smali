.class public final Lcom/kingx/cloudsdk/cg;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# instance fields
.field public hG:I

.field public hH:I

.field public hI:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 17
    iput v0, p0, Lcom/kingx/cloudsdk/cg;->hG:I

    .line 18
    iput v0, p0, Lcom/kingx/cloudsdk/cg;->hH:I

    .line 19
    iput v0, p0, Lcom/kingx/cloudsdk/cg;->hI:I

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    iget v0, p0, Lcom/kingx/cloudsdk/cg;->hG:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/cg;->hG:I

    .line 33
    iget v0, p0, Lcom/kingx/cloudsdk/cg;->hH:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/cg;->hH:I

    .line 34
    iget v0, p0, Lcom/kingx/cloudsdk/cg;->hI:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/cg;->hI:I

    .line 35
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 25
    iget v0, p0, Lcom/kingx/cloudsdk/cg;->hG:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 26
    iget v0, p0, Lcom/kingx/cloudsdk/cg;->hH:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 27
    iget v0, p0, Lcom/kingx/cloudsdk/cg;->hI:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 28
    return-void
.end method
