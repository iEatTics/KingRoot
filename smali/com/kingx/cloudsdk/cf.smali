.class public final Lcom/kingx/cloudsdk/cf;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# instance fields
.field private dH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/cf;->dH:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/cf;->dH:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingx/cloudsdk/cf;->dH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 21
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingx/cloudsdk/cf;->dH:Ljava/lang/String;

    return-object v0
.end method
