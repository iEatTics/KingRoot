.class public Lcom/kingcore/uilib/ExpandableTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingcore/uilib/ExpandableTextView$a;
    }
.end annotation


# instance fields
.field private AF:Lcom/kingcore/uilib/ExpandableTextView$a;

.field private AG:Landroid/view/animation/Interpolator;

.field private AH:Landroid/view/animation/Interpolator;

.field private final AI:I

.field private AJ:J

.field private AK:Z

.field private AL:I

.field private mAnimating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingcore/uilib/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingcore/uilib/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v1, 0x0

    .line 48
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/afs$a;->ExpandableTextView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 49
    const/4 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AJ:J

    .line 50
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-virtual {p0}, Lcom/kingcore/uilib/ExpandableTextView;->getMaxLines()I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ExpandableTextView;->AI:I

    .line 54
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/ExpandableTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 57
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView;->AG:Landroid/view/animation/Interpolator;

    .line 58
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView;->AH:Landroid/view/animation/Interpolator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eqz v1, :cond_0

    .line 62
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 60
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 62
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 64
    :cond_1
    :goto_1
    throw v0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingcore/uilib/ExpandableTextView;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/kingcore/uilib/ExpandableTextView;->AI:I

    return v0
.end method

.method static synthetic a(Lcom/kingcore/uilib/ExpandableTextView;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/kingcore/uilib/ExpandableTextView;->AK:Z

    return p1
.end method

.method static synthetic b(Lcom/kingcore/uilib/ExpandableTextView;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/kingcore/uilib/ExpandableTextView;->mAnimating:Z

    return p1
.end method


# virtual methods
.method public gF()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/kingcore/uilib/ExpandableTextView;->AK:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingcore/uilib/ExpandableTextView;->gH()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/kingcore/uilib/ExpandableTextView;->gG()Z

    move-result v0

    goto :goto_0
.end method

.method public gG()Z
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    iget-boolean v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AK:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->mAnimating:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AI:I

    if-ltz v2, :cond_1

    .line 106
    iput-boolean v0, p0, Lcom/kingcore/uilib/ExpandableTextView;->mAnimating:Z

    .line 109
    iget-object v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AF:Lcom/kingcore/uilib/ExpandableTextView$a;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AF:Lcom/kingcore/uilib/ExpandableTextView$a;

    invoke-interface {v2, p0}, Lcom/kingcore/uilib/ExpandableTextView$a;->b(Lcom/kingcore/uilib/ExpandableTextView;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/kingcore/uilib/ExpandableTextView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 115
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 114
    invoke-virtual {p0, v2, v3}, Lcom/kingcore/uilib/ExpandableTextView;->measure(II)V

    .line 117
    invoke-virtual {p0}, Lcom/kingcore/uilib/ExpandableTextView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AL:I

    .line 120
    const v2, 0x7fffffff

    invoke-virtual {p0, v2}, Lcom/kingcore/uilib/ExpandableTextView;->setMaxLines(I)V

    .line 123
    invoke-virtual {p0}, Lcom/kingcore/uilib/ExpandableTextView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 124
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 123
    invoke-virtual {p0, v2, v3}, Lcom/kingcore/uilib/ExpandableTextView;->measure(II)V

    .line 126
    invoke-virtual {p0}, Lcom/kingcore/uilib/ExpandableTextView;->getMeasuredHeight()I

    move-result v2

    .line 129
    const/4 v3, 0x2

    new-array v3, v3, [I

    iget v4, p0, Lcom/kingcore/uilib/ExpandableTextView;->AL:I

    aput v4, v3, v1

    aput v2, v3, v0

    invoke-static {v3}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v1

    .line 130
    new-instance v2, Lcom/kingcore/uilib/ExpandableTextView$1;

    invoke-direct {v2, p0}, Lcom/kingcore/uilib/ExpandableTextView$1;-><init>(Lcom/kingcore/uilib/ExpandableTextView;)V

    invoke-virtual {v1, v2}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    new-instance v2, Lcom/kingcore/uilib/ExpandableTextView$2;

    invoke-direct {v2, p0}, Lcom/kingcore/uilib/ExpandableTextView$2;-><init>(Lcom/kingcore/uilib/ExpandableTextView;)V

    invoke-virtual {v1, v2}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 155
    iget-object v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AG:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 158
    iget-wide v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AJ:J

    invoke-virtual {v1, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/animation/ValueAnimator;->start()V

    .line 163
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public gH()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 172
    iget-boolean v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AK:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->mAnimating:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AI:I

    if-ltz v2, :cond_1

    .line 173
    iput-boolean v0, p0, Lcom/kingcore/uilib/ExpandableTextView;->mAnimating:Z

    .line 176
    iget-object v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AF:Lcom/kingcore/uilib/ExpandableTextView$a;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AF:Lcom/kingcore/uilib/ExpandableTextView$a;

    invoke-interface {v2, p0}, Lcom/kingcore/uilib/ExpandableTextView$a;->c(Lcom/kingcore/uilib/ExpandableTextView;)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/kingcore/uilib/ExpandableTextView;->getMeasuredHeight()I

    move-result v2

    .line 184
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    iget v1, p0, Lcom/kingcore/uilib/ExpandableTextView;->AL:I

    aput v1, v3, v0

    invoke-static {v3}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v1

    .line 185
    new-instance v2, Lcom/kingcore/uilib/ExpandableTextView$3;

    invoke-direct {v2, p0}, Lcom/kingcore/uilib/ExpandableTextView$3;-><init>(Lcom/kingcore/uilib/ExpandableTextView;)V

    invoke-virtual {v1, v2}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 194
    new-instance v2, Lcom/kingcore/uilib/ExpandableTextView$4;

    invoke-direct {v2, p0}, Lcom/kingcore/uilib/ExpandableTextView$4;-><init>(Lcom/kingcore/uilib/ExpandableTextView;)V

    invoke-virtual {v1, v2}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 213
    iget-object v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AH:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 216
    iget-wide v2, p0, Lcom/kingcore/uilib/ExpandableTextView;->AJ:J

    invoke-virtual {v1, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/animation/ValueAnimator;->start()V

    .line 221
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public gI()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/kingcore/uilib/ExpandableTextView;->AK:Z

    return v0
.end method

.method public getCollapseInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView;->AH:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getExpandInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView;->AG:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getMaxLines()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x1

    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 72
    invoke-super {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v2, "mMaxMode"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 77
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 78
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mMaximum"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 79
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    if-eq v3, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    move v0, v1

    .line 86
    goto :goto_0
.end method

.method public getOnExpandListener()Lcom/kingcore/uilib/ExpandableTextView$a;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView;->AF:Lcom/kingcore/uilib/ExpandableTextView$a;

    return-object v0
.end method

.method public setAnimationDuration(J)V
    .locals 1

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/kingcore/uilib/ExpandableTextView;->AJ:J

    .line 231
    return-void
.end method

.method public setCollapseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/kingcore/uilib/ExpandableTextView;->AH:Landroid/view/animation/Interpolator;

    .line 286
    return-void
.end method

.method public setExpandInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/kingcore/uilib/ExpandableTextView;->AG:Landroid/view/animation/Interpolator;

    .line 268
    return-void
.end method

.method public setExpandListener(Lcom/kingcore/uilib/ExpandableTextView$a;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/kingcore/uilib/ExpandableTextView;->AF:Lcom/kingcore/uilib/ExpandableTextView$a;

    .line 240
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/kingcore/uilib/ExpandableTextView;->AG:Landroid/view/animation/Interpolator;

    .line 258
    iput-object p1, p0, Lcom/kingcore/uilib/ExpandableTextView;->AH:Landroid/view/animation/Interpolator;

    .line 259
    return-void
.end method
