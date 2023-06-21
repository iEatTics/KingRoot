.class public final Lcom/king/uranus/G;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# static fields
.field static qI:Lcom/king/uranus/v;


# instance fields
.field public aY:I

.field public bJ:Ljava/lang/String;

.field public bN:I

.field public bO:Ljava/lang/String;

.field public bR:Ljava/lang/String;

.field public bk:Ljava/lang/String;

.field public cm:I

.field public cn:Lcom/king/uranus/v;

.field public co:I

.field public cp:D

.field public cq:D

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Ljava/lang/String;

.field public p:I

.field public q:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public y:S


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/G;->i:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/G;->l:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/G;->m:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/G;->bJ:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/G;->o:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/G;->q:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/G;->v:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/king/uranus/G;->cm:I

    .line 18
    iput v1, p0, Lcom/king/uranus/G;->n:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/king/uranus/G;->cn:Lcom/king/uranus/v;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/G;->bk:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/G;->j:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/king/uranus/G;->bN:I

    .line 23
    iput v1, p0, Lcom/king/uranus/G;->co:I

    .line 24
    iput v1, p0, Lcom/king/uranus/G;->aY:I

    .line 25
    iput v1, p0, Lcom/king/uranus/G;->p:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/G;->bO:Ljava/lang/String;

    .line 27
    iput-short v1, p0, Lcom/king/uranus/G;->y:S

    .line 28
    iput-wide v2, p0, Lcom/king/uranus/G;->cp:D

    .line 29
    iput-wide v2, p0, Lcom/king/uranus/G;->cq:D

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/G;->bR:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 102
    invoke-virtual {p1, v3, v1}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/G;->i:Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v1, v3}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/G;->l:Ljava/lang/String;

    .line 104
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/G;->m:Ljava/lang/String;

    .line 105
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/G;->bJ:Ljava/lang/String;

    .line 106
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/G;->o:Ljava/lang/String;

    .line 107
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/G;->q:Ljava/lang/String;

    .line 108
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/G;->v:Ljava/lang/String;

    .line 109
    iget v0, p0, Lcom/king/uranus/G;->cm:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/G;->cm:I

    .line 110
    iget v0, p0, Lcom/king/uranus/G;->n:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/G;->n:I

    .line 111
    sget-object v0, Lcom/king/uranus/G;->qI:Lcom/king/uranus/v;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/king/uranus/v;

    invoke-direct {v0}, Lcom/king/uranus/v;-><init>()V

    sput-object v0, Lcom/king/uranus/G;->qI:Lcom/king/uranus/v;

    .line 114
    :cond_0
    sget-object v0, Lcom/king/uranus/G;->qI:Lcom/king/uranus/v;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(Lcom/king/uranus/cS;IZ)Lcom/king/uranus/cS;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/v;

    iput-object v0, p0, Lcom/king/uranus/G;->cn:Lcom/king/uranus/v;

    .line 115
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/G;->bk:Ljava/lang/String;

    .line 116
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/G;->j:Ljava/lang/String;

    .line 117
    iget v0, p0, Lcom/king/uranus/G;->bN:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/G;->bN:I

    .line 118
    iget v0, p0, Lcom/king/uranus/G;->co:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/G;->co:I

    .line 119
    iget v0, p0, Lcom/king/uranus/G;->aY:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/G;->aY:I

    .line 120
    iget v0, p0, Lcom/king/uranus/G;->p:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/G;->p:I

    .line 121
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/G;->bO:Ljava/lang/String;

    .line 122
    iget-short v0, p0, Lcom/king/uranus/G;->y:S

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/king/uranus/G;->y:S

    .line 123
    iget-wide v0, p0, Lcom/king/uranus/G;->cp:D

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/mq;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/king/uranus/G;->cp:D

    .line 124
    iget-wide v0, p0, Lcom/king/uranus/G;->cq:D

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/mq;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/king/uranus/G;->cq:D

    .line 125
    const/16 v0, 0x14

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/G;->bR:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 36
    iget-object v0, p0, Lcom/king/uranus/G;->i:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 37
    iget-object v0, p0, Lcom/king/uranus/G;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/king/uranus/G;->l:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/king/uranus/G;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/king/uranus/G;->m:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/king/uranus/G;->bJ:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/king/uranus/G;->bJ:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/king/uranus/G;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/king/uranus/G;->o:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/king/uranus/G;->q:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Lcom/king/uranus/G;->q:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 52
    :cond_4
    iget-object v0, p0, Lcom/king/uranus/G;->v:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 53
    iget-object v0, p0, Lcom/king/uranus/G;->v:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 55
    :cond_5
    iget v0, p0, Lcom/king/uranus/G;->cm:I

    if-eqz v0, :cond_6

    .line 56
    iget v0, p0, Lcom/king/uranus/G;->cm:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 58
    :cond_6
    iget v0, p0, Lcom/king/uranus/G;->n:I

    if-eqz v0, :cond_7

    .line 59
    iget v0, p0, Lcom/king/uranus/G;->n:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 61
    :cond_7
    iget-object v0, p0, Lcom/king/uranus/G;->cn:Lcom/king/uranus/v;

    if-eqz v0, :cond_8

    .line 62
    iget-object v0, p0, Lcom/king/uranus/G;->cn:Lcom/king/uranus/v;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(Lcom/king/uranus/cS;I)V

    .line 64
    :cond_8
    iget-object v0, p0, Lcom/king/uranus/G;->bk:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Lcom/king/uranus/G;->bk:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 67
    :cond_9
    iget-object v0, p0, Lcom/king/uranus/G;->j:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 68
    iget-object v0, p0, Lcom/king/uranus/G;->j:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 70
    :cond_a
    iget v0, p0, Lcom/king/uranus/G;->bN:I

    if-eqz v0, :cond_b

    .line 71
    iget v0, p0, Lcom/king/uranus/G;->bN:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 73
    :cond_b
    iget v0, p0, Lcom/king/uranus/G;->co:I

    if-eqz v0, :cond_c

    .line 74
    iget v0, p0, Lcom/king/uranus/G;->co:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 76
    :cond_c
    iget v0, p0, Lcom/king/uranus/G;->aY:I

    if-eqz v0, :cond_d

    .line 77
    iget v0, p0, Lcom/king/uranus/G;->aY:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 79
    :cond_d
    iget v0, p0, Lcom/king/uranus/G;->p:I

    if-eqz v0, :cond_e

    .line 80
    iget v0, p0, Lcom/king/uranus/G;->p:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 82
    :cond_e
    iget-object v0, p0, Lcom/king/uranus/G;->bO:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 83
    iget-object v0, p0, Lcom/king/uranus/G;->bO:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 85
    :cond_f
    iget-short v0, p0, Lcom/king/uranus/G;->y:S

    if-eqz v0, :cond_10

    .line 86
    iget-short v0, p0, Lcom/king/uranus/G;->y:S

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(SI)V

    .line 88
    :cond_10
    iget-wide v0, p0, Lcom/king/uranus/G;->cp:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_11

    .line 89
    iget-wide v0, p0, Lcom/king/uranus/G;->cp:D

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mr;->a(DI)V

    .line 91
    :cond_11
    iget-wide v0, p0, Lcom/king/uranus/G;->cq:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_12

    .line 92
    iget-wide v0, p0, Lcom/king/uranus/G;->cq:D

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mr;->a(DI)V

    .line 94
    :cond_12
    iget-object v0, p0, Lcom/king/uranus/G;->bR:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 95
    iget-object v0, p0, Lcom/king/uranus/G;->bR:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 97
    :cond_13
    return-void
.end method
