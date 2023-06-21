.class public final Lcom/king/uranus/j;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# static fields
.field static xO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/h;",
            ">;"
        }
    .end annotation
.end field

.field public aH:I

.field public aI:I

.field public aJ:I

.field public action:I

.field public ax:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/j;->f:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/king/uranus/j;->action:I

    .line 12
    iput v1, p0, Lcom/king/uranus/j;->ax:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/king/uranus/j;->aG:Ljava/util/ArrayList;

    .line 14
    iput v1, p0, Lcom/king/uranus/j;->aH:I

    .line 15
    iput v1, p0, Lcom/king/uranus/j;->aI:I

    .line 16
    iput v1, p0, Lcom/king/uranus/j;->aJ:I

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 40
    invoke-virtual {p1, v2, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/j;->f:Ljava/lang/String;

    .line 41
    iget v0, p0, Lcom/king/uranus/j;->action:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/j;->action:I

    .line 42
    iget v0, p0, Lcom/king/uranus/j;->ax:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/j;->ax:I

    .line 43
    sget-object v0, Lcom/king/uranus/j;->xO:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/king/uranus/j;->xO:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/king/uranus/h;

    invoke-direct {v0}, Lcom/king/uranus/h;-><init>()V

    .line 46
    sget-object v1, Lcom/king/uranus/j;->xO:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    sget-object v0, Lcom/king/uranus/j;->xO:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/king/uranus/j;->aG:Ljava/util/ArrayList;

    .line 49
    iget v0, p0, Lcom/king/uranus/j;->aH:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/j;->aH:I

    .line 50
    iget v0, p0, Lcom/king/uranus/j;->aI:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/j;->aI:I

    .line 51
    iget v0, p0, Lcom/king/uranus/j;->aJ:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/j;->aJ:I

    .line 52
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/king/uranus/j;->f:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 23
    iget v0, p0, Lcom/king/uranus/j;->action:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 24
    iget v0, p0, Lcom/king/uranus/j;->ax:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 25
    iget-object v0, p0, Lcom/king/uranus/j;->aG:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Ljava/util/Collection;I)V

    .line 26
    iget v0, p0, Lcom/king/uranus/j;->aH:I

    if-eqz v0, :cond_0

    .line 27
    iget v0, p0, Lcom/king/uranus/j;->aH:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 29
    :cond_0
    iget v0, p0, Lcom/king/uranus/j;->aI:I

    if-eqz v0, :cond_1

    .line 30
    iget v0, p0, Lcom/king/uranus/j;->aI:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 32
    :cond_1
    iget v0, p0, Lcom/king/uranus/j;->aJ:I

    if-eqz v0, :cond_2

    .line 33
    iget v0, p0, Lcom/king/uranus/j;->aJ:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 35
    :cond_2
    return-void
.end method
