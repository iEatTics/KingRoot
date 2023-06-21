.class public final Lsm/e;
.super Lsm/ag;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lsm/ag;-><init>()V

    iput v0, p0, Lsm/e;->a:I

    iput v0, p0, Lsm/e;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ccr;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lsm/e;->a:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/e;->a:I

    iget v0, p0, Lsm/e;->b:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/e;->b:I

    return-void
.end method

.method public a(Lcom/kingroot/kinguser/ccs;)V
    .locals 2

    iget v0, p0, Lsm/e;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget v0, p0, Lsm/e;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    return-void
.end method
