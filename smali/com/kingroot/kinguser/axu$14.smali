.class Lcom/kingroot/kinguser/axu$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu;->a(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTt:Z

.field final synthetic aWa:I

.field final synthetic bbX:Lcom/kingroot/kinguser/axu;

.field final synthetic bcd:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu;ZZI)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/axu$14;->aTt:Z

    iput-boolean p3, p0, Lcom/kingroot/kinguser/axu$14;->bcd:Z

    iput p4, p0, Lcom/kingroot/kinguser/axu$14;->aWa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 301
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axu$14;->aTt:Z

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->o(Lcom/kingroot/kinguser/axu;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axu$14;->bcd:Z

    if-eqz v0, :cond_1

    .line 306
    iget v0, p0, Lcom/kingroot/kinguser/axu$14;->aWa:I

    if-lez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->m(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->k(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->l(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->t(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07033a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 313
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->u(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070335

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/kingroot/kinguser/axu$14;->aWa:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0, v5}, Lcom/kingroot/kinguser/axu;->a(Lcom/kingroot/kinguser/axu;Z)V

    .line 377
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->m(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->k(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->l(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->q(Lcom/kingroot/kinguser/axu;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020294

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->r(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070337

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->r(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->s(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07033b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 326
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0, v5}, Lcom/kingroot/kinguser/axu;->a(Lcom/kingroot/kinguser/axu;Z)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->o(Lcom/kingroot/kinguser/axu;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->m(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->k(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->l(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->q(Lcom/kingroot/kinguser/axu;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020291

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->r(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00b7

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->r(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 339
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->s(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070333

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->o(Lcom/kingroot/kinguser/axu;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070332

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 343
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->o(Lcom/kingroot/kinguser/axu;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axu$14$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axu$14$1;-><init>(Lcom/kingroot/kinguser/axu$14;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/axu;->a(Lcom/kingroot/kinguser/axu;Z)V

    goto/16 :goto_0

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->o(Lcom/kingroot/kinguser/axu;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->m(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->k(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->l(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18896

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->o(Lcom/kingroot/kinguser/axu;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070238

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 364
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->o(Lcom/kingroot/kinguser/axu;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axu$14$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axu$14$2;-><init>(Lcom/kingroot/kinguser/axu$14;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->q(Lcom/kingroot/kinguser/axu;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020292

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->r(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070336

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 373
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->r(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0014

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/axu;->a(Lcom/kingroot/kinguser/axu;Z)V

    goto/16 :goto_0
.end method
