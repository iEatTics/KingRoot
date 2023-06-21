.class public final Lcom/king/uranus/u;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# instance fields
.field public bq:I

.field public br:I

.field public bs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    iput v0, p0, Lcom/king/uranus/u;->bq:I

    .line 11
    iput v0, p0, Lcom/king/uranus/u;->br:I

    .line 12
    iput v0, p0, Lcom/king/uranus/u;->bs:I

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget v0, p0, Lcom/king/uranus/u;->bq:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/u;->bq:I

    .line 32
    iget v0, p0, Lcom/king/uranus/u;->br:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/u;->br:I

    .line 33
    iget v0, p0, Lcom/king/uranus/u;->bs:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/u;->bs:I

    .line 34
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/king/uranus/u;->bq:I

    if-eqz v0, :cond_0

    .line 19
    iget v0, p0, Lcom/king/uranus/u;->bq:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 21
    :cond_0
    iget v0, p0, Lcom/king/uranus/u;->br:I

    if-eqz v0, :cond_1

    .line 22
    iget v0, p0, Lcom/king/uranus/u;->br:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 24
    :cond_1
    iget v0, p0, Lcom/king/uranus/u;->bs:I

    if-eqz v0, :cond_2

    .line 25
    iget v0, p0, Lcom/king/uranus/u;->bs:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 27
    :cond_2
    return-void
.end method
