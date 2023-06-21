.class Lcom/kingcore/uilib/PercentageIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/PercentageIndicator;->setPercentage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bm:Lcom/kingcore/uilib/PercentageIndicator;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/PercentageIndicator;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/kingcore/uilib/PercentageIndicator$1;->Bm:Lcom/kingcore/uilib/PercentageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator$1;->Bm:Lcom/kingcore/uilib/PercentageIndicator;

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/kingcore/uilib/PercentageIndicator;->a(Lcom/kingcore/uilib/PercentageIndicator;I)I

    .line 115
    iget-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator$1;->Bm:Lcom/kingcore/uilib/PercentageIndicator;

    invoke-virtual {v0}, Lcom/kingcore/uilib/PercentageIndicator;->invalidate()V

    .line 116
    return-void
.end method
