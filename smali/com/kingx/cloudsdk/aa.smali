.class public final Lcom/kingx/cloudsdk/aa;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public cv:I

.field public dH:Ljava/lang/String;

.field public dK:I

.field public dL:I

.field private dM:Ljava/lang/String;

.field public dN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingx/cloudsdk/aa;->dK:I

    .line 14
    iput v1, p0, Lcom/kingx/cloudsdk/aa;->dL:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aa;->dH:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aa;->dM:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aa;->dN:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/kingx/cloudsdk/aa;->cv:I

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    iget v0, p0, Lcom/kingx/cloudsdk/aa;->dK:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/aa;->dK:I

    .line 55
    iget v0, p0, Lcom/kingx/cloudsdk/aa;->dL:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/aa;->dL:I

    .line 56
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/aa;->dH:Ljava/lang/String;

    .line 57
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/aa;->dM:Ljava/lang/String;

    .line 58
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/aa;->dN:Ljava/lang/String;

    .line 59
    iget v0, p0, Lcom/kingx/cloudsdk/aa;->cv:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/aa;->cv:I

    .line 60
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lcom/kingx/cloudsdk/aa;->dK:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 37
    iget v0, p0, Lcom/kingx/cloudsdk/aa;->dL:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 38
    iget-object v0, p0, Lcom/kingx/cloudsdk/aa;->dH:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/kingx/cloudsdk/aa;->dH:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/kingx/cloudsdk/aa;->dM:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/kingx/cloudsdk/aa;->dM:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/kingx/cloudsdk/aa;->dN:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/kingx/cloudsdk/aa;->dN:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 47
    :cond_2
    iget v0, p0, Lcom/kingx/cloudsdk/aa;->cv:I

    if-eqz v0, :cond_3

    .line 48
    iget v0, p0, Lcom/kingx/cloudsdk/aa;->cv:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 50
    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/kingroot/kinguser/bnb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/bnb;-><init>(Ljava/lang/StringBuilder;I)V

    .line 26
    iget v1, p0, Lcom/kingx/cloudsdk/aa;->dK:I

    const-string v2, "phonetype"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->S(ILjava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 27
    iget v1, p0, Lcom/kingx/cloudsdk/aa;->dL:I

    const-string v2, "authType"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->S(ILjava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 28
    iget-object v1, p0, Lcom/kingx/cloudsdk/aa;->dH:Ljava/lang/String;

    const-string v2, "guid"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->aR(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 29
    iget-object v1, p0, Lcom/kingx/cloudsdk/aa;->dM:Ljava/lang/String;

    const-string v2, "ext1"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->aR(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 30
    iget-object v1, p0, Lcom/kingx/cloudsdk/aa;->dN:Ljava/lang/String;

    const-string v2, "sessionId"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->aR(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 31
    iget v1, p0, Lcom/kingx/cloudsdk/aa;->cv:I

    const-string v2, "buildno"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->S(ILjava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 32
    return-void
.end method
