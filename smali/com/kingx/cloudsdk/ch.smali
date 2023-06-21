.class public final Lcom/kingx/cloudsdk/ch;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# static fields
.field private static bCU:Lcom/kingx/cloudsdk/cg;


# instance fields
.field public cB:Ljava/lang/String;

.field private cE:S

.field private co:Ljava/lang/String;

.field private cp:Ljava/lang/String;

.field private cr:Ljava/lang/String;

.field private cs:Ljava/lang/String;

.field public ct:I

.field public cu:Ljava/lang/String;

.field public cv:I

.field public cw:Ljava/lang/String;

.field private dH:Ljava/lang/String;

.field private hJ:Ljava/lang/String;

.field private hK:I

.field public hL:Lcom/kingx/cloudsdk/cg;

.field private hM:I

.field public hN:I

.field private hO:Ljava/lang/String;

.field private hP:D

.field private hQ:D

.field private hR:Ljava/lang/String;

.field public hx:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->co:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->cr:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->cs:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->hJ:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->cu:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->cw:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->cB:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/kingx/cloudsdk/ch;->hK:I

    .line 22
    iput v1, p0, Lcom/kingx/cloudsdk/ch;->ct:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->hL:Lcom/kingx/cloudsdk/cg;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->dH:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->cp:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/kingx/cloudsdk/ch;->hM:I

    .line 27
    iput v1, p0, Lcom/kingx/cloudsdk/ch;->hN:I

    .line 28
    iput v1, p0, Lcom/kingx/cloudsdk/ch;->hx:I

    .line 29
    iput v1, p0, Lcom/kingx/cloudsdk/ch;->cv:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->hO:Ljava/lang/String;

    .line 31
    iput-short v1, p0, Lcom/kingx/cloudsdk/ch;->cE:S

    .line 32
    iput-wide v2, p0, Lcom/kingx/cloudsdk/ch;->hP:D

    .line 33
    iput-wide v2, p0, Lcom/kingx/cloudsdk/ch;->hQ:D

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->hR:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-virtual {p1, v3, v1}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->co:Ljava/lang/String;

    .line 108
    invoke-virtual {p1, v1, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->cr:Ljava/lang/String;

    .line 109
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->cs:Ljava/lang/String;

    .line 110
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->hJ:Ljava/lang/String;

    .line 111
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->cu:Ljava/lang/String;

    .line 112
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->cw:Ljava/lang/String;

    .line 113
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->cB:Ljava/lang/String;

    .line 114
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->hK:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/ch;->hK:I

    .line 115
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->ct:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/ch;->ct:I

    .line 116
    sget-object v0, Lcom/kingx/cloudsdk/ch;->bCU:Lcom/kingx/cloudsdk/cg;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/kingx/cloudsdk/cg;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/cg;-><init>()V

    sput-object v0, Lcom/kingx/cloudsdk/ch;->bCU:Lcom/kingx/cloudsdk/cg;

    .line 119
    :cond_0
    sget-object v0, Lcom/kingx/cloudsdk/ch;->bCU:Lcom/kingx/cloudsdk/cg;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(Lcom/kingx/cloudsdk/cb;IZ)Lcom/kingx/cloudsdk/cb;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/cg;

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->hL:Lcom/kingx/cloudsdk/cg;

    .line 120
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->dH:Ljava/lang/String;

    .line 121
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->cp:Ljava/lang/String;

    .line 122
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->hM:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/ch;->hM:I

    .line 123
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->hN:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/ch;->hN:I

    .line 124
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->hx:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/ch;->hx:I

    .line 125
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->cv:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/ch;->cv:I

    .line 126
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->hO:Ljava/lang/String;

    .line 127
    iget-short v0, p0, Lcom/kingx/cloudsdk/ch;->cE:S

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/kingx/cloudsdk/ch;->cE:S

    .line 128
    iget-wide v0, p0, Lcom/kingx/cloudsdk/ch;->hP:D

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/ch;->hP:D

    .line 129
    iget-wide v0, p0, Lcom/kingx/cloudsdk/ch;->hQ:D

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/ch;->hQ:D

    .line 130
    const/16 v0, 0x14

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/ch;->hR:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 41
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->co:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 42
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->cr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->cr:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->cs:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->cs:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->hJ:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->hJ:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->cu:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->cu:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->cw:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 55
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->cw:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->cB:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 58
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->cB:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 60
    :cond_5
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->hK:I

    if-eqz v0, :cond_6

    .line 61
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->hK:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 63
    :cond_6
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->ct:I

    if-eqz v0, :cond_7

    .line 64
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->ct:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 66
    :cond_7
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->hL:Lcom/kingx/cloudsdk/cg;

    if-eqz v0, :cond_8

    .line 67
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->hL:Lcom/kingx/cloudsdk/cg;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(Lcom/kingx/cloudsdk/cb;I)V

    .line 69
    :cond_8
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->dH:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->dH:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 72
    :cond_9
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->cp:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 73
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->cp:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 75
    :cond_a
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->hM:I

    if-eqz v0, :cond_b

    .line 76
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->hM:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 78
    :cond_b
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->hN:I

    if-eqz v0, :cond_c

    .line 79
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->hN:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 81
    :cond_c
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->hx:I

    if-eqz v0, :cond_d

    .line 82
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->hx:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 84
    :cond_d
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->cv:I

    if-eqz v0, :cond_e

    .line 85
    iget v0, p0, Lcom/kingx/cloudsdk/ch;->cv:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 87
    :cond_e
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->hO:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 88
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->hO:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 90
    :cond_f
    iget-short v0, p0, Lcom/kingx/cloudsdk/ch;->cE:S

    if-eqz v0, :cond_10

    .line 91
    iget-short v0, p0, Lcom/kingx/cloudsdk/ch;->cE:S

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(SI)V

    .line 93
    :cond_10
    iget-wide v0, p0, Lcom/kingx/cloudsdk/ch;->hP:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_11

    .line 94
    iget-wide v0, p0, Lcom/kingx/cloudsdk/ch;->hP:D

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(DI)V

    .line 96
    :cond_11
    iget-wide v0, p0, Lcom/kingx/cloudsdk/ch;->hQ:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_12

    .line 97
    iget-wide v0, p0, Lcom/kingx/cloudsdk/ch;->hQ:D

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(DI)V

    .line 99
    :cond_12
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->hR:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 100
    iget-object v0, p0, Lcom/kingx/cloudsdk/ch;->hR:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 102
    :cond_13
    return-void
.end method

.method public final an(I)V
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lcom/kingx/cloudsdk/ch;->hM:I

    .line 227
    return-void
.end method

.method public final ao(I)V
    .locals 0

    .prologue
    .line 234
    iput p1, p0, Lcom/kingx/cloudsdk/ch;->hN:I

    .line 235
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/kingx/cloudsdk/ch;->dH:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public final bi(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/kingx/cloudsdk/ch;->cw:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public final bj(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/kingx/cloudsdk/ch;->cB:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public final bk(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/kingx/cloudsdk/ch;->hR:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public final jS(I)V
    .locals 0

    .prologue
    .line 202
    iput p1, p0, Lcom/kingx/cloudsdk/ch;->hx:I

    .line 203
    return-void
.end method

.method public final jT(I)V
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Lcom/kingx/cloudsdk/ch;->hK:I

    .line 155
    return-void
.end method

.method public final jU(I)V
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x321

    iput v0, p0, Lcom/kingx/cloudsdk/ch;->cv:I

    .line 179
    return-void
.end method

.method public final jV(I)V
    .locals 1

    .prologue
    .line 194
    const/16 v0, 0x27

    iput v0, p0, Lcom/kingx/cloudsdk/ch;->ct:I

    .line 195
    return-void
.end method

.method public final mD(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/kingx/cloudsdk/ch;->cu:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public final mE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public final mv(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/kingx/cloudsdk/ch;->co:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public final mw(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/kingx/cloudsdk/ch;->cp:Ljava/lang/String;

    .line 147
    return-void
.end method
