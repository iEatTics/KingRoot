.class Lcom/kingcore/uilib/LoadingCircle$1;
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
    .line 140
    iput-object p1, p0, Lcom/kingcore/uilib/LoadingCircle$1;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/kingcore/uilib/LoadingCircle$1;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/kingcore/uilib/LoadingCircle;->a(Lcom/kingcore/uilib/LoadingCircle;I)I

    .line 145
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle$1;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/LoadingCircle;->invalidate()V

    .line 146
    return-void
.end method
