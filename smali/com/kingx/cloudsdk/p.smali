.class public final Lcom/kingx/cloudsdk/p;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# instance fields
.field private aN:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingx/cloudsdk/p;->aN:I

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    iget v0, p0, Lcom/kingx/cloudsdk/p;->aN:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/p;->aN:I

    .line 22
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 16
    iget v0, p0, Lcom/kingx/cloudsdk/p;->aN:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 17
    return-void
.end method
