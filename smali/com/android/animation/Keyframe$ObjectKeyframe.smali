.class Lcom/android/animation/Keyframe$ObjectKeyframe;
.super Lcom/android/animation/Keyframe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectKeyframe"
.end annotation


# instance fields
.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(FLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/animation/Keyframe;-><init>()V

    .line 250
    iput p1, p0, Lcom/android/animation/Keyframe$ObjectKeyframe;->mFraction:F

    .line 251
    iput-object p2, p0, Lcom/android/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    .line 252
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    .line 253
    iget-boolean v0, p0, Lcom/android/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/animation/Keyframe$ObjectKeyframe;->mValueType:Ljava/lang/Class;

    .line 254
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :cond_1
    const-class v0, Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public clone()Lcom/android/animation/Keyframe$ObjectKeyframe;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Lcom/android/animation/Keyframe$ObjectKeyframe;

    invoke-virtual {p0}, Lcom/android/animation/Keyframe$ObjectKeyframe;->getFraction()F

    move-result v1

    iget-object v2, p0, Lcom/android/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/animation/Keyframe$ObjectKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/animation/Keyframe$ObjectKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 269
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/animation/Keyframe;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/animation/Keyframe$ObjectKeyframe;->clone()Lcom/android/animation/Keyframe$ObjectKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/animation/Keyframe$ObjectKeyframe;->clone()Lcom/android/animation/Keyframe$ObjectKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    .line 262
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    .line 263
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
