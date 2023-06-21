.class public final Lcom/king/uranus/y;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# static fields
.field static bH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static xU:Lcom/king/uranus/u;


# instance fields
.field public aJ:I

.field public bD:Ljava/lang/String;

.field public bE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public bF:Ljava/lang/String;

.field public bG:Lcom/king/uranus/u;

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    iput v0, p0, Lcom/king/uranus/y;->id:I

    .line 11
    iput v0, p0, Lcom/king/uranus/y;->aJ:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/y;->bD:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/king/uranus/y;->bE:Ljava/util/ArrayList;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/y;->bF:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/king/uranus/y;->bG:Lcom/king/uranus/u;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    iget v0, p0, Lcom/king/uranus/y;->id:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/y;->id:I

    .line 40
    iget v0, p0, Lcom/king/uranus/y;->aJ:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/y;->aJ:I

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/y;->bD:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/king/uranus/y;->bH:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/king/uranus/y;->bH:Ljava/util/ArrayList;

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/king/uranus/y;->bH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    sget-object v0, Lcom/king/uranus/y;->bH:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/king/uranus/y;->bE:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/y;->bF:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/king/uranus/y;->xU:Lcom/king/uranus/u;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/king/uranus/u;

    invoke-direct {v0}, Lcom/king/uranus/u;-><init>()V

    sput-object v0, Lcom/king/uranus/y;->xU:Lcom/king/uranus/u;

    .line 52
    :cond_1
    sget-object v0, Lcom/king/uranus/y;->xU:Lcom/king/uranus/u;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(Lcom/king/uranus/cS;IZ)Lcom/king/uranus/cS;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/u;

    iput-object v0, p0, Lcom/king/uranus/y;->bG:Lcom/king/uranus/u;

    .line 53
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lcom/king/uranus/y;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 22
    iget v0, p0, Lcom/king/uranus/y;->aJ:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 23
    iget-object v0, p0, Lcom/king/uranus/y;->bD:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 24
    iget-object v0, p0, Lcom/king/uranus/y;->bE:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/king/uranus/y;->bE:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Ljava/util/Collection;I)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/king/uranus/y;->bF:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/king/uranus/y;->bF:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/king/uranus/y;->bG:Lcom/king/uranus/u;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/king/uranus/y;->bG:Lcom/king/uranus/u;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Lcom/king/uranus/cS;I)V

    .line 33
    :cond_2
    return-void
.end method
