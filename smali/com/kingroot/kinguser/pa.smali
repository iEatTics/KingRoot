.class Lcom/kingroot/kinguser/pa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bzp$a;


# instance fields
.field final synthetic ys:Lcom/kingroot/kinguser/oz$a;

.field final synthetic yt:I

.field final synthetic yu:Landroid/content/Context;

.field final synthetic yv:Lcom/kingroot/kinguser/pv;

.field final synthetic yw:Lcom/kingroot/kinguser/oz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/oz;Lcom/kingroot/kinguser/oz$a;ILandroid/content/Context;Lcom/kingroot/kinguser/pv;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kingroot/kinguser/pa;->yw:Lcom/kingroot/kinguser/oz;

    iput-object p2, p0, Lcom/kingroot/kinguser/pa;->ys:Lcom/kingroot/kinguser/oz$a;

    iput p3, p0, Lcom/kingroot/kinguser/pa;->yt:I

    iput-object p4, p0, Lcom/kingroot/kinguser/pa;->yu:Landroid/content/Context;

    iput-object p5, p0, Lcom/kingroot/kinguser/pa;->yv:Lcom/kingroot/kinguser/pv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bzo;)V
    .locals 3

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/pa;->ys:Lcom/kingroot/kinguser/oz$a;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/oz$a;->l(II)V

    .line 68
    new-instance v0, Lcom/kingroot/kinguser/pb;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/pb;-><init>(Lcom/kingroot/kinguser/pa;Lcom/kingroot/kinguser/bzo;)V

    .line 78
    invoke-virtual {v0}, Lcom/kingroot/kinguser/pb;->ny()Z

    .line 81
    :cond_0
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/bzo;)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/pa;->ys:Lcom/kingroot/kinguser/oz$a;

    const/16 v1, 0x8

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/oz$a;->l(II)V

    .line 86
    return-void
.end method
