.class public final Lsm/f;
.super Lsm/ag;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lsm/ag;-><init>()V

    iput v0, p0, Lsm/f;->a:I

    iput v0, p0, Lsm/f;->b:I

    iput v0, p0, Lsm/f;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ccr;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lsm/f;->a:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/f;->a:I

    iget v0, p0, Lsm/f;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/f;->b:I

    iget v0, p0, Lsm/f;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/f;->c:I

    return-void
.end method

.method public a(Lcom/kingroot/kinguser/ccs;)V
    .locals 2

    iget v0, p0, Lsm/f;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget v0, p0, Lsm/f;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget v0, p0, Lsm/f;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    return-void
.end method
