.class public final Lcom/kingx/cloudsdk/k;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingx/cloudsdk/k;->id:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/k;->name:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23
    iget v0, p0, Lcom/kingx/cloudsdk/k;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/k;->id:I

    .line 24
    invoke-virtual {p1, v2, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/k;->name:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Lcom/kingx/cloudsdk/k;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 18
    iget-object v0, p0, Lcom/kingx/cloudsdk/k;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 19
    return-void
.end method
