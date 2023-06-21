.class Lcom/kingroot/kinguser/atw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atw;->getWhiteCircleAnim()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aQI:Lcom/kingroot/kinguser/atw;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atw;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/kingroot/kinguser/atw$1;->aQI:Lcom/kingroot/kinguser/atw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/atw$1;->aQI:Lcom/kingroot/kinguser/atw;

    invoke-static {v0}, Lcom/kingroot/kinguser/atw;->a(Lcom/kingroot/kinguser/atw;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/atw$1;->aQI:Lcom/kingroot/kinguser/atw;

    invoke-static {v0}, Lcom/kingroot/kinguser/atw;->b(Lcom/kingroot/kinguser/atw;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/atw$1;->aQI:Lcom/kingroot/kinguser/atw;

    invoke-static {v0}, Lcom/kingroot/kinguser/atw;->c(Lcom/kingroot/kinguser/atw;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/kingroot/kinguser/atw$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atw$1$1;-><init>(Lcom/kingroot/kinguser/atw$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 152
    iget-object v1, p0, Lcom/kingroot/kinguser/atw$1;->aQI:Lcom/kingroot/kinguser/atw;

    invoke-static {v1}, Lcom/kingroot/kinguser/atw;->e(Lcom/kingroot/kinguser/atw;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/atw$1;->aQI:Lcom/kingroot/kinguser/atw;

    invoke-static {v0}, Lcom/kingroot/kinguser/atw;->a(Lcom/kingroot/kinguser/atw;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    return-void
.end method
