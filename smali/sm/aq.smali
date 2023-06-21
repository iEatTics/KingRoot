.class public final Lsm/aq;
.super Lsm/ag;


# static fields
.field static bXm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsm/aq;->bXm:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lsm/aq;->bXm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lsm/ag;-><init>()V

    iput v1, p0, Lsm/aq;->a:I

    iput v1, p0, Lsm/aq;->b:I

    iput v1, p0, Lsm/aq;->c:I

    iput v1, p0, Lsm/aq;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lsm/aq;->e:Ljava/util/ArrayList;

    iput v1, p0, Lsm/aq;->f:I

    iput-boolean v1, p0, Lsm/aq;->g:Z

    iput v1, p0, Lsm/aq;->h:I

    iput v1, p0, Lsm/aq;->i:I

    const-string v0, ""

    iput-object v0, p0, Lsm/aq;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/aq;->k:Ljava/lang/String;

    iput v1, p0, Lsm/aq;->l:I

    const-string v0, ""

    iput-object v0, p0, Lsm/aq;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/aq;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/aq;->o:Ljava/lang/String;

    iput v1, p0, Lsm/aq;->p:I

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ccr;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lsm/aq;->a:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/aq;->a:I

    iget v0, p0, Lsm/aq;->b:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/aq;->b:I

    iget v0, p0, Lsm/aq;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/aq;->c:I

    iget v0, p0, Lsm/aq;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/aq;->d:I

    sget-object v0, Lsm/aq;->bXm:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lsm/aq;->e:Ljava/util/ArrayList;

    iget v0, p0, Lsm/aq;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/aq;->f:I

    iget-boolean v0, p0, Lsm/aq;->g:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lsm/aq;->g:Z

    iget v0, p0, Lsm/aq;->h:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/aq;->h:I

    iget v0, p0, Lsm/aq;->i:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/aq;->i:I

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/aq;->j:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/aq;->k:Ljava/lang/String;

    iget v0, p0, Lsm/aq;->l:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/aq;->l:I

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/aq;->m:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/aq;->n:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/aq;->o:Ljava/lang/String;

    iget v0, p0, Lsm/aq;->p:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/aq;->p:I

    return-void
.end method

.method public a(Lcom/kingroot/kinguser/ccs;)V
    .locals 2

    iget v0, p0, Lsm/aq;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget v0, p0, Lsm/aq;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget v0, p0, Lsm/aq;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lsm/aq;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_0
    iget v0, p0, Lsm/aq;->d:I

    if-eqz v0, :cond_1

    iget v0, p0, Lsm/aq;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_1
    iget-object v0, p0, Lsm/aq;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsm/aq;->e:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/util/Collection;I)V

    :cond_2
    iget v0, p0, Lsm/aq;->f:I

    if-eqz v0, :cond_3

    iget v0, p0, Lsm/aq;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_3
    iget-boolean v0, p0, Lsm/aq;->g:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(ZI)V

    iget v0, p0, Lsm/aq;->h:I

    if-eqz v0, :cond_4

    iget v0, p0, Lsm/aq;->h:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_4
    iget v0, p0, Lsm/aq;->i:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget-object v0, p0, Lsm/aq;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lsm/aq;->j:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lsm/aq;->k:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lsm/aq;->k:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_6
    iget v0, p0, Lsm/aq;->l:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget-object v0, p0, Lsm/aq;->m:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lsm/aq;->m:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_7
    iget-object v0, p0, Lsm/aq;->n:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lsm/aq;->n:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, Lsm/aq;->o:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lsm/aq;->o:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_9
    iget v0, p0, Lsm/aq;->p:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    return-void
.end method
