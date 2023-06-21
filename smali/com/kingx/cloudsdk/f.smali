.class public final Lcom/kingx/cloudsdk/f;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# instance fields
.field private aK:I

.field private aL:I

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingx/cloudsdk/f;->id:I

    .line 11
    iput v0, p0, Lcom/kingx/cloudsdk/f;->aK:I

    .line 12
    iput v0, p0, Lcom/kingx/cloudsdk/f;->aL:I

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 25
    iget v0, p0, Lcom/kingx/cloudsdk/f;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/f;->id:I

    .line 26
    iget v0, p0, Lcom/kingx/cloudsdk/f;->aK:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/f;->aK:I

    .line 27
    iget v0, p0, Lcom/kingx/cloudsdk/f;->aL:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/f;->aL:I

    .line 28
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/kingx/cloudsdk/f;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 19
    iget v0, p0, Lcom/kingx/cloudsdk/f;->aK:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 20
    iget v0, p0, Lcom/kingx/cloudsdk/f;->aL:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 21
    return-void
.end method
