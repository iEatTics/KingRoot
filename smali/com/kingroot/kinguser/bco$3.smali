.class Lcom/kingroot/kinguser/bco$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bco;->XA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bhv:Lcom/kingroot/kinguser/bco;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bco;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/kingroot/kinguser/bco$3;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 485
    const-wide/16 v10, 0x514

    .line 486
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40000000    # -2.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 488
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 489
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 490
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 491
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 492
    invoke-virtual {v3, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 493
    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 494
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 495
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 496
    new-instance v0, Lcom/kingroot/kinguser/bco$3$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bco$3$1;-><init>(Lcom/kingroot/kinguser/bco$3;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 510
    iget-object v0, p0, Lcom/kingroot/kinguser/bco$3;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v0}, Lcom/kingroot/kinguser/bco;->e(Lcom/kingroot/kinguser/bco;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 511
    return-void
.end method
