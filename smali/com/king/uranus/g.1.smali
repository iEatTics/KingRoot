.class public final Lcom/king/uranus/g;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# static fields
.field static xJ:[B


# instance fields
.field public at:I

.field public au:[B

.field public av:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    iput v1, p0, Lcom/king/uranus/g;->at:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/king/uranus/g;->au:[B

    .line 12
    iput v1, p0, Lcom/king/uranus/g;->av:I

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 26
    iget v0, p0, Lcom/king/uranus/g;->at:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/g;->at:I

    .line 27
    sget-object v0, Lcom/king/uranus/g;->xJ:[B

    if-nez v0, :cond_0

    .line 28
    new-array v0, v2, [B

    sput-object v0, Lcom/king/uranus/g;->xJ:[B

    .line 30
    sget-object v0, Lcom/king/uranus/g;->xJ:[B

    aput-byte v1, v0, v1

    .line 32
    :cond_0
    sget-object v0, Lcom/king/uranus/g;->xJ:[B

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/mq;->a([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/g;->au:[B

    .line 33
    iget v0, p0, Lcom/king/uranus/g;->av:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/g;->av:I

    .line 34
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/king/uranus/g;->at:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 19
    iget-object v0, p0, Lcom/king/uranus/g;->au:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a([BI)V

    .line 20
    iget v0, p0, Lcom/king/uranus/g;->av:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 21
    return-void
.end method
