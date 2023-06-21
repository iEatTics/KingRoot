.class Lcom/kingcore/uilib/RotateCircle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/RotateCircle;->gW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CA:Lcom/kingcore/uilib/RotateCircle;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/RotateCircle;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/kingcore/uilib/RotateCircle$1;->CA:Lcom/kingcore/uilib/RotateCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/kingcore/uilib/RotateCircle$1;->CA:Lcom/kingcore/uilib/RotateCircle;

    iget-object v0, p0, Lcom/kingcore/uilib/RotateCircle$1;->CA:Lcom/kingcore/uilib/RotateCircle;

    invoke-static {v0}, Lcom/kingcore/uilib/RotateCircle;->a(Lcom/kingcore/uilib/RotateCircle;)F

    move-result v2

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/kingcore/uilib/RotateCircle$1;->CA:Lcom/kingcore/uilib/RotateCircle;

    invoke-static {v3}, Lcom/kingcore/uilib/RotateCircle;->b(Lcom/kingcore/uilib/RotateCircle;)I

    move-result v3

    mul-int/2addr v0, v3

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/kingcore/uilib/RotateCircle;->a(Lcom/kingcore/uilib/RotateCircle;F)F

    .line 159
    iget-object v0, p0, Lcom/kingcore/uilib/RotateCircle$1;->CA:Lcom/kingcore/uilib/RotateCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RotateCircle;->invalidate()V

    .line 160
    return-void
.end method
