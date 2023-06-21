.class public final Lsm/ap;
.super Lsm/ag;


# static fields
.field static h:[B


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[B

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [B

    check-cast v0, [B

    sput-object v0, Lsm/ap;->h:[B

    sget-object v0, Lsm/ap;->h:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lsm/ag;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lsm/ap;->a:I

    iput v1, p0, Lsm/ap;->b:I

    iput v1, p0, Lsm/ap;->c:I

    iput v1, p0, Lsm/ap;->d:I

    iput v1, p0, Lsm/ap;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lsm/ap;->f:[B

    iput v1, p0, Lsm/ap;->g:I

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ccr;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lsm/ap;->a:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ap;->a:I

    iget v0, p0, Lsm/ap;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ap;->b:I

    iget v0, p0, Lsm/ap;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ap;->c:I

    iget v0, p0, Lsm/ap;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ap;->d:I

    iget v0, p0, Lsm/ap;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ap;->e:I

    sget-object v0, Lsm/ap;->h:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsm/ap;->f:[B

    iget v0, p0, Lsm/ap;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ap;->g:I

    return-void
.end method

.method public a(Lcom/kingroot/kinguser/ccs;)V
    .locals 3

    const/4 v2, 0x5

    iget v0, p0, Lsm/ap;->a:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lsm/ap;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_0
    iget v0, p0, Lsm/ap;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget v0, p0, Lsm/ap;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget v0, p0, Lsm/ap;->d:I

    if-eqz v0, :cond_1

    iget v0, p0, Lsm/ap;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_1
    iget v0, p0, Lsm/ap;->e:I

    if-eqz v0, :cond_2

    iget v0, p0, Lsm/ap;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_2
    iget-object v0, p0, Lsm/ap;->f:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsm/ap;->f:[B

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccs;->a([BI)V

    :cond_3
    iget v0, p0, Lsm/ap;->g:I

    if-eqz v0, :cond_4

    iget v0, p0, Lsm/ap;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_4
    return-void
.end method
