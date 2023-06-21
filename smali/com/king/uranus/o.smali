.class public final Lcom/king/uranus/o;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# instance fields
.field public be:I

.field public bf:Ljava/lang/String;

.field public bg:Ljava/lang/String;

.field public bh:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/o;->url:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/king/uranus/o;->be:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/o;->bf:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/o;->bg:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/o;->bh:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v2, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/o;->url:Ljava/lang/String;

    .line 38
    iget v0, p0, Lcom/king/uranus/o;->be:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/o;->be:I

    .line 39
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/o;->bf:Ljava/lang/String;

    .line 40
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/o;->bg:Ljava/lang/String;

    .line 41
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/o;->bh:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/king/uranus/o;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/king/uranus/o;->url:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 23
    :cond_0
    iget v0, p0, Lcom/king/uranus/o;->be:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 24
    iget-object v0, p0, Lcom/king/uranus/o;->bf:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/king/uranus/o;->bf:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/king/uranus/o;->bg:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/king/uranus/o;->bg:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/king/uranus/o;->bh:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/king/uranus/o;->bh:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 33
    :cond_3
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
