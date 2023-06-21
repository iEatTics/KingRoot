.class Lcom/kingroot/kinguser/axu$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu;->Qw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbX:Lcom/kingroot/kinguser/axu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$11;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$11;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->k(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$11;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->l(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$11;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->m(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$11;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->n(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070339

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$11;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->o(Lcom/kingroot/kinguser/axu;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 249
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    .line 250
    iget-object v1, p0, Lcom/kingroot/kinguser/axu$11;->bbX:Lcom/kingroot/kinguser/axu;

    iget-object v1, v1, Lcom/kingroot/kinguser/axu;->bbT:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v1}, Lcom/android/animation/ValueAnimator;->removeAllListeners()V

    .line 251
    iget-object v1, p0, Lcom/kingroot/kinguser/axu$11;->bbX:Lcom/kingroot/kinguser/axu;

    iget-object v1, v1, Lcom/kingroot/kinguser/axu;->bbT:Lcom/android/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/animation/ValueAnimator;->setIntValues([I)V

    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$11;->bbX:Lcom/kingroot/kinguser/axu;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu;->bbT:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 253
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$11;->bbX:Lcom/kingroot/kinguser/axu;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu;->bbT:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 254
    return-void
.end method
