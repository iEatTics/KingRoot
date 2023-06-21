.class Lcom/kingroot/kinguser/axg$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axg;->m(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYv:Lcom/kingroot/kinguser/axg;

.field final synthetic aYz:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$9;->aYv:Lcom/kingroot/kinguser/axg;

    iput-object p2, p0, Lcom/kingroot/kinguser/axg$9;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/kingroot/kinguser/axg$9;->aYz:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$9;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$9;->aYv:Lcom/kingroot/kinguser/axg;

    iget-object v1, p0, Lcom/kingroot/kinguser/axg$9;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/kingroot/kinguser/axg$9;->aYz:I

    iget-object v3, p0, Lcom/kingroot/kinguser/axg$9;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/axg;->a(Lcom/kingroot/kinguser/axg;Landroid/view/View;II)V

    .line 267
    const/4 v0, 0x1

    return v0
.end method
