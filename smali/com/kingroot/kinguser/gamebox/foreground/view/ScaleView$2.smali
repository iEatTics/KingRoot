.class Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->a(IIIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$2;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$2;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->a(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;I)I

    .line 89
    return-void
.end method
