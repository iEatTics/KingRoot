.class Lcom/kingroot/kinguser/rb$4;
.super Lcom/kingroot/kinguser/rb$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/rb;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fv:Lcom/kingroot/kinguser/rb;

.field final synthetic val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/rb;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 302
    iput-object p1, p0, Lcom/kingroot/kinguser/rb$4;->Fv:Lcom/kingroot/kinguser/rb;

    iput-object p2, p0, Lcom/kingroot/kinguser/rb$4;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/kingroot/kinguser/rb$4;->val$deltaX:I

    iput p4, p0, Lcom/kingroot/kinguser/rb$4;->val$deltaY:I

    iput-object p5, p0, Lcom/kingroot/kinguser/rb$4;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/rb$e;-><init>(Lcom/kingroot/kinguser/rb$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    iget v0, p0, Lcom/kingroot/kinguser/rb$4;->val$deltaX:I

    if-eqz v0, :cond_0

    .line 309
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 311
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/rb$4;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 312
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 314
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$4;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$4;->Fv:Lcom/kingroot/kinguser/rb;

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$4;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/rb;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$4;->Fv:Lcom/kingroot/kinguser/rb;

    invoke-static {v0}, Lcom/kingroot/kinguser/rb;->d(Lcom/kingroot/kinguser/rb;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$4;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$4;->Fv:Lcom/kingroot/kinguser/rb;

    invoke-static {v0}, Lcom/kingroot/kinguser/rb;->e(Lcom/kingroot/kinguser/rb;)V

    .line 321
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$4;->Fv:Lcom/kingroot/kinguser/rb;

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$4;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/rb;->dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 305
    return-void
.end method
