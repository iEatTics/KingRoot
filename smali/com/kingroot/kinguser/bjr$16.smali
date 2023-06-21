.class Lcom/kingroot/kinguser/bjr$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjr;->aeq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byr:Lcom/kingroot/kinguser/bjr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$16;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 628
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$16;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->aep()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$16;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->aen()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$16;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bjr;->a(Lcom/kingroot/kinguser/bjr;Z)Z

    .line 632
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$16;->byr:Lcom/kingroot/kinguser/bjr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bjr;->a(Lcom/kingroot/kinguser/bjr;Z)Z

    .line 621
    return-void
.end method
