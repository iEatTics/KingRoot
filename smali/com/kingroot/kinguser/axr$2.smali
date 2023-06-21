.class Lcom/kingroot/kinguser/axr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bic$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axr;->a(ILcom/kingroot/kinguser/bcy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbr:Lcom/kingroot/kinguser/axr;

.field final synthetic bbs:Lcom/kingroot/kinguser/bic;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axr;Lcom/kingroot/kinguser/bic;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/kingroot/kinguser/axr$2;->bbr:Lcom/kingroot/kinguser/axr;

    iput-object p2, p0, Lcom/kingroot/kinguser/axr$2;->bbs:Lcom/kingroot/kinguser/bic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1886e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$2;->bbs:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->dismiss()V

    .line 323
    return-void
.end method
