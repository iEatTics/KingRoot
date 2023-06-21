.class public final Lcom/kingx/cloudsdk/r;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# instance fields
.field private cc:Ljava/lang/String;

.field private time:J

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/r;->cc:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/r;->value:Ljava/lang/String;

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/r;->time:J

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/r;->cc:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, v3, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/r;->value:Ljava/lang/String;

    .line 27
    iget-wide v0, p0, Lcom/kingx/cloudsdk/r;->time:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/r;->time:J

    .line 28
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingx/cloudsdk/r;->cc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 19
    iget-object v0, p0, Lcom/kingx/cloudsdk/r;->value:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 20
    iget-wide v0, p0, Lcom/kingx/cloudsdk/r;->time:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(JI)V

    .line 21
    return-void
.end method
