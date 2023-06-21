.class Lcom/kingroot/kinguser/axu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu;->cW(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTt:Z

.field final synthetic bbX:Lcom/kingroot/kinguser/axu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu;Z)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$2;->bbX:Lcom/kingroot/kinguser/axu;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/axu$2;->aTt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x7f0f0146

    const v2, 0x7f0f00d1

    const v5, 0x7f02016b

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 386
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$2;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->e(Lcom/kingroot/kinguser/axu;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$2;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->e(Lcom/kingroot/kinguser/axu;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$2;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->j(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$2;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->v(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 391
    const v1, 0x7f020296

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 392
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$2;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->v(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 393
    const v1, 0x7f070340

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 394
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$2;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->v(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f025a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 395
    const v1, 0x7f07033e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 396
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$2;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->w(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 397
    const v1, 0x7f020295

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 398
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$2;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->w(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 399
    const v1, 0x7f07033f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 400
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$2;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->w(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f025a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 401
    const v1, 0x7f07033d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 402
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$2;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->v(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 403
    iget-object v1, p0, Lcom/kingroot/kinguser/axu$2;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v1}, Lcom/kingroot/kinguser/axu;->w(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 405
    iget-boolean v2, p0, Lcom/kingroot/kinguser/axu$2;->aTt:Z

    if-eqz v2, :cond_1

    .line 406
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
