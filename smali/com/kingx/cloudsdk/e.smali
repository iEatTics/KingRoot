.class public final Lcom/kingx/cloudsdk/e;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# instance fields
.field private aH:I

.field private aI:J

.field private aJ:I

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 10
    iput v2, p0, Lcom/kingx/cloudsdk/e;->aH:I

    .line 11
    iput v2, p0, Lcom/kingx/cloudsdk/e;->versionCode:I

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/e;->aI:J

    .line 13
    iput v2, p0, Lcom/kingx/cloudsdk/e;->aJ:I

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 27
    iget v0, p0, Lcom/kingx/cloudsdk/e;->aH:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/e;->aH:I

    .line 28
    iget v0, p0, Lcom/kingx/cloudsdk/e;->versionCode:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/e;->versionCode:I

    .line 29
    iget-wide v0, p0, Lcom/kingx/cloudsdk/e;->aI:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/e;->aI:J

    .line 30
    iget v0, p0, Lcom/kingx/cloudsdk/e;->aJ:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/e;->aJ:I

    .line 31
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 3

    .prologue
    .line 19
    iget v0, p0, Lcom/kingx/cloudsdk/e;->aH:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 20
    iget v0, p0, Lcom/kingx/cloudsdk/e;->versionCode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 21
    iget-wide v0, p0, Lcom/kingx/cloudsdk/e;->aI:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(JI)V

    .line 22
    iget v0, p0, Lcom/kingx/cloudsdk/e;->aJ:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 23
    return-void
.end method
