.class Lcom/kingcore/uilib/LoadingCircle$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/LoadingCircle;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bc:Lcom/kingcore/uilib/LoadingCircle;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/LoadingCircle;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/kingcore/uilib/LoadingCircle$3;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 166
    iget-object v1, p0, Lcom/kingcore/uilib/LoadingCircle$3;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v1, v0}, Lcom/kingcore/uilib/LoadingCircle;->b(Lcom/kingcore/uilib/LoadingCircle;I)I

    .line 167
    return-void
.end method
