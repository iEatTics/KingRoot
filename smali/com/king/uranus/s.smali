.class public final Lcom/king/uranus/s;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# instance fields
.field public bm:I

.field public bn:I

.field public bo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    iput v0, p0, Lcom/king/uranus/s;->bm:I

    .line 11
    iput v0, p0, Lcom/king/uranus/s;->bn:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/s;->bo:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    iget v0, p0, Lcom/king/uranus/s;->bm:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/s;->bm:I

    .line 30
    iget v0, p0, Lcom/king/uranus/s;->bn:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/s;->bn:I

    .line 31
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/s;->bo:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/king/uranus/s;->bm:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 19
    iget v0, p0, Lcom/king/uranus/s;->bn:I

    if-eqz v0, :cond_0

    .line 20
    iget v0, p0, Lcom/king/uranus/s;->bn:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/king/uranus/s;->bo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/king/uranus/s;->bo:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 25
    :cond_1
    return-void
.end method
