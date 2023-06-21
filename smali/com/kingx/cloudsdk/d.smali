.class public final Lcom/kingx/cloudsdk/d;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# static fields
.field private static aG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aC:I

.field public aD:I

.field public aE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/g;",
            ">;"
        }
    .end annotation
.end field

.field public aF:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingx/cloudsdk/d;->aC:I

    .line 11
    iput v0, p0, Lcom/kingx/cloudsdk/d;->aD:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingx/cloudsdk/d;->aE:Ljava/util/ArrayList;

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/d;->aF:J

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 28
    iget v0, p0, Lcom/kingx/cloudsdk/d;->aC:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/d;->aC:I

    .line 29
    iget v0, p0, Lcom/kingx/cloudsdk/d;->aD:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/d;->aD:I

    .line 30
    sget-object v0, Lcom/kingx/cloudsdk/d;->aG:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingx/cloudsdk/d;->aG:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Lcom/kingx/cloudsdk/g;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/g;-><init>()V

    .line 33
    sget-object v1, Lcom/kingx/cloudsdk/d;->aG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    sget-object v0, Lcom/kingx/cloudsdk/d;->aG:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingx/cloudsdk/d;->aE:Ljava/util/ArrayList;

    .line 36
    iget-wide v0, p0, Lcom/kingx/cloudsdk/d;->aF:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/d;->aF:J

    .line 37
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 3

    .prologue
    .line 19
    iget v0, p0, Lcom/kingx/cloudsdk/d;->aC:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 20
    iget v0, p0, Lcom/kingx/cloudsdk/d;->aD:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 21
    iget-object v0, p0, Lcom/kingx/cloudsdk/d;->aE:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(Ljava/util/Collection;I)V

    .line 22
    iget-wide v0, p0, Lcom/kingx/cloudsdk/d;->aF:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(JI)V

    .line 23
    return-void
.end method
