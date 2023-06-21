.class public final Lsm/h;
.super Lsm/ag;


# static fields
.field static bXt:Lsm/f;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Lsm/f;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public r:S

.field public s:D

.field public t:D

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lsm/ag;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lsm/h;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/h;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/h;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/h;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/h;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/h;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/h;->g:Ljava/lang/String;

    iput v1, p0, Lsm/h;->h:I

    iput v1, p0, Lsm/h;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lsm/h;->j:Lsm/f;

    const-string v0, ""

    iput-object v0, p0, Lsm/h;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/h;->l:Ljava/lang/String;

    iput v1, p0, Lsm/h;->m:I

    iput v1, p0, Lsm/h;->n:I

    iput v1, p0, Lsm/h;->o:I

    iput v1, p0, Lsm/h;->p:I

    const-string v0, ""

    iput-object v0, p0, Lsm/h;->q:Ljava/lang/String;

    iput-short v1, p0, Lsm/h;->r:S

    iput-wide v2, p0, Lsm/h;->s:D

    iput-wide v2, p0, Lsm/h;->t:D

    const-string v0, ""

    iput-object v0, p0, Lsm/h;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ccr;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/h;->b:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/h;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/h;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/h;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/h;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/h;->g:Ljava/lang/String;

    iget v0, p0, Lsm/h;->h:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/h;->h:I

    iget v0, p0, Lsm/h;->i:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/h;->i:I

    sget-object v0, Lsm/h;->bXt:Lsm/f;

    if-nez v0, :cond_0

    new-instance v0, Lsm/f;

    invoke-direct {v0}, Lsm/f;-><init>()V

    sput-object v0, Lsm/h;->bXt:Lsm/f;

    :cond_0
    sget-object v0, Lsm/h;->bXt:Lsm/f;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(Lsm/ag;IZ)Lsm/ag;

    move-result-object v0

    check-cast v0, Lsm/f;

    iput-object v0, p0, Lsm/h;->j:Lsm/f;

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/h;->k:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/h;->l:Ljava/lang/String;

    iget v0, p0, Lsm/h;->m:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/h;->m:I

    iget v0, p0, Lsm/h;->n:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/h;->n:I

    iget v0, p0, Lsm/h;->o:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/h;->o:I

    iget v0, p0, Lsm/h;->p:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/h;->p:I

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/h;->q:Ljava/lang/String;

    iget-short v0, p0, Lsm/h;->r:S

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Lsm/h;->r:S

    iget-wide v0, p0, Lsm/h;->s:D

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/ccr;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Lsm/h;->s:D

    iget-wide v0, p0, Lsm/h;->t:D

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/ccr;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Lsm/h;->t:D

    const/16 v0, 0x14

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/h;->u:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/kingroot/kinguser/ccs;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lsm/h;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lsm/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsm/h;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lsm/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsm/h;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lsm/h;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsm/h;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lsm/h;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsm/h;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lsm/h;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsm/h;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lsm/h;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lsm/h;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_5
    iget v0, p0, Lsm/h;->h:I

    if-eqz v0, :cond_6

    iget v0, p0, Lsm/h;->h:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_6
    iget v0, p0, Lsm/h;->i:I

    if-eqz v0, :cond_7

    iget v0, p0, Lsm/h;->i:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_7
    iget-object v0, p0, Lsm/h;->j:Lsm/f;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lsm/h;->j:Lsm/f;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Lsm/ag;I)V

    :cond_8
    iget-object v0, p0, Lsm/h;->k:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lsm/h;->k:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_9
    iget-object v0, p0, Lsm/h;->l:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lsm/h;->l:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_a
    iget v0, p0, Lsm/h;->m:I

    if-eqz v0, :cond_b

    iget v0, p0, Lsm/h;->m:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_b
    iget v0, p0, Lsm/h;->n:I

    if-eqz v0, :cond_c

    iget v0, p0, Lsm/h;->n:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_c
    iget v0, p0, Lsm/h;->o:I

    if-eqz v0, :cond_d

    iget v0, p0, Lsm/h;->o:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_d
    iget v0, p0, Lsm/h;->p:I

    if-eqz v0, :cond_e

    iget v0, p0, Lsm/h;->p:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_e
    iget-object v0, p0, Lsm/h;->q:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lsm/h;->q:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_f
    iget-short v0, p0, Lsm/h;->r:S

    if-eqz v0, :cond_10

    iget-short v0, p0, Lsm/h;->r:S

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(SI)V

    :cond_10
    iget-wide v0, p0, Lsm/h;->s:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lsm/h;->s:D

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccs;->a(DI)V

    :cond_11
    iget-wide v0, p0, Lsm/h;->t:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lsm/h;->t:D

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccs;->a(DI)V

    :cond_12
    iget-object v0, p0, Lsm/h;->u:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lsm/h;->u:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_13
    return-void
.end method
