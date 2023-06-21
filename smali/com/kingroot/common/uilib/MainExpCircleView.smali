.class public Lcom/kingroot/common/uilib/MainExpCircleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/uilib/MainExpCircleView$a;
    }
.end annotation


# instance fields
.field private NQ:Lcom/kingroot/common/uilib/MainExpOutCircleView;

.field private NR:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

.field private NS:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

.field private NT:Landroid/view/View;

.field private NU:Landroid/support/percent/PercentRelativeLayout;

.field private NV:Ljava/lang/String;

.field private NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

.field private NX:Landroid/view/View;

.field private NY:Landroid/view/View;

.field private NZ:Landroid/view/View;

.field private Oa:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->Oa:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->Oa:Z

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/MainExpCircleView;)Lcom/kingroot/common/uilib/MainExpInnerCircleView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NR:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    return-object v0
.end method

.method private a(JILandroid/view/View;Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 9

    .prologue
    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 156
    invoke-virtual {p4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 157
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    .line 158
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v0, v0, v3

    .line 159
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    aput v0, v1, v2

    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 162
    invoke-virtual {p5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 163
    const/4 v2, 0x2

    new-array v4, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    .line 164
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    aput v3, v4, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v0, v0, v3

    .line 165
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, v4, v2

    .line 167
    const-string v0, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p5, v0, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v2

    .line 169
    const-string v0, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v1, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v3, v5

    invoke-static {p5, v0, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v3

    .line 171
    const-string v0, "translationX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v1, v1, v7

    const/4 v7, 0x0

    aget v4, v4, v7

    sub-int/2addr v1, v4

    int-to-float v1, v1

    aput v1, v5, v6

    invoke-static {p5, v0, v5}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v4

    .line 173
    new-instance v6, Lcom/android/animation/AnimatorSet;

    invoke-direct {v6}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 174
    int-to-long v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 175
    int-to-long v0, p3

    invoke-virtual {v3, v0, v1}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 176
    int-to-long v0, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 183
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/animation/Animator;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    invoke-virtual {v6, v0}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 184
    new-instance v0, Lcom/kingroot/common/uilib/MainExpCircleView$2;

    move-object v1, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/common/uilib/MainExpCircleView$2;-><init>(Lcom/kingroot/common/uilib/MainExpCircleView;Lcom/android/animation/ObjectAnimator;Lcom/android/animation/ObjectAnimator;Lcom/android/animation/ObjectAnimator;Lcom/android/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v6, v0}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 204
    new-instance v0, Lcom/kingroot/common/uilib/MainExpCircleView$3;

    invoke-direct {v0, p0, v6}, Lcom/kingroot/common/uilib/MainExpCircleView$3;-><init>(Lcom/kingroot/common/uilib/MainExpCircleView;Lcom/android/animation/AnimatorSet;)V

    invoke-static {v0, p1, p2}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 210
    return-void

    .line 167
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/MainExpCircleView;JILandroid/view/View;Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/kingroot/common/uilib/MainExpCircleView;->a(JILandroid/view/View;Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/MainExpCircleView;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->Oa:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/common/uilib/MainExpCircleView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NX:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/common/uilib/MainExpCircleView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NY:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/common/uilib/MainExpCircleView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NZ:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/common/uilib/MainExpCircleView;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->Oa:Z

    return v0
.end method

.method static synthetic f(Lcom/kingroot/common/uilib/MainExpCircleView;)Lcom/kingroot/common/uilib/MainExpOuterPointerView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NS:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/common/uilib/MainExpCircleView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NT:Landroid/view/View;

    return-object v0
.end method

.method private gq()V
    .locals 5

    .prologue
    const v4, 0x7f0f0076

    const v3, 0x7f0f0075

    .line 65
    const v0, 0x7f0f026c

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/percent/PercentRelativeLayout;

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NU:Landroid/support/percent/PercentRelativeLayout;

    .line 66
    const v0, 0x7f0f026d

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/MainExpOutCircleView;

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NQ:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    .line 67
    const v0, 0x7f0f026e

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NR:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    .line 68
    const v0, 0x7f0f026f

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NS:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    .line 69
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NR:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NS:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->setOutPointerView(Lcom/kingroot/common/uilib/MainExpOuterPointerView;)V

    .line 70
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NS:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NQ:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->setOuterCircleView(Lcom/kingroot/common/uilib/MainExpOutCircleView;)V

    .line 71
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NS:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NR:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->setInnerCircleView(Lcom/kingroot/common/uilib/MainExpInnerCircleView;)V

    .line 74
    const v0, 0x7f0f0034

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NT:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NT:Landroid/view/View;

    const v1, 0x7f0f0270

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NX:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NX:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0202a9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NT:Landroid/view/View;

    const v1, 0x7f0f0271

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NY:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NY:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f02021d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NT:Landroid/view/View;

    const v1, 0x7f0f0272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NZ:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NZ:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f02012e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NX:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NY:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070101

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NZ:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NR:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->setTitleText(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NQ:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->a(Lcom/kingroot/common/uilib/MainExpCircleView$a;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 91
    return-void
.end method

.method static synthetic h(Lcom/kingroot/common/uilib/MainExpCircleView;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpCircleView;->nM()V

    return-void
.end method

.method private nM()V
    .locals 4

    .prologue
    const v3, 0x7f0f01fe

    const v2, 0x7f0f01fd

    const/4 v1, 0x4

    .line 213
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NX:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NX:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NZ:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NZ:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NY:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NY:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    return-void
.end method


# virtual methods
.method public a(IILcom/kingroot/common/uilib/MainExpInnerCircleView$a;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NR:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NR:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->a(IILcom/kingroot/common/uilib/MainExpInnerCircleView$a;)V

    .line 124
    :cond_0
    return-void
.end method

.method public a(Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NQ:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NQ:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    new-instance v1, Lcom/kingroot/common/uilib/MainExpCircleView$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/common/uilib/MainExpCircleView$1;-><init>(Lcom/kingroot/common/uilib/MainExpCircleView;Lcom/android/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->b(Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 152
    :cond_0
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/aqs;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x190

    const v4, 0x7f0f01fe

    const v3, 0x7f0f01fd

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 222
    instance-of v0, p1, Lcom/kingroot/kinguser/aqv;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NX:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v6, v7, v1}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;JZ)V

    .line 224
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NX:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    instance-of v0, p1, Lcom/kingroot/kinguser/aqt;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NZ:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v6, v7, v1}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;JZ)V

    .line 227
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NZ:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 228
    :cond_2
    instance-of v0, p1, Lcom/kingroot/kinguser/aqu;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NY:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v6, v7, v1}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;JZ)V

    .line 230
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NY:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/aqs;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const v3, 0x7f0f01fe

    const v2, 0x7f0f01fd

    .line 235
    .line 237
    instance-of v1, p1, Lcom/kingroot/kinguser/aqv;

    if-eqz v1, :cond_2

    .line 238
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NX:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 239
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NX:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 250
    :goto_0
    if-eqz v1, :cond_0

    .line 251
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 255
    :cond_0
    if-eqz v0, :cond_1

    .line 256
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aqs;->MZ()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 258
    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    :cond_1
    :goto_1
    return-void

    .line 241
    :cond_2
    instance-of v1, p1, Lcom/kingroot/kinguser/aqt;

    if-eqz v1, :cond_3

    .line 242
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NZ:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 243
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NZ:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 245
    :cond_3
    instance-of v1, p1, Lcom/kingroot/kinguser/aqu;

    if-eqz v1, :cond_5

    .line 246
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NY:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 247
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NY:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 260
    :cond_4
    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public gD()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NQ:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->gD()V

    .line 128
    return-void
.end method

.method public nJ()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NU:Landroid/support/percent/PercentRelativeLayout;

    invoke-virtual {v0}, Landroid/support/percent/PercentRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NU:Landroid/support/percent/PercentRelativeLayout;

    invoke-virtual {v1}, Landroid/support/percent/PercentRelativeLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NU:Landroid/support/percent/PercentRelativeLayout;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NU:Landroid/support/percent/PercentRelativeLayout;

    invoke-virtual {v1}, Landroid/support/percent/PercentRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/percent/PercentRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-void
.end method

.method public nK()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NU:Landroid/support/percent/PercentRelativeLayout;

    invoke-virtual {v0}, Landroid/support/percent/PercentRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NU:Landroid/support/percent/PercentRelativeLayout;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NU:Landroid/support/percent/PercentRelativeLayout;

    invoke-virtual {v1}, Landroid/support/percent/PercentRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/percent/PercentRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-void
.end method

.method public nL()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NT:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 61
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpCircleView;->gq()V

    .line 62
    return-void
.end method

.method public setState(Lcom/kingroot/common/uilib/MainExpCircleView$a;)V
    .locals 3

    .prologue
    .line 104
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    .line 105
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NQ:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NQ:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->a(Lcom/kingroot/common/uilib/MainExpCircleView$a;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 107
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NR:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->setState(Lcom/kingroot/common/uilib/MainExpCircleView$a;)V

    .line 109
    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NV:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NR:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NR:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpCircleView;->NV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->setTitleText(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method
