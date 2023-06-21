.class public final Lsm/ao;
.super Lsm/ag;


# static fields
.field static bMX:[B

.field static bXl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static t:[B

.field static w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:[B

.field public c:Ljava/lang/String;

.field public d:[B

.field public e:J

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:I

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:Z

.field public q:I

.field public r:I

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    check-cast v0, [B

    sput-object v0, Lsm/ao;->t:[B

    sget-object v0, Lsm/ao;->t:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    new-array v0, v3, [B

    check-cast v0, [B

    sput-object v0, Lsm/ao;->bMX:[B

    sget-object v0, Lsm/ao;->bMX:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsm/ao;->bXl:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lsm/ao;->bXl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsm/ao;->w:Ljava/util/ArrayList;

    new-array v0, v3, [B

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    aput-byte v2, v1, v2

    sget-object v1, Lsm/ao;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lsm/ag;-><init>()V

    iput v2, p0, Lsm/ao;->a:I

    iput-object v3, p0, Lsm/ao;->b:[B

    const-string v0, ""

    iput-object v0, p0, Lsm/ao;->c:Ljava/lang/String;

    iput-object v3, p0, Lsm/ao;->d:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsm/ao;->e:J

    const-string v0, ""

    iput-object v0, p0, Lsm/ao;->f:Ljava/lang/String;

    iput v2, p0, Lsm/ao;->g:I

    const-string v0, ""

    iput-object v0, p0, Lsm/ao;->h:Ljava/lang/String;

    iput v2, p0, Lsm/ao;->i:I

    const-string v0, ""

    iput-object v0, p0, Lsm/ao;->j:Ljava/lang/String;

    iput v2, p0, Lsm/ao;->k:I

    iput v2, p0, Lsm/ao;->l:I

    iput v2, p0, Lsm/ao;->m:I

    iput-object v3, p0, Lsm/ao;->n:Ljava/util/ArrayList;

    iput v2, p0, Lsm/ao;->o:I

    iput-boolean v2, p0, Lsm/ao;->p:Z

    iput v2, p0, Lsm/ao;->q:I

    iput v2, p0, Lsm/ao;->r:I

    iput-object v3, p0, Lsm/ao;->s:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ccr;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lsm/ao;->a:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ao;->a:I

    sget-object v0, Lsm/ao;->t:[B

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsm/ao;->b:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/ao;->c:Ljava/lang/String;

    sget-object v0, Lsm/ao;->bMX:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsm/ao;->d:[B

    iget-wide v0, p0, Lsm/ao;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/ccr;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lsm/ao;->e:J

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/ao;->f:Ljava/lang/String;

    iget v0, p0, Lsm/ao;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ao;->g:I

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/ao;->h:Ljava/lang/String;

    iget v0, p0, Lsm/ao;->i:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ao;->i:I

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/ao;->j:Ljava/lang/String;

    iget v0, p0, Lsm/ao;->k:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ao;->k:I

    iget v0, p0, Lsm/ao;->l:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ao;->l:I

    iget v0, p0, Lsm/ao;->m:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ao;->m:I

    sget-object v0, Lsm/ao;->bXl:Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lsm/ao;->n:Ljava/util/ArrayList;

    iget v0, p0, Lsm/ao;->o:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ao;->o:I

    iget-boolean v0, p0, Lsm/ao;->p:Z

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lsm/ao;->p:Z

    iget v0, p0, Lsm/ao;->q:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ao;->q:I

    iget v0, p0, Lsm/ao;->r:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ao;->r:I

    sget-object v0, Lsm/ao;->w:Ljava/util/ArrayList;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lsm/ao;->s:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Lcom/kingroot/kinguser/ccs;)V
    .locals 4

    iget v0, p0, Lsm/ao;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget-object v0, p0, Lsm/ao;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsm/ao;->b:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a([BI)V

    :cond_0
    iget-object v0, p0, Lsm/ao;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsm/ao;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lsm/ao;->d:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsm/ao;->d:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a([BI)V

    :cond_2
    iget-wide v0, p0, Lsm/ao;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lsm/ao;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccs;->a(JI)V

    :cond_3
    iget-object v0, p0, Lsm/ao;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsm/ao;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_4
    iget v0, p0, Lsm/ao;->g:I

    if-eqz v0, :cond_5

    iget v0, p0, Lsm/ao;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_5
    iget-object v0, p0, Lsm/ao;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lsm/ao;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_6
    iget v0, p0, Lsm/ao;->i:I

    if-eqz v0, :cond_7

    iget v0, p0, Lsm/ao;->i:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_7
    iget-object v0, p0, Lsm/ao;->j:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lsm/ao;->j:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_8
    iget v0, p0, Lsm/ao;->k:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget v0, p0, Lsm/ao;->l:I

    if-eqz v0, :cond_9

    iget v0, p0, Lsm/ao;->l:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_9
    iget v0, p0, Lsm/ao;->m:I

    if-eqz v0, :cond_a

    iget v0, p0, Lsm/ao;->m:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_a
    iget-object v0, p0, Lsm/ao;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lsm/ao;->n:Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/util/Collection;I)V

    :cond_b
    iget v0, p0, Lsm/ao;->o:I

    if-eqz v0, :cond_c

    iget v0, p0, Lsm/ao;->o:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_c
    iget-boolean v0, p0, Lsm/ao;->p:Z

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(ZI)V

    iget v0, p0, Lsm/ao;->q:I

    if-eqz v0, :cond_d

    iget v0, p0, Lsm/ao;->q:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_d
    iget v0, p0, Lsm/ao;->r:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget-object v0, p0, Lsm/ao;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lsm/ao;->s:Ljava/util/ArrayList;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/util/Collection;I)V

    :cond_e
    return-void
.end method
