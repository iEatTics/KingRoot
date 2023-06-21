.class public final Lcom/kingx/cloudsdk/q;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# static fields
.field private static bDm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aC:I

.field public aD:I

.field public ca:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingx/cloudsdk/q;->aC:I

    .line 11
    iput v0, p0, Lcom/kingx/cloudsdk/q;->aD:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingx/cloudsdk/q;->ca:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 26
    iget v0, p0, Lcom/kingx/cloudsdk/q;->aC:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/q;->aC:I

    .line 27
    iget v0, p0, Lcom/kingx/cloudsdk/q;->aD:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/q;->aD:I

    .line 28
    sget-object v0, Lcom/kingx/cloudsdk/q;->bDm:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingx/cloudsdk/q;->bDm:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Lcom/kingx/cloudsdk/t;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/t;-><init>()V

    .line 31
    sget-object v1, Lcom/kingx/cloudsdk/q;->bDm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    sget-object v0, Lcom/kingx/cloudsdk/q;->bDm:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingx/cloudsdk/q;->ca:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/kingx/cloudsdk/q;->aC:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 19
    iget v0, p0, Lcom/kingx/cloudsdk/q;->aD:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 20
    iget-object v0, p0, Lcom/kingx/cloudsdk/q;->ca:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(Ljava/util/Collection;I)V

    .line 21
    return-void
.end method
