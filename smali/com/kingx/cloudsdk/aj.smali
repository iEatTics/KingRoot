.class public final Lcom/kingx/cloudsdk/aj;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# instance fields
.field public cy:I

.field public ei:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 15
    iput v0, p0, Lcom/kingx/cloudsdk/aj;->ei:I

    .line 16
    iput v0, p0, Lcom/kingx/cloudsdk/aj;->cy:I

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    iget v0, p0, Lcom/kingx/cloudsdk/aj;->ei:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/aj;->ei:I

    .line 31
    iget v0, p0, Lcom/kingx/cloudsdk/aj;->cy:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/aj;->cy:I

    .line 32
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/kingx/cloudsdk/aj;->ei:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 23
    iget v0, p0, Lcom/kingx/cloudsdk/aj;->cy:I

    if-eqz v0, :cond_0

    .line 24
    iget v0, p0, Lcom/kingx/cloudsdk/aj;->cy:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 26
    :cond_0
    return-void
.end method
