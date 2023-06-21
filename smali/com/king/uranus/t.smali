.class public final Lcom/king/uranus/t;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# instance fields
.field public bp:I

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    iput v0, p0, Lcom/king/uranus/t;->bp:I

    .line 11
    iput v0, p0, Lcom/king/uranus/t;->s:I

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    iget v0, p0, Lcom/king/uranus/t;->bp:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/t;->bp:I

    .line 26
    iget v0, p0, Lcom/king/uranus/t;->s:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/t;->s:I

    .line 27
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Lcom/king/uranus/t;->bp:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 18
    iget v0, p0, Lcom/king/uranus/t;->s:I

    if-eqz v0, :cond_0

    .line 19
    iget v0, p0, Lcom/king/uranus/t;->s:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 21
    :cond_0
    return-void
.end method
