.class public final Lcom/king/uranus/i;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# static fields
.field static xK:Lcom/king/uranus/c;

.field static xL:Lcom/king/uranus/D;

.field static xM:Lcom/king/uranus/E;

.field static xN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aA:Lcom/king/uranus/E;

.field public aB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/g;",
            ">;"
        }
    .end annotation
.end field

.field public ay:Lcom/king/uranus/c;

.field public az:Lcom/king/uranus/D;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/king/uranus/i;->ay:Lcom/king/uranus/c;

    .line 11
    iput-object v0, p0, Lcom/king/uranus/i;->az:Lcom/king/uranus/D;

    .line 12
    iput-object v0, p0, Lcom/king/uranus/i;->aA:Lcom/king/uranus/E;

    .line 13
    iput-object v0, p0, Lcom/king/uranus/i;->aB:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    sget-object v0, Lcom/king/uranus/i;->xK:Lcom/king/uranus/c;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/king/uranus/c;

    invoke-direct {v0}, Lcom/king/uranus/c;-><init>()V

    sput-object v0, Lcom/king/uranus/i;->xK:Lcom/king/uranus/c;

    .line 38
    :cond_0
    sget-object v0, Lcom/king/uranus/i;->xK:Lcom/king/uranus/c;

    invoke-virtual {p1, v0, v2, v1}, Lcom/kingroot/kinguser/mq;->a(Lcom/king/uranus/cS;IZ)Lcom/king/uranus/cS;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/c;

    iput-object v0, p0, Lcom/king/uranus/i;->ay:Lcom/king/uranus/c;

    .line 39
    sget-object v0, Lcom/king/uranus/i;->xL:Lcom/king/uranus/D;

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Lcom/king/uranus/D;

    invoke-direct {v0}, Lcom/king/uranus/D;-><init>()V

    sput-object v0, Lcom/king/uranus/i;->xL:Lcom/king/uranus/D;

    .line 42
    :cond_1
    sget-object v0, Lcom/king/uranus/i;->xL:Lcom/king/uranus/D;

    invoke-virtual {p1, v0, v1, v1}, Lcom/kingroot/kinguser/mq;->a(Lcom/king/uranus/cS;IZ)Lcom/king/uranus/cS;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/D;

    iput-object v0, p0, Lcom/king/uranus/i;->az:Lcom/king/uranus/D;

    .line 43
    sget-object v0, Lcom/king/uranus/i;->xM:Lcom/king/uranus/E;

    if-nez v0, :cond_2

    .line 44
    new-instance v0, Lcom/king/uranus/E;

    invoke-direct {v0}, Lcom/king/uranus/E;-><init>()V

    sput-object v0, Lcom/king/uranus/i;->xM:Lcom/king/uranus/E;

    .line 46
    :cond_2
    sget-object v0, Lcom/king/uranus/i;->xM:Lcom/king/uranus/E;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(Lcom/king/uranus/cS;IZ)Lcom/king/uranus/cS;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/E;

    iput-object v0, p0, Lcom/king/uranus/i;->aA:Lcom/king/uranus/E;

    .line 47
    sget-object v0, Lcom/king/uranus/i;->xN:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/king/uranus/i;->xN:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/king/uranus/g;

    invoke-direct {v0}, Lcom/king/uranus/g;-><init>()V

    .line 50
    sget-object v1, Lcom/king/uranus/i;->xN:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_3
    sget-object v0, Lcom/king/uranus/i;->xN:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/king/uranus/i;->aB:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/king/uranus/i;->ay:Lcom/king/uranus/c;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Lcom/king/uranus/cS;I)V

    .line 20
    iget-object v0, p0, Lcom/king/uranus/i;->az:Lcom/king/uranus/D;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Lcom/king/uranus/cS;I)V

    .line 21
    iget-object v0, p0, Lcom/king/uranus/i;->aA:Lcom/king/uranus/E;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/king/uranus/i;->aA:Lcom/king/uranus/E;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Lcom/king/uranus/cS;I)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/king/uranus/i;->aB:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/king/uranus/i;->aB:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Ljava/util/Collection;I)V

    .line 27
    :cond_1
    return-void
.end method
