.class Lcom/kingroot/kinguser/atn$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atn;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atn;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atn;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v0}, Lcom/kingroot/kinguser/atn;->c(Lcom/kingroot/kinguser/atn;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 238
    new-array v0, v1, [I

    .line 239
    new-array v1, v1, [I

    .line 240
    iget-object v2, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v2}, Lcom/kingroot/kinguser/atn;->c(Lcom/kingroot/kinguser/atn;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 241
    iget-object v2, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v2}, Lcom/kingroot/kinguser/atn;->h(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->getLocationOnScreen([I)V

    .line 242
    iget-object v2, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    iget-object v3, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v3}, Lcom/kingroot/kinguser/atn;->i(Lcom/kingroot/kinguser/atn;)I

    move-result v3

    aget v4, v0, v5

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v4}, Lcom/kingroot/kinguser/atn;->j(Lcom/kingroot/kinguser/atn;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/atn;->a(Lcom/kingroot/kinguser/atn;I)I

    .line 243
    iget-object v2, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    iget-object v3, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v3}, Lcom/kingroot/kinguser/atn;->k(Lcom/kingroot/kinguser/atn;)I

    move-result v3

    aget v0, v0, v6

    sub-int v0, v3, v0

    iget-object v3, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v3}, Lcom/kingroot/kinguser/atn;->l(Lcom/kingroot/kinguser/atn;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/atn;->b(Lcom/kingroot/kinguser/atn;I)I

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    iget-object v2, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v2}, Lcom/kingroot/kinguser/atn;->j(Lcom/kingroot/kinguser/atn;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v3}, Lcom/kingroot/kinguser/atn;->c(Lcom/kingroot/kinguser/atn;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/atn;->a(Lcom/kingroot/kinguser/atn;F)F

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    iget-object v2, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v2}, Lcom/kingroot/kinguser/atn;->l(Lcom/kingroot/kinguser/atn;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v3}, Lcom/kingroot/kinguser/atn;->c(Lcom/kingroot/kinguser/atn;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/atn;->b(Lcom/kingroot/kinguser/atn;F)F

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    iget-object v2, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v2}, Lcom/kingroot/kinguser/atn;->m(Lcom/kingroot/kinguser/atn;)I

    move-result v2

    aget v3, v1, v5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/atn;->c(Lcom/kingroot/kinguser/atn;F)F

    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    iget-object v2, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v2}, Lcom/kingroot/kinguser/atn;->n(Lcom/kingroot/kinguser/atn;)I

    move-result v2

    aget v1, v1, v6

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atn;->d(Lcom/kingroot/kinguser/atn;F)F

    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v0}, Lcom/kingroot/kinguser/atn;->o(Lcom/kingroot/kinguser/atn;)V

    .line 251
    return v5
.end method
