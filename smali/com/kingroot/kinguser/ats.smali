.class public Lcom/kingroot/kinguser/ats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aQc:Z

.field public aQd:Lcom/android/animation/AnimatorSet;

.field public adZ:Ljava/lang/String;

.field public mAppName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ats;->adZ:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ats;->aQd:Lcom/android/animation/AnimatorSet;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/ats;->mPos:I

    .line 24
    return-void
.end method

.method private Pw()[F
    .locals 6

    .prologue
    const/16 v5, 0xe

    .line 47
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 48
    const/16 v0, 0xf

    new-array v2, v0, [F

    .line 49
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    .line 50
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    .line 51
    const/high16 v3, -0x3f800000    # -4.0f

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    aput v3, v2, v0

    .line 49
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    aput v3, v2, v0

    goto :goto_1

    .line 56
    :cond_1
    const/4 v0, 0x0

    aput v0, v2, v5

    .line 57
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mPkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ats;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAdd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/ats;->aQc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ats;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(Landroid/view/View;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x44c

    const/4 v3, -0x1

    .line 29
    const-string v0, "rotation"

    invoke-direct {p0}, Lcom/kingroot/kinguser/ats;->Pw()[F

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v3}, Lcom/android/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 31
    invoke-virtual {v0, v4, v5}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 33
    const-string v1, "translationX"

    invoke-direct {p0}, Lcom/kingroot/kinguser/ats;->Pw()[F

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v3}, Lcom/android/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 35
    invoke-virtual {v1, v4, v5}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 37
    new-instance v2, Lcom/android/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/android/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/kingroot/kinguser/ats;->aQd:Lcom/android/animation/AnimatorSet;

    .line 38
    iget-object v2, p0, Lcom/kingroot/kinguser/ats;->aQd:Lcom/android/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/ats;->aQd:Lcom/android/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/android/animation/AnimatorSet;->start()V

    .line 40
    return-void
.end method
