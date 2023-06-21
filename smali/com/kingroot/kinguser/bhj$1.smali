.class final Lcom/kingroot/kinguser/bhj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bhj;->a([Lcom/kingroot/kinguser/wq$a;[F[FJLcom/kingroot/kinguser/bhj$a;)Lcom/android/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bqN:Lcom/kingroot/kinguser/bhj$a;

.field final synthetic bqO:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bhj$a;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/kingroot/kinguser/bhj$1;->bqN:Lcom/kingroot/kinguser/bhj$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/bhj$1;->bqO:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 36
    iget-object v1, p0, Lcom/kingroot/kinguser/bhj$1;->bqN:Lcom/kingroot/kinguser/bhj$a;

    iget-object v2, p0, Lcom/kingroot/kinguser/bhj$1;->bqO:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/bhj$a;->b(Landroid/view/View;F)V

    .line 37
    return-void
.end method
