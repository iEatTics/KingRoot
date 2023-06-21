.class Lcom/kingroot/kinguser/axr$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/agh$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbr:Lcom/kingroot/kinguser/axr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axr;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/kingroot/kinguser/axr$3;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$3;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->b(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/auk$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/auk$a;->gJ(I)V

    .line 338
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$3;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->b(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/auk$a;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/auk$a;->a(Landroid/widget/Button;I)V

    .line 343
    return-void
.end method

.method public e(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$3;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->b(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/auk$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/auk$a;->gR(I)V

    .line 348
    return-void
.end method

.method public f(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$3;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->b(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/auk$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/auk$a;->gS(I)V

    .line 353
    return-void
.end method
