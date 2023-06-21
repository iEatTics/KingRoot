.class Lcom/kingcore/uilib/RotatingCircle$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/RotatingCircle;->gW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CE:Lcom/kingcore/uilib/RotatingCircle;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/RotatingCircle;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/kingcore/uilib/RotatingCircle$2;->CE:Lcom/kingcore/uilib/RotatingCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 215
    iget-object v1, p0, Lcom/kingcore/uilib/RotatingCircle$2;->CE:Lcom/kingcore/uilib/RotatingCircle;

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/kingcore/uilib/RotatingCircle;->a(Lcom/kingcore/uilib/RotatingCircle;I)I

    .line 216
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle$2;->CE:Lcom/kingcore/uilib/RotatingCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RotatingCircle;->invalidate()V

    .line 217
    return-void
.end method
