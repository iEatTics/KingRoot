.class Lcom/kingcore/uilib/ClipView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/ClipView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AD:Lcom/kingcore/uilib/ClipView;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/ClipView;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kingcore/uilib/ClipView$1;->AD:Lcom/kingcore/uilib/ClipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/kingcore/uilib/ClipView$1;->AD:Lcom/kingcore/uilib/ClipView;

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/kingcore/uilib/ClipView;->a(Lcom/kingcore/uilib/ClipView;F)F

    .line 74
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView$1;->AD:Lcom/kingcore/uilib/ClipView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ClipView;->invalidate()V

    .line 75
    return-void
.end method
