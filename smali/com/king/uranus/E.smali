.class public final Lcom/king/uranus/E;
.super Lcom/king/uranus/cS;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public cj:Ljava/lang/String;

.field public ck:Ljava/lang/String;

.field public cl:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/E;->cj:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/E;->ck:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/king/uranus/E;->type:I

    .line 17
    iput v1, p0, Lcom/king/uranus/E;->cl:I

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/E;->cj:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, v2, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/E;->ck:Ljava/lang/String;

    .line 34
    iget v0, p0, Lcom/king/uranus/E;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/E;->type:I

    .line 35
    iget v0, p0, Lcom/king/uranus/E;->cl:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/E;->cl:I

    .line 36
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/king/uranus/E;->cj:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 25
    iget-object v0, p0, Lcom/king/uranus/E;->ck:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 26
    iget v0, p0, Lcom/king/uranus/E;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 27
    iget v0, p0, Lcom/king/uranus/E;->cl:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 28
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
