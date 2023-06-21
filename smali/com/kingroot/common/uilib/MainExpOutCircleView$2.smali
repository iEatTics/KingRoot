.class Lcom/kingroot/common/uilib/MainExpOutCircleView$2;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/MainExpOutCircleView;->gW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pf:Lcom/kingroot/common/uilib/MainExpOutCircleView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/MainExpOutCircleView;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView$2;->Pf:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 296
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 301
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView$2;->Pf:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->a(Lcom/kingroot/common/uilib/MainExpOutCircleView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/MainExpOutCircleView$a;

    .line 302
    invoke-interface {v0}, Lcom/kingroot/common/uilib/MainExpOutCircleView$a;->nQ()V

    goto :goto_0

    .line 304
    :cond_0
    return-void
.end method
