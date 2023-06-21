.class public final Lcom/kingx/cloudsdk/y;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public dH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/y;->dH:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/y;->dH:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingx/cloudsdk/y;->dH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/kingroot/kinguser/bnb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/bnb;-><init>(Ljava/lang/StringBuilder;I)V

    .line 21
    iget-object v1, p0, Lcom/kingx/cloudsdk/y;->dH:Ljava/lang/String;

    const-string v2, "guid"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->aR(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 22
    return-void
.end method
