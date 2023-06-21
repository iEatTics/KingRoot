.class Lcom/kingroot/kinguser/axg$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axg;->k(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYB:Ljava/util/List;

.field final synthetic aYv:Lcom/kingroot/kinguser/axg;

.field final synthetic aYw:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$15;->aYv:Lcom/kingroot/kinguser/axg;

    iput-object p2, p0, Lcom/kingroot/kinguser/axg$15;->aYB:Ljava/util/List;

    iput-boolean p3, p0, Lcom/kingroot/kinguser/axg$15;->aYw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 386
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$15;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-static {v0}, Lcom/kingroot/kinguser/axg;->d(Lcom/kingroot/kinguser/axg;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0f0244

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 388
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 390
    iget-object v1, p0, Lcom/kingroot/kinguser/axg$15;->aYB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/bgl$a;

    .line 392
    const v2, 0x7f0300b3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 394
    const v2, 0x7f0f0237

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 395
    iget-object v6, v1, Lcom/kingroot/kinguser/bgl$a;->boQ:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    const v2, 0x7f0f0238

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 398
    iget-object v6, v1, Lcom/kingroot/kinguser/bgl$a;->boR:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-boolean v1, v1, Lcom/kingroot/kinguser/bgl$a;->boS:Z

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/kingroot/kinguser/axg$15;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-static {v1}, Lcom/kingroot/kinguser/axg;->e(Lcom/kingroot/kinguser/axg;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 402
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 405
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$15;->aYv:Lcom/kingroot/kinguser/axg;

    iget-boolean v1, p0, Lcom/kingroot/kinguser/axg$15;->aYw:Z

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/axg;->cO(Z)V

    .line 409
    return-void
.end method
