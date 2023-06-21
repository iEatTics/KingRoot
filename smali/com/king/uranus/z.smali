.class public final Lcom/king/uranus/z;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# instance fields
.field public X:Ljava/lang/String;

.field public bJ:Ljava/lang/String;

.field public bK:Ljava/lang/String;

.field public bL:Ljava/lang/String;

.field public bM:Ljava/lang/String;

.field public bN:I

.field public bO:Ljava/lang/String;

.field public bP:Ljava/lang/String;

.field public bQ:Ljava/lang/String;

.field public bR:Ljava/lang/String;

.field public bS:I

.field public bk:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public s:I

.field public type:I

.field public y:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->o:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->name:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->X:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->i:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->j:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->l:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->bJ:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/king/uranus/z;->type:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->bK:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->bL:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->bM:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->m:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/king/uranus/z;->s:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->q:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/king/uranus/z;->bN:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->bO:Ljava/lang/String;

    .line 26
    iput-short v1, p0, Lcom/king/uranus/z;->y:S

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->bk:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->bP:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->bQ:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/z;->bR:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/king/uranus/z;->bS:I

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p1, v2, v1}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->o:Ljava/lang/String;

    .line 98
    invoke-virtual {p1, v1, v1}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->name:Ljava/lang/String;

    .line 99
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->X:Ljava/lang/String;

    .line 100
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->i:Ljava/lang/String;

    .line 101
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->j:Ljava/lang/String;

    .line 102
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->l:Ljava/lang/String;

    .line 103
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->bJ:Ljava/lang/String;

    .line 104
    iget v0, p0, Lcom/king/uranus/z;->type:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/z;->type:I

    .line 105
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->bK:Ljava/lang/String;

    .line 106
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->bL:Ljava/lang/String;

    .line 107
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->bM:Ljava/lang/String;

    .line 108
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->m:Ljava/lang/String;

    .line 109
    iget v0, p0, Lcom/king/uranus/z;->s:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/z;->s:I

    .line 110
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->q:Ljava/lang/String;

    .line 111
    iget v0, p0, Lcom/king/uranus/z;->bN:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/z;->bN:I

    .line 112
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->bO:Ljava/lang/String;

    .line 113
    iget-short v0, p0, Lcom/king/uranus/z;->y:S

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/king/uranus/z;->y:S

    .line 114
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->bk:Ljava/lang/String;

    .line 115
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->bP:Ljava/lang/String;

    .line 116
    const/16 v0, 0x13

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->bQ:Ljava/lang/String;

    .line 117
    const/16 v0, 0x14

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/z;->bR:Ljava/lang/String;

    .line 118
    iget v0, p0, Lcom/king/uranus/z;->bS:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/z;->bS:I

    .line 119
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/king/uranus/z;->o:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 38
    iget-object v0, p0, Lcom/king/uranus/z;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Lcom/king/uranus/z;->X:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 40
    iget-object v0, p0, Lcom/king/uranus/z;->i:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 41
    iget-object v0, p0, Lcom/king/uranus/z;->j:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 42
    iget-object v0, p0, Lcom/king/uranus/z;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/king/uranus/z;->l:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/king/uranus/z;->bJ:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/king/uranus/z;->bJ:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 48
    :cond_1
    iget v0, p0, Lcom/king/uranus/z;->type:I

    if-eqz v0, :cond_2

    .line 49
    iget v0, p0, Lcom/king/uranus/z;->type:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/king/uranus/z;->bK:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/king/uranus/z;->bK:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/king/uranus/z;->bL:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 55
    iget-object v0, p0, Lcom/king/uranus/z;->bL:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/king/uranus/z;->bM:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 58
    iget-object v0, p0, Lcom/king/uranus/z;->bM:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/king/uranus/z;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 61
    iget-object v0, p0, Lcom/king/uranus/z;->m:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 63
    :cond_6
    iget v0, p0, Lcom/king/uranus/z;->s:I

    if-eqz v0, :cond_7

    .line 64
    iget v0, p0, Lcom/king/uranus/z;->s:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 66
    :cond_7
    iget-object v0, p0, Lcom/king/uranus/z;->q:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 67
    iget-object v0, p0, Lcom/king/uranus/z;->q:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 69
    :cond_8
    iget v0, p0, Lcom/king/uranus/z;->bN:I

    if-eqz v0, :cond_9

    .line 70
    iget v0, p0, Lcom/king/uranus/z;->bN:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 72
    :cond_9
    iget-object v0, p0, Lcom/king/uranus/z;->bO:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 73
    iget-object v0, p0, Lcom/king/uranus/z;->bO:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 75
    :cond_a
    iget-short v0, p0, Lcom/king/uranus/z;->y:S

    if-eqz v0, :cond_b

    .line 76
    iget-short v0, p0, Lcom/king/uranus/z;->y:S

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(SI)V

    .line 78
    :cond_b
    iget-object v0, p0, Lcom/king/uranus/z;->bk:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 79
    iget-object v0, p0, Lcom/king/uranus/z;->bk:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 81
    :cond_c
    iget-object v0, p0, Lcom/king/uranus/z;->bP:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 82
    iget-object v0, p0, Lcom/king/uranus/z;->bP:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 84
    :cond_d
    iget-object v0, p0, Lcom/king/uranus/z;->bQ:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 85
    iget-object v0, p0, Lcom/king/uranus/z;->bQ:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 87
    :cond_e
    iget-object v0, p0, Lcom/king/uranus/z;->bR:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 88
    iget-object v0, p0, Lcom/king/uranus/z;->bR:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 90
    :cond_f
    iget v0, p0, Lcom/king/uranus/z;->bS:I

    if-eqz v0, :cond_10

    .line 91
    iget v0, p0, Lcom/king/uranus/z;->bS:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 93
    :cond_10
    return-void
.end method
