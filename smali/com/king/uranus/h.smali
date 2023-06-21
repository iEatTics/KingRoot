.class public final Lcom/king/uranus/h;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# instance fields
.field public av:I

.field public ax:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    iput v0, p0, Lcom/king/uranus/h;->av:I

    .line 11
    iput v0, p0, Lcom/king/uranus/h;->ax:I

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23
    iget v0, p0, Lcom/king/uranus/h;->av:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/h;->av:I

    .line 24
    iget v0, p0, Lcom/king/uranus/h;->ax:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/h;->ax:I

    .line 25
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Lcom/king/uranus/h;->av:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 18
    iget v0, p0, Lcom/king/uranus/h;->ax:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 19
    return-void
.end method
