.class Lcom/kingroot/kinguser/bco$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bco$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bhw:Lcom/kingroot/kinguser/bco$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bco$3;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/kingroot/kinguser/bco$3$1;->bhw:Lcom/kingroot/kinguser/bco$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/kingroot/kinguser/bco$3$1;->bhw:Lcom/kingroot/kinguser/bco$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/bco$3;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v0}, Lcom/kingroot/kinguser/bco;->e(Lcom/kingroot/kinguser/bco;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 508
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 499
    return-void
.end method
