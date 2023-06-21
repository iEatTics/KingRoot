.class public final Lcom/king/uranus/p;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# instance fields
.field public bi:Ljava/lang/String;

.field public bj:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/p;->bi:Ljava/lang/String;

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/king/uranus/p;->bj:I

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
    invoke-virtual {p1, v1, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/p;->bi:Ljava/lang/String;

    .line 26
    iget v0, p0, Lcom/king/uranus/p;->bj:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/p;->bj:I

    .line 27
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 17
    iget-object v0, p0, Lcom/king/uranus/p;->bi:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 18
    iget v0, p0, Lcom/king/uranus/p;->bj:I

    if-eq v0, v2, :cond_0

    .line 19
    iget v0, p0, Lcom/king/uranus/p;->bj:I

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 21
    :cond_0
    return-void
.end method
