.class Lcom/kingroot/kinguser/alj$e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj$e;-><init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axA:Lcom/kingroot/kinguser/alj;

.field final synthetic axB:Lcom/kingroot/kinguser/alj$e;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj$e;Lcom/kingroot/kinguser/alj;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$e$1;->axB:Lcom/kingroot/kinguser/alj$e;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$e$1;->axA:Lcom/kingroot/kinguser/alj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$e$1;->axB:Lcom/kingroot/kinguser/alj$e;

    invoke-static {v0}, Lcom/kingroot/kinguser/alj$e;->d(Lcom/kingroot/kinguser/alj$e;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 630
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$e$1;->axB:Lcom/kingroot/kinguser/alj$e;

    invoke-static {v0}, Lcom/kingroot/kinguser/alj$e;->d(Lcom/kingroot/kinguser/alj$e;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/ani;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ani;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 631
    return-void
.end method
