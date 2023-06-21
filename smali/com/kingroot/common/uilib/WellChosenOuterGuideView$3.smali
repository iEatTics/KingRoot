.class Lcom/kingroot/common/uilib/WellChosenOuterGuideView$3;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->c(Lcom/android/animation/AnimatorListenerAdapter;)V
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
    .line 276
    iput-object p1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$3;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 280
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$3;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->e(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)V

    .line 281
    return-void
.end method
