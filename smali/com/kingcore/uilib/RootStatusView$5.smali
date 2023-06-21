.class Lcom/kingcore/uilib/RootStatusView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/RootStatusView;->w(Z)Lcom/android/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Cf:Lcom/kingcore/uilib/RootStatusView;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/RootStatusView;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/kingcore/uilib/RootStatusView$5;->Cf:Lcom/kingcore/uilib/RootStatusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 315
    iget-object v1, p0, Lcom/kingcore/uilib/RootStatusView$5;->Cf:Lcom/kingcore/uilib/RootStatusView;

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/kingcore/uilib/RootStatusView;->b(Lcom/kingcore/uilib/RootStatusView;I)I

    .line 316
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView$5;->Cf:Lcom/kingcore/uilib/RootStatusView;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kingcore/uilib/RootStatusView$5;->Cf:Lcom/kingcore/uilib/RootStatusView;

    invoke-static {v2}, Lcom/kingcore/uilib/RootStatusView;->c(Lcom/kingcore/uilib/RootStatusView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingcore/uilib/RootStatusView$5;->Cf:Lcom/kingcore/uilib/RootStatusView;

    invoke-static {v3}, Lcom/kingcore/uilib/RootStatusView;->a(Lcom/kingcore/uilib/RootStatusView;)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, v1}, Lcom/kingcore/uilib/RootStatusView;->a(Lcom/kingcore/uilib/RootStatusView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 317
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView$5;->Cf:Lcom/kingcore/uilib/RootStatusView;

    invoke-static {v0, v5}, Lcom/kingcore/uilib/RootStatusView;->c(Lcom/kingcore/uilib/RootStatusView;I)I

    .line 318
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView$5;->Cf:Lcom/kingcore/uilib/RootStatusView;

    invoke-static {v0, v5}, Lcom/kingcore/uilib/RootStatusView;->d(Lcom/kingcore/uilib/RootStatusView;I)I

    .line 319
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView$5;->Cf:Lcom/kingcore/uilib/RootStatusView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RootStatusView;->postInvalidate()V

    .line 320
    return-void
.end method
