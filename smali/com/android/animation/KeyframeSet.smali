.class Lcom/android/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mEvaluator:Lcom/android/animation/TypeEvaluator;

.field mFirstKeyframe:Lcom/android/animation/Keyframe;

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mKeyframes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field mLastKeyframe:Lcom/android/animation/Keyframe;

.field mNumKeyframes:I


# direct methods
.method public varargs constructor <init>([Lcom/android/animation/Keyframe;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    array-length v0, p1

    iput v0, p0, Lcom/android/animation/KeyframeSet;->mNumKeyframes:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Lcom/android/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v0, p0, Lcom/android/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe;

    iput-object v0, p0, Lcom/android/animation/KeyframeSet;->mFirstKeyframe:Lcom/android/animation/Keyframe;

    .line 49
    iget-object v0, p0, Lcom/android/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe;

    iput-object v0, p0, Lcom/android/animation/KeyframeSet;->mLastKeyframe:Lcom/android/animation/Keyframe;

    .line 50
    iget-object v0, p0, Lcom/android/animation/KeyframeSet;->mLastKeyframe:Lcom/android/animation/Keyframe;

    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 51
    return-void
.end method

.method public static varargs ofFloat([F)Lcom/android/animation/KeyframeSet;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 69
    array-length v2, p0

    .line 70
    const/4 v0, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v3, v0, [Lcom/android/animation/Keyframe$FloatKeyframe;

    .line 71
    if-ne v2, v1, :cond_1

    .line 72
    invoke-static {v5}, Lcom/android/animation/Keyframe;->ofFloat(F)Lcom/android/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe$FloatKeyframe;

    aput-object v0, v3, v4

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    aget v2, p0, v4

    invoke-static {v0, v2}, Lcom/android/animation/Keyframe;->ofFloat(FF)Lcom/android/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe$FloatKeyframe;

    aput-object v0, v3, v1

    .line 80
    :cond_0
    new-instance v0, Lcom/android/animation/FloatKeyframeSet;

    invoke-direct {v0, v3}, Lcom/android/animation/FloatKeyframeSet;-><init>([Lcom/android/animation/Keyframe$FloatKeyframe;)V

    return-object v0

    .line 75
    :cond_1
    aget v0, p0, v4

    invoke-static {v5, v0}, Lcom/android/animation/Keyframe;->ofFloat(FF)Lcom/android/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe$FloatKeyframe;

    aput-object v0, v3, v4

    .line 76
    :goto_0
    if-ge v1, v2, :cond_0

    .line 77
    int-to-float v0, v1

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v0, v4

    aget v4, p0, v1

    invoke-static {v0, v4}, Lcom/android/animation/Keyframe;->ofFloat(FF)Lcom/android/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe$FloatKeyframe;

    aput-object v0, v3, v1

    .line 76
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static varargs ofInt([I)Lcom/android/animation/KeyframeSet;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 54
    array-length v2, p0

    .line 55
    const/4 v0, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v3, v0, [Lcom/android/animation/Keyframe$IntKeyframe;

    .line 56
    if-ne v2, v1, :cond_1

    .line 57
    invoke-static {v5}, Lcom/android/animation/Keyframe;->ofInt(F)Lcom/android/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe$IntKeyframe;

    aput-object v0, v3, v4

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    aget v2, p0, v4

    invoke-static {v0, v2}, Lcom/android/animation/Keyframe;->ofInt(FI)Lcom/android/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe$IntKeyframe;

    aput-object v0, v3, v1

    .line 65
    :cond_0
    new-instance v0, Lcom/android/animation/IntKeyframeSet;

    invoke-direct {v0, v3}, Lcom/android/animation/IntKeyframeSet;-><init>([Lcom/android/animation/Keyframe$IntKeyframe;)V

    return-object v0

    .line 60
    :cond_1
    aget v0, p0, v4

    invoke-static {v5, v0}, Lcom/android/animation/Keyframe;->ofInt(FI)Lcom/android/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe$IntKeyframe;

    aput-object v0, v3, v4

    .line 61
    :goto_0
    if-ge v1, v2, :cond_0

    .line 62
    int-to-float v0, v1

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v0, v4

    aget v4, p0, v1

    invoke-static {v0, v4}, Lcom/android/animation/Keyframe;->ofInt(FI)Lcom/android/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe$IntKeyframe;

    aput-object v0, v3, v1

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static varargs ofKeyframe([Lcom/android/animation/Keyframe;)Lcom/android/animation/KeyframeSet;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 85
    array-length v6, p0

    move v5, v4

    move v0, v4

    move v2, v4

    move v3, v4

    .line 89
    :goto_0
    if-ge v5, v6, :cond_2

    .line 90
    aget-object v7, p0, v5

    instance-of v7, v7, Lcom/android/animation/Keyframe$FloatKeyframe;

    if-eqz v7, :cond_0

    move v3, v1

    .line 89
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 92
    :cond_0
    aget-object v7, p0, v5

    instance-of v7, v7, Lcom/android/animation/Keyframe$IntKeyframe;

    if-eqz v7, :cond_1

    move v2, v1

    .line 93
    goto :goto_1

    :cond_1
    move v0, v1

    .line 95
    goto :goto_1

    .line 98
    :cond_2
    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    .line 99
    new-array v1, v6, [Lcom/android/animation/Keyframe$FloatKeyframe;

    .line 100
    :goto_2
    if-ge v4, v6, :cond_3

    .line 101
    aget-object v0, p0, v4

    check-cast v0, Lcom/android/animation/Keyframe$FloatKeyframe;

    aput-object v0, v1, v4

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 103
    :cond_3
    new-instance v0, Lcom/android/animation/FloatKeyframeSet;

    invoke-direct {v0, v1}, Lcom/android/animation/FloatKeyframeSet;-><init>([Lcom/android/animation/Keyframe$FloatKeyframe;)V

    .line 111
    :goto_3
    return-object v0

    .line 104
    :cond_4
    if-eqz v2, :cond_6

    if-nez v3, :cond_6

    if-nez v0, :cond_6

    .line 105
    new-array v2, v6, [Lcom/android/animation/Keyframe$IntKeyframe;

    move v1, v4

    .line 106
    :goto_4
    if-ge v1, v6, :cond_5

    .line 107
    aget-object v0, p0, v1

    check-cast v0, Lcom/android/animation/Keyframe$IntKeyframe;

    aput-object v0, v2, v1

    .line 106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 109
    :cond_5
    new-instance v0, Lcom/android/animation/IntKeyframeSet;

    invoke-direct {v0, v2}, Lcom/android/animation/IntKeyframeSet;-><init>([Lcom/android/animation/Keyframe$IntKeyframe;)V

    goto :goto_3

    .line 111
    :cond_6
    new-instance v0, Lcom/android/animation/KeyframeSet;

    invoke-direct {v0, p0}, Lcom/android/animation/KeyframeSet;-><init>([Lcom/android/animation/Keyframe;)V

    goto :goto_3
.end method

.method public static varargs ofObject([Ljava/lang/Object;)Lcom/android/animation/KeyframeSet;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 116
    array-length v2, p0

    .line 117
    const/4 v0, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v3, v0, [Lcom/android/animation/Keyframe$ObjectKeyframe;

    .line 118
    if-ne v2, v1, :cond_1

    .line 119
    invoke-static {v5}, Lcom/android/animation/Keyframe;->ofObject(F)Lcom/android/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe$ObjectKeyframe;

    aput-object v0, v3, v4

    .line 120
    const/high16 v0, 0x3f800000    # 1.0f

    aget-object v2, p0, v4

    invoke-static {v0, v2}, Lcom/android/animation/Keyframe;->ofObject(FLjava/lang/Object;)Lcom/android/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe$ObjectKeyframe;

    aput-object v0, v3, v1

    .line 127
    :cond_0
    new-instance v0, Lcom/android/animation/KeyframeSet;

    invoke-direct {v0, v3}, Lcom/android/animation/KeyframeSet;-><init>([Lcom/android/animation/Keyframe;)V

    return-object v0

    .line 122
    :cond_1
    aget-object v0, p0, v4

    invoke-static {v5, v0}, Lcom/android/animation/Keyframe;->ofObject(FLjava/lang/Object;)Lcom/android/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe$ObjectKeyframe;

    aput-object v0, v3, v4

    .line 123
    :goto_0
    if-ge v1, v2, :cond_0

    .line 124
    int-to-float v0, v1

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v0, v4

    aget-object v4, p0, v1

    invoke-static {v0, v4}, Lcom/android/animation/Keyframe;->ofObject(FLjava/lang/Object;)Lcom/android/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe$ObjectKeyframe;

    aput-object v0, v3, v1

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/android/animation/KeyframeSet;
    .locals 5

    .prologue
    .line 145
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/android/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 150
    iget-object v0, p0, Lcom/android/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 151
    new-array v4, v3, [Lcom/android/animation/Keyframe;

    .line 152
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 153
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe;

    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->clone()Lcom/android/animation/Keyframe;

    move-result-object v0

    aput-object v0, v4, v1

    .line 152
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 155
    :cond_0
    new-instance v0, Lcom/android/animation/KeyframeSet;

    invoke-direct {v0, v4}, Lcom/android/animation/KeyframeSet;-><init>([Lcom/android/animation/Keyframe;)V

    .line 156
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/animation/KeyframeSet;->clone()Lcom/android/animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 174
    iget v1, p0, Lcom/android/animation/KeyframeSet;->mNumKeyframes:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/animation/KeyframeSet;->mEvaluator:Lcom/android/animation/TypeEvaluator;

    iget-object v1, p0, Lcom/android/animation/KeyframeSet;->mFirstKeyframe:Lcom/android/animation/Keyframe;

    invoke-virtual {v1}, Lcom/android/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/animation/KeyframeSet;->mLastKeyframe:Lcom/android/animation/Keyframe;

    .line 179
    invoke-virtual {v2}, Lcom/android/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 178
    invoke-interface {v0, p1, v1, v2}, Lcom/android/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 181
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/android/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe;

    .line 183
    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_2

    .line 185
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/android/animation/KeyframeSet;->mFirstKeyframe:Lcom/android/animation/Keyframe;

    invoke-virtual {v1}, Lcom/android/animation/Keyframe;->getFraction()F

    move-result v1

    .line 188
    sub-float v2, p1, v1

    .line 189
    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->getFraction()F

    move-result v3

    sub-float v1, v3, v1

    div-float v1, v2, v1

    .line 190
    iget-object v2, p0, Lcom/android/animation/KeyframeSet;->mEvaluator:Lcom/android/animation/TypeEvaluator;

    iget-object v3, p0, Lcom/android/animation/KeyframeSet;->mFirstKeyframe:Lcom/android/animation/Keyframe;

    invoke-virtual {v3}, Lcom/android/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 191
    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 190
    invoke-interface {v2, v1, v3, v0}, Lcom/android/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_5

    .line 193
    iget-object v0, p0, Lcom/android/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe;

    .line 194
    iget-object v1, p0, Lcom/android/animation/KeyframeSet;->mLastKeyframe:Lcom/android/animation/Keyframe;

    invoke-virtual {v1}, Lcom/android/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_4

    .line 196
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 198
    :cond_4
    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->getFraction()F

    move-result v1

    .line 199
    sub-float v2, p1, v1

    iget-object v3, p0, Lcom/android/animation/KeyframeSet;->mLastKeyframe:Lcom/android/animation/Keyframe;

    .line 200
    invoke-virtual {v3}, Lcom/android/animation/Keyframe;->getFraction()F

    move-result v3

    sub-float v1, v3, v1

    div-float v1, v2, v1

    .line 201
    iget-object v2, p0, Lcom/android/animation/KeyframeSet;->mEvaluator:Lcom/android/animation/TypeEvaluator;

    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/android/animation/KeyframeSet;->mLastKeyframe:Lcom/android/animation/Keyframe;

    .line 202
    invoke-virtual {v3}, Lcom/android/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 201
    invoke-interface {v2, v1, v0, v3}, Lcom/android/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_5
    iget-object v1, p0, Lcom/android/animation/KeyframeSet;->mFirstKeyframe:Lcom/android/animation/Keyframe;

    move-object v2, v1

    move v1, v0

    .line 205
    :goto_1
    iget v0, p0, Lcom/android/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v1, v0, :cond_8

    .line 206
    iget-object v0, p0, Lcom/android/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe;

    .line 207
    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->getFraction()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_7

    .line 208
    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_6

    .line 210
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 212
    :cond_6
    invoke-virtual {v2}, Lcom/android/animation/Keyframe;->getFraction()F

    move-result v1

    .line 213
    sub-float v3, p1, v1

    .line 214
    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float v1, v4, v1

    div-float v1, v3, v1

    .line 215
    iget-object v3, p0, Lcom/android/animation/KeyframeSet;->mEvaluator:Lcom/android/animation/TypeEvaluator;

    invoke-virtual {v2}, Lcom/android/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 216
    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 215
    invoke-interface {v3, v1, v2, v0}, Lcom/android/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 205
    :cond_7
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_1

    .line 221
    :cond_8
    iget-object v0, p0, Lcom/android/animation/KeyframeSet;->mLastKeyframe:Lcom/android/animation/Keyframe;

    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public setEvaluator(Lcom/android/animation/TypeEvaluator;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/animation/KeyframeSet;->mEvaluator:Lcom/android/animation/TypeEvaluator;

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 226
    const-string v1, " "

    .line 227
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    iget v2, p0, Lcom/android/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v1, v2, :cond_0

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Keyframe;

    invoke-virtual {v0}, Lcom/android/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 230
    :cond_0
    return-object v0
.end method
