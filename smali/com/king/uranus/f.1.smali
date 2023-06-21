.class public final Lcom/king/uranus/f;
.super Lcom/king/uranus/cS;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static qF:[B


# instance fields
.field public am:I

.field public an:[B

.field public ao:I

.field public ap:I

.field public aq:I

.field public ar:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 14
    iput v1, p0, Lcom/king/uranus/f;->am:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/king/uranus/f;->an:[B

    .line 16
    iput v1, p0, Lcom/king/uranus/f;->ao:I

    .line 17
    iput v1, p0, Lcom/king/uranus/f;->ap:I

    .line 18
    iput v1, p0, Lcom/king/uranus/f;->aq:I

    .line 19
    iput v1, p0, Lcom/king/uranus/f;->ar:I

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    iget v0, p0, Lcom/king/uranus/f;->am:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/f;->am:I

    .line 45
    sget-object v0, Lcom/king/uranus/f;->qF:[B

    if-nez v0, :cond_0

    .line 46
    new-array v0, v3, [B

    sput-object v0, Lcom/king/uranus/f;->qF:[B

    .line 48
    sget-object v0, Lcom/king/uranus/f;->qF:[B

    aput-byte v2, v0, v2

    .line 50
    :cond_0
    sget-object v0, Lcom/king/uranus/f;->qF:[B

    invoke-virtual {p1, v0, v3, v3}, Lcom/kingroot/kinguser/mq;->a([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/f;->an:[B

    .line 51
    iget v0, p0, Lcom/king/uranus/f;->ao:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/f;->ao:I

    .line 52
    iget v0, p0, Lcom/king/uranus/f;->ap:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/f;->ap:I

    .line 53
    iget v0, p0, Lcom/king/uranus/f;->aq:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/f;->aq:I

    .line 54
    iget v0, p0, Lcom/king/uranus/f;->ar:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/f;->ar:I

    .line 55
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/king/uranus/f;->am:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 29
    iget-object v0, p0, Lcom/king/uranus/f;->an:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a([BI)V

    .line 30
    iget v0, p0, Lcom/king/uranus/f;->ao:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 31
    iget v0, p0, Lcom/king/uranus/f;->ap:I

    if-eqz v0, :cond_0

    .line 32
    iget v0, p0, Lcom/king/uranus/f;->ap:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 34
    :cond_0
    iget v0, p0, Lcom/king/uranus/f;->aq:I

    if-eqz v0, :cond_1

    .line 35
    iget v0, p0, Lcom/king/uranus/f;->aq:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 37
    :cond_1
    iget v0, p0, Lcom/king/uranus/f;->ar:I

    if-eqz v0, :cond_2

    .line 38
    iget v0, p0, Lcom/king/uranus/f;->ar:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 40
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
