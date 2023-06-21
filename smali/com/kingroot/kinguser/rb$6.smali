.class Lcom/kingroot/kinguser/rb$6;
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

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/rb;Lcom/kingroot/kinguser/rb$a;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 380
    iput-object p1, p0, Lcom/kingroot/kinguser/rb$6;->Fv:Lcom/kingroot/kinguser/rb;

    iput-object p2, p0, Lcom/kingroot/kinguser/rb$6;->Fw:Lcom/kingroot/kinguser/rb$a;

    iput-object p3, p0, Lcom/kingroot/kinguser/rb$6;->val$newViewAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lcom/kingroot/kinguser/rb$6;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/rb$e;-><init>(Lcom/kingroot/kinguser/rb$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$6;->val$newViewAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$6;->val$newView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 388
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$6;->val$newView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 389
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$6;->val$newView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 390
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$6;->Fv:Lcom/kingroot/kinguser/rb;

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$6;->Fw:Lcom/kingroot/kinguser/rb$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/rb$a;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/rb;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 391
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$6;->Fv:Lcom/kingroot/kinguser/rb;

    invoke-static {v0}, Lcom/kingroot/kinguser/rb;->f(Lcom/kingroot/kinguser/rb;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$6;->Fw:Lcom/kingroot/kinguser/rb$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/rb$a;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$6;->Fv:Lcom/kingroot/kinguser/rb;

    invoke-static {v0}, Lcom/kingroot/kinguser/rb;->e(Lcom/kingroot/kinguser/rb;)V

    .line 393
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$6;->Fv:Lcom/kingroot/kinguser/rb;

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$6;->Fw:Lcom/kingroot/kinguser/rb$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/rb$a;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/rb;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 383
    return-void
.end method
