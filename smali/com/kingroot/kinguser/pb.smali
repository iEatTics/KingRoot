.class Lcom/kingroot/kinguser/pb;
.super Lcom/kingroot/kinguser/bzr;
.source "SourceFile"


# instance fields
.field final synthetic yx:Lcom/kingroot/kinguser/bzo;

.field final synthetic yy:Lcom/kingroot/kinguser/pa;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/pa;Lcom/kingroot/kinguser/bzo;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kingroot/kinguser/pb;->yy:Lcom/kingroot/kinguser/pa;

    iput-object p2, p0, Lcom/kingroot/kinguser/pb;->yx:Lcom/kingroot/kinguser/bzo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bzr;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 71
    invoke-super {p0}, Lcom/kingroot/kinguser/bzr;->run()V

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/pb;->yy:Lcom/kingroot/kinguser/pa;

    iget v0, v0, Lcom/kingroot/kinguser/pa;->yt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/pb;->yy:Lcom/kingroot/kinguser/pa;

    iget-object v0, v0, Lcom/kingroot/kinguser/pa;->ys:Lcom/kingroot/kinguser/oz$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/pb;->yy:Lcom/kingroot/kinguser/pa;

    iget-object v1, v1, Lcom/kingroot/kinguser/pa;->yw:Lcom/kingroot/kinguser/oz;

    iget-object v2, p0, Lcom/kingroot/kinguser/pb;->yy:Lcom/kingroot/kinguser/pa;

    iget-object v2, v2, Lcom/kingroot/kinguser/pa;->yu:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/pb;->yx:Lcom/kingroot/kinguser/bzo;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bzo;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/pb;->yy:Lcom/kingroot/kinguser/pa;

    iget-object v4, v4, Lcom/kingroot/kinguser/pa;->yv:Lcom/kingroot/kinguser/pv;

    invoke-virtual {v1, v2, v3, v4}, Lcom/kingroot/kinguser/oz;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/pv;)I

    move-result v1

    invoke-interface {v0, v5, v1}, Lcom/kingroot/kinguser/oz$a;->l(II)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/pb;->yy:Lcom/kingroot/kinguser/pa;

    iget-object v0, v0, Lcom/kingroot/kinguser/pa;->ys:Lcom/kingroot/kinguser/oz$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/pb;->yy:Lcom/kingroot/kinguser/pa;

    iget-object v1, v1, Lcom/kingroot/kinguser/pa;->yw:Lcom/kingroot/kinguser/oz;

    iget-object v2, p0, Lcom/kingroot/kinguser/pb;->yx:Lcom/kingroot/kinguser/bzo;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bzo;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/pb;->yy:Lcom/kingroot/kinguser/pa;

    iget-object v3, v3, Lcom/kingroot/kinguser/pa;->yv:Lcom/kingroot/kinguser/pv;

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/oz;->b(Ljava/lang/String;Lcom/kingroot/kinguser/pv;)I

    move-result v1

    invoke-interface {v0, v5, v1}, Lcom/kingroot/kinguser/oz$a;->l(II)V

    goto :goto_0
.end method
