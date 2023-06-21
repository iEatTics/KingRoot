.class Lcom/kingroot/kinguser/ahm$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ahm$2;->onAnimationEnd(Lcom/android/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ara:Lcom/kingroot/kinguser/ahm$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ahm$2;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/kingroot/kinguser/ahm$2$1;->ara:Lcom/kingroot/kinguser/ahm$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/ahm$2$1;->ara:Lcom/kingroot/kinguser/ahm$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahm$2;->aqW:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 167
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 168
    new-instance v1, Lcom/kingroot/kinguser/ahm$2$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ahm$2$1$1;-><init>(Lcom/kingroot/kinguser/ahm$2$1;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 186
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    .line 187
    return-void

    .line 166
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
