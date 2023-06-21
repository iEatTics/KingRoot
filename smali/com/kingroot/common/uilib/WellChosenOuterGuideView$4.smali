.class Lcom/kingroot/common/uilib/WellChosenOuterGuideView$4;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$4;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 327
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$4;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->f(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$4;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->f(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$4;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 330
    :cond_0
    return-void
.end method
