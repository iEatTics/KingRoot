.class public final Lsm/c;
.super Lsm/ag;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsm/ag;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lsm/c;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/c;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/c;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/c;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/c;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lsm/c;->f:I

    const-string v0, ""

    iput-object v0, p0, Lsm/c;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/c;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/c;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsm/c;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ccr;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/c;->b:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/c;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/c;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/c;->e:Ljava/lang/String;

    iget v0, p0, Lsm/c;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/c;->f:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/c;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/c;->h:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/c;->i:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/c;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/kingroot/kinguser/ccs;)V
    .locals 2

    iget-object v0, p0, Lsm/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lsm/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsm/c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lsm/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsm/c;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lsm/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsm/c;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lsm/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsm/c;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_3
    iget v0, p0, Lsm/c;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    iget-object v0, p0, Lsm/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsm/c;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lsm/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lsm/c;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lsm/c;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lsm/c;->i:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_6
    iget-object v0, p0, Lsm/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lsm/c;->j:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method
