.class public final Lsm/as;
.super Lsm/ag;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsm/ag;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lsm/as;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/as;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ccr;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/as;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/as;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/kingroot/kinguser/ccs;)V
    .locals 2

    iget-object v0, p0, Lsm/as;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsm/as;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lsm/as;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsm/as;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
