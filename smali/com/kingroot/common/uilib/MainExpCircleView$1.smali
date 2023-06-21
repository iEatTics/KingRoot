.class Lcom/kingroot/common/uilib/MainExpCircleView$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/MainExpCircleView;->a(Lcom/android/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ob:Lcom/android/animation/AnimatorListenerAdapter;

.field final synthetic Oc:Lcom/kingroot/common/uilib/MainExpCircleView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/MainExpCircleView;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    iput-object p2, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 141
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    const-wide/16 v2, 0x0

    const/16 v4, 0x258

    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->a(Lcom/kingroot/common/uilib/MainExpCircleView;)Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    move-result-object v5

    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->b(Lcom/kingroot/common/uilib/MainExpCircleView;)Landroid/view/View;

    move-result-object v6

    invoke-static/range {v1 .. v7}, Lcom/kingroot/common/uilib/MainExpCircleView;->a(Lcom/kingroot/common/uilib/MainExpCircleView;JILandroid/view/View;Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 142
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    const-wide/16 v2, 0xc8

    const/16 v4, 0x190

    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->a(Lcom/kingroot/common/uilib/MainExpCircleView;)Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    move-result-object v5

    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->c(Lcom/kingroot/common/uilib/MainExpCircleView;)Landroid/view/View;

    move-result-object v6

    invoke-static/range {v1 .. v7}, Lcom/kingroot/common/uilib/MainExpCircleView;->a(Lcom/kingroot/common/uilib/MainExpCircleView;JILandroid/view/View;Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 143
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    const-wide/16 v2, 0x12c

    const/16 v4, 0x12c

    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->a(Lcom/kingroot/common/uilib/MainExpCircleView;)Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    move-result-object v5

    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->d(Lcom/kingroot/common/uilib/MainExpCircleView;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-static/range {v1 .. v7}, Lcom/kingroot/common/uilib/MainExpCircleView;->a(Lcom/kingroot/common/uilib/MainExpCircleView;JILandroid/view/View;Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 144
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->e(Lcom/kingroot/common/uilib/MainExpCircleView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/MainExpCircleView;->a(Lcom/kingroot/common/uilib/MainExpCircleView;Z)Z

    .line 146
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$1;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->f(Lcom/kingroot/common/uilib/MainExpCircleView;)Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->nS()V

    .line 148
    :cond_0
    return-void
.end method
