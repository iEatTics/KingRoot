.class Lcom/kingroot/kinguser/apz$c$a$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/apz$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public aKI:Landroid/widget/TextView;

.field public aKJ:Landroid/widget/ImageView;

.field final synthetic aKK:Lcom/kingroot/kinguser/apz$c$a;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/apz$c$a;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 506
    iput-object p1, p0, Lcom/kingroot/kinguser/apz$c$a$a;->aKK:Lcom/kingroot/kinguser/apz$c$a;

    .line 507
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 508
    const v0, 0x7f0f023d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c$a$a;->aKI:Landroid/widget/TextView;

    .line 509
    const v0, 0x7f0f023e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c$a$a;->aKJ:Landroid/widget/ImageView;

    .line 510
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aqc;)V
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 513
    if-nez p1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c$a$a;->aKI:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget v0, p1, Lcom/kingroot/kinguser/aqc;->gw:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 518
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c$a$a;->aKJ:Landroid/widget/ImageView;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 519
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c$a$a;->aKJ:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    goto :goto_0

    .line 523
    :cond_2
    iget v0, p1, Lcom/kingroot/kinguser/aqc;->gw:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 524
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 526
    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 527
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 528
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 529
    iget-object v1, p0, Lcom/kingroot/kinguser/apz$c$a$a;->aKJ:Landroid/widget/ImageView;

    const v2, 0x7f0200e3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 530
    iget-object v1, p0, Lcom/kingroot/kinguser/apz$c$a$a;->aKJ:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
