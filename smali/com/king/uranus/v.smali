.class public final Lcom/king/uranus/v;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# instance fields
.field public bt:I

.field public bu:I

.field public bv:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    iput v0, p0, Lcom/king/uranus/v;->bt:I

    .line 11
    iput v0, p0, Lcom/king/uranus/v;->bu:I

    .line 12
    iput v0, p0, Lcom/king/uranus/v;->bv:I

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 25
    iget v0, p0, Lcom/king/uranus/v;->bt:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/v;->bt:I

    .line 26
    iget v0, p0, Lcom/king/uranus/v;->bu:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/v;->bu:I

    .line 27
    iget v0, p0, Lcom/king/uranus/v;->bv:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/v;->bv:I

    .line 28
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/king/uranus/v;->bt:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 19
    iget v0, p0, Lcom/king/uranus/v;->bu:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 20
    iget v0, p0, Lcom/king/uranus/v;->bv:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 21
    return-void
.end method
