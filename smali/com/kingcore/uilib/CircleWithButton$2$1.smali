.class Lcom/kingcore/uilib/CircleWithButton$2$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/CircleWithButton$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ar:Lcom/kingcore/uilib/CircleWithButton$2;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/CircleWithButton$2;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/kingcore/uilib/CircleWithButton$2$1;->Ar:Lcom/kingcore/uilib/CircleWithButton$2;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 3

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 366
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$2$1;->Ar:Lcom/kingcore/uilib/CircleWithButton$2;

    iget-object v0, v0, Lcom/kingcore/uilib/CircleWithButton$2;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-static {v0}, Lcom/kingcore/uilib/CircleWithButton;->e(Lcom/kingcore/uilib/CircleWithButton;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 367
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$2$1;->Ar:Lcom/kingcore/uilib/CircleWithButton$2;

    iget-object v0, v0, Lcom/kingcore/uilib/CircleWithButton$2;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-static {v0}, Lcom/kingcore/uilib/CircleWithButton;->e(Lcom/kingcore/uilib/CircleWithButton;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kingcore/uilib/CircleWithButton$2$1;->Ar:Lcom/kingcore/uilib/CircleWithButton$2;

    iget-object v1, v1, Lcom/kingcore/uilib/CircleWithButton$2;->Ap:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kingcore/uilib/CircleWithButton$2$1;->Ar:Lcom/kingcore/uilib/CircleWithButton$2;

    iget-object v2, v2, Lcom/kingcore/uilib/CircleWithButton$2;->Aq:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$2$1;->Ar:Lcom/kingcore/uilib/CircleWithButton$2;

    iget-object v0, v0, Lcom/kingcore/uilib/CircleWithButton$2;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-static {v0}, Lcom/kingcore/uilib/CircleWithButton;->e(Lcom/kingcore/uilib/CircleWithButton;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/kingcore/uilib/CircleWithButton$2$1$1;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/CircleWithButton$2$1$1;-><init>(Lcom/kingcore/uilib/CircleWithButton$2$1;)V

    invoke-static {v0, v1}, Lcom/kingcore/uilib/CircleWithButton;->b(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 374
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 361
    return-void
.end method
