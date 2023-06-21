.class public final Lcom/kingx/cloudsdk/cd;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# instance fields
.field private cD:Ljava/lang/String;

.field private co:Ljava/lang/String;

.field private cp:Ljava/lang/String;

.field private cq:Ljava/lang/String;

.field private hA:Ljava/lang/String;

.field private hB:Ljava/lang/String;

.field private hw:Ljava/lang/String;

.field private hx:I

.field private hy:Ljava/lang/String;

.field private hz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->co:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->cp:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->cq:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->hw:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->cD:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingx/cloudsdk/cd;->hx:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->hy:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->hz:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->hA:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->hB:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p1, v2, v1}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->co:Ljava/lang/String;

    .line 62
    invoke-virtual {p1, v1, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->cp:Ljava/lang/String;

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->cq:Ljava/lang/String;

    .line 64
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->hw:Ljava/lang/String;

    .line 65
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->cD:Ljava/lang/String;

    .line 66
    iget v0, p0, Lcom/kingx/cloudsdk/cd;->hx:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/cd;->hx:I

    .line 67
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->hy:Ljava/lang/String;

    .line 68
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->hz:Ljava/lang/String;

    .line 69
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->hA:Ljava/lang/String;

    .line 70
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/cd;->hB:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->co:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 30
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->cp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->cp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->cq:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->cq:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->hw:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->hw:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->cD:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->cD:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 42
    :cond_3
    iget v0, p0, Lcom/kingx/cloudsdk/cd;->hx:I

    if-eqz v0, :cond_4

    .line 43
    iget v0, p0, Lcom/kingx/cloudsdk/cd;->hx:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->hy:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 46
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->hy:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 48
    :cond_5
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->hz:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 49
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->hz:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 51
    :cond_6
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->hA:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 52
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->hA:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 54
    :cond_7
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->hB:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 55
    iget-object v0, p0, Lcom/kingx/cloudsdk/cd;->hB:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 57
    :cond_8
    return-void
.end method

.method public final be(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/kingx/cloudsdk/cd;->hz:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public final jS(I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/kingx/cloudsdk/cd;->hx:I

    .line 119
    return-void
.end method

.method public final mA(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/kingx/cloudsdk/cd;->hy:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public final mB(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/kingx/cloudsdk/cd;->hA:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public final mC(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kingx/cloudsdk/cd;->hB:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public final mv(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kingx/cloudsdk/cd;->co:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public final mw(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kingx/cloudsdk/cd;->cp:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public final mx(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingx/cloudsdk/cd;->cq:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public final my(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/kingx/cloudsdk/cd;->hw:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public final mz(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/kingx/cloudsdk/cd;->cD:Ljava/lang/String;

    .line 111
    return-void
.end method
