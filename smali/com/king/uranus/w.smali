.class public final Lcom/king/uranus/w;
.super Lcom/king/uranus/cS;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static xM:Lcom/king/uranus/E;

.field static xR:Lcom/king/uranus/D;

.field static xS:Lcom/king/uranus/E;

.field static xT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/B;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aA:Lcom/king/uranus/E;

.field public bw:Ljava/lang/String;

.field public bx:Lcom/king/uranus/D;

.field public by:Lcom/king/uranus/E;

.field public bz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/B;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/w;->bw:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/king/uranus/w;->bx:Lcom/king/uranus/D;

    .line 16
    iput-object v1, p0, Lcom/king/uranus/w;->aA:Lcom/king/uranus/E;

    .line 17
    iput-object v1, p0, Lcom/king/uranus/w;->by:Lcom/king/uranus/E;

    .line 18
    iput-object v1, p0, Lcom/king/uranus/w;->bz:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1, v2, v1}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/w;->bw:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/king/uranus/w;->xR:Lcom/king/uranus/D;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/king/uranus/D;

    invoke-direct {v0}, Lcom/king/uranus/D;-><init>()V

    sput-object v0, Lcom/king/uranus/w;->xR:Lcom/king/uranus/D;

    .line 51
    :cond_0
    sget-object v0, Lcom/king/uranus/w;->xR:Lcom/king/uranus/D;

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(Lcom/king/uranus/cS;IZ)Lcom/king/uranus/cS;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/D;

    iput-object v0, p0, Lcom/king/uranus/w;->bx:Lcom/king/uranus/D;

    .line 52
    sget-object v0, Lcom/king/uranus/w;->xM:Lcom/king/uranus/E;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Lcom/king/uranus/E;

    invoke-direct {v0}, Lcom/king/uranus/E;-><init>()V

    sput-object v0, Lcom/king/uranus/w;->xM:Lcom/king/uranus/E;

    .line 55
    :cond_1
    sget-object v0, Lcom/king/uranus/w;->xM:Lcom/king/uranus/E;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(Lcom/king/uranus/cS;IZ)Lcom/king/uranus/cS;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/E;

    iput-object v0, p0, Lcom/king/uranus/w;->aA:Lcom/king/uranus/E;

    .line 56
    sget-object v0, Lcom/king/uranus/w;->xS:Lcom/king/uranus/E;

    if-nez v0, :cond_2

    .line 57
    new-instance v0, Lcom/king/uranus/E;

    invoke-direct {v0}, Lcom/king/uranus/E;-><init>()V

    sput-object v0, Lcom/king/uranus/w;->xS:Lcom/king/uranus/E;

    .line 59
    :cond_2
    sget-object v0, Lcom/king/uranus/w;->xS:Lcom/king/uranus/E;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(Lcom/king/uranus/cS;IZ)Lcom/king/uranus/cS;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/E;

    iput-object v0, p0, Lcom/king/uranus/w;->by:Lcom/king/uranus/E;

    .line 60
    sget-object v0, Lcom/king/uranus/w;->xT:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/king/uranus/w;->xT:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lcom/king/uranus/B;

    invoke-direct {v0}, Lcom/king/uranus/B;-><init>()V

    .line 63
    sget-object v1, Lcom/king/uranus/w;->xT:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_3
    sget-object v0, Lcom/king/uranus/w;->xT:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/king/uranus/w;->bz:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/king/uranus/w;->bw:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 31
    iget-object v0, p0, Lcom/king/uranus/w;->bx:Lcom/king/uranus/D;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/king/uranus/w;->bx:Lcom/king/uranus/D;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Lcom/king/uranus/cS;I)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/king/uranus/w;->aA:Lcom/king/uranus/E;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/king/uranus/w;->aA:Lcom/king/uranus/E;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Lcom/king/uranus/cS;I)V

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/king/uranus/w;->by:Lcom/king/uranus/E;

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/king/uranus/w;->by:Lcom/king/uranus/E;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Lcom/king/uranus/cS;I)V

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/king/uranus/w;->bz:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/king/uranus/w;->bz:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Ljava/util/Collection;I)V

    .line 43
    :cond_3
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
