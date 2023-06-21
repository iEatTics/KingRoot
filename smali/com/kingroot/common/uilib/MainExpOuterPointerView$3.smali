.class Lcom/kingroot/common/uilib/MainExpOuterPointerView$3;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/MainExpOuterPointerView;->b(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/MainExpOuterPointerView;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView$3;->Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 131
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView$3;->Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 132
    return-void
.end method
