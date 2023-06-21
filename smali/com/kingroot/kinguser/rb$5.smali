.class Lcom/kingroot/kinguser/rb$5;
.super Lcom/kingroot/kinguser/rb$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/rb;->a(Lcom/kingroot/kinguser/rb$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fv:Lcom/kingroot/kinguser/rb;

.field final synthetic Fw:Lcom/kingroot/kinguser/rb$a;

.field final synthetic val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/rb;Lcom/kingroot/kinguser/rb$a;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 360
    iput-object p1, p0, Lcom/kingroot/kinguser/rb$5;->Fv:Lcom/kingroot/kinguser/rb;

    iput-object p2, p0, Lcom/kingroot/kinguser/rb$5;->Fw:Lcom/kingroot/kinguser/rb$a;

    iput-object p3, p0, Lcom/kingroot/kinguser/rb$5;->val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/rb$e;-><init>(Lcom/kingroot/kinguser/rb$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$5;->val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 367
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 368
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 369
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$5;->Fv:Lcom/kingroot/kinguser/rb;

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$5;->Fw:Lcom/kingroot/kinguser/rb$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/rb$a;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/rb;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$5;->Fv:Lcom/kingroot/kinguser/rb;

    invoke-static {v0}, Lcom/kingroot/kinguser/rb;->f(Lcom/kingroot/kinguser/rb;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$5;->Fw:Lcom/kingroot/kinguser/rb$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/rb$a;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$5;->Fv:Lcom/kingroot/kinguser/rb;

    invoke-static {v0}, Lcom/kingroot/kinguser/rb;->e(Lcom/kingroot/kinguser/rb;)V

    .line 373
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$5;->Fv:Lcom/kingroot/kinguser/rb;

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$5;->Fw:Lcom/kingroot/kinguser/rb$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/rb$a;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/rb;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 363
    return-void
.end method
