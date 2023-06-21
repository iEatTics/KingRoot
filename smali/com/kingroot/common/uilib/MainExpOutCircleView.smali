.class public Lcom/kingroot/common/uilib/MainExpOutCircleView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/uilib/MainExpOutCircleView$a;
    }
.end annotation


# static fields
.field public static final OO:I

.field public static final OP:I

.field public static final OQ:I


# instance fields
.field private AB:Lcom/android/animation/ValueAnimator;

.field private CB:Lcom/android/animation/ValueAnimator;

.field private CC:Lcom/android/animation/ValueAnimator;

.field private volatile NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

.field private OR:I

.field private OS:Landroid/graphics/Paint;

.field private OT:Landroid/graphics/Paint;

.field private OU:Landroid/graphics/RectF;

.field private OV:I

.field private OW:F

.field private OX:Lcom/android/animation/ValueAnimator;

.field private OY:I

.field private OZ:F

.field private Oq:I

.field private Or:I

.field private Os:I

.field private Ot:I

.field private Ou:I

.field private Pa:Landroid/graphics/SweepGradient;

.field private Pb:Landroid/graphics/Bitmap;

.field private Pc:Z

.field private final Pd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/common/uilib/MainExpOutCircleView$a;",
            ">;"
        }
    .end annotation
.end field

.field private Pe:F

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    const v1, 0x7f0e00f0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OO:I

    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    const v1, 0x7f0e00ef

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OP:I

    .line 51
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    const v1, 0x7f0e00ee

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OQ:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    sget-object v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oh:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    .line 87
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OW:F

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OY:I

    .line 91
    const v0, 0x43838000    # 263.0f

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OZ:F

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pd:Ljava/util/Set;

    .line 102
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->init(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    sget-object v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oh:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    .line 87
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OW:F

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OY:I

    .line 91
    const v0, 0x43838000    # 263.0f

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OZ:F

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pd:Ljava/util/Set;

    .line 107
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->init(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/MainExpOutCircleView;F)F
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OW:F

    return p1
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/MainExpOutCircleView;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OY:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/MainExpOutCircleView;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pd:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/MainExpOutCircleView;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pc:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/common/uilib/MainExpOutCircleView;F)F
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OZ:F

    return p1
.end method

.method static synthetic b(Lcom/kingroot/common/uilib/MainExpOutCircleView;)Lcom/android/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->AB:Lcom/android/animation/ValueAnimator;

    return-object v0
.end method

.method private gW()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 279
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->AB:Lcom/android/animation/ValueAnimator;

    .line 280
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->AB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/common/uilib/MainExpOutCircleView$1;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView$1;-><init>(Lcom/kingroot/common/uilib/MainExpOutCircleView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 287
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->AB:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 288
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->AB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 289
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->AB:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Lcom/android/animation/ValueAnimator;->setRepeatMode(I)V

    .line 290
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->AB:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Lcom/android/animation/ValueAnimator;->setRepeatCount(I)V

    .line 292
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->AB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/common/uilib/MainExpOutCircleView$2;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView$2;-><init>(Lcom/kingroot/common/uilib/MainExpOutCircleView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 307
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->CB:Lcom/android/animation/ValueAnimator;

    .line 308
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->CB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/common/uilib/MainExpOutCircleView$3;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView$3;-><init>(Lcom/kingroot/common/uilib/MainExpOutCircleView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 316
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->CB:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 317
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->CB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/xr;

    sget-object v2, Lcom/kingroot/kinguser/xq;->Ux:Lcom/kingroot/kinguser/xq;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/xr;-><init>(Lcom/kingroot/kinguser/xq;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 319
    new-array v0, v4, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->CC:Lcom/android/animation/ValueAnimator;

    .line 320
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->CC:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/common/uilib/MainExpOutCircleView$4;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView$4;-><init>(Lcom/kingroot/common/uilib/MainExpOutCircleView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 328
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->CC:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 329
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->CC:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/xr;

    sget-object v2, Lcom/kingroot/kinguser/xq;->Uo:Lcom/kingroot/kinguser/xq;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/xr;-><init>(Lcom/kingroot/kinguser/xq;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 331
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OX:Lcom/android/animation/ValueAnimator;

    .line 332
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OX:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/common/uilib/MainExpOutCircleView$5;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView$5;-><init>(Lcom/kingroot/common/uilib/MainExpOutCircleView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 341
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OX:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/common/uilib/MainExpOutCircleView$6;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView$6;-><init>(Lcom/kingroot/common/uilib/MainExpOutCircleView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 354
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OX:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 355
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OX:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 356
    return-void

    .line 279
    nop

    :array_0
    .array-data 4
        0x0
        0x168
    .end array-data

    .line 307
    :array_1
    .array-data 4
        0x0
        0x41c80000    # 25.0f
    .end array-data

    .line 319
    :array_2
    .array-data 4
        0x41c80000    # 25.0f
        0x0
    .end array-data

    .line 331
    :array_3
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 175
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->mContext:Landroid/content/Context;

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OS:Landroid/graphics/Paint;

    .line 177
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OS:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OT:Landroid/graphics/Paint;

    .line 180
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->gW()V

    .line 188
    return-void
.end method

.method private nO()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 192
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Or:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Ot:I

    .line 193
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Oq:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Ou:I

    .line 194
    const v0, 0x3c9374bc    # 0.018f

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Os:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pe:F

    .line 195
    const v0, 0x3f733333    # 0.95f

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Os:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pe:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OR:I

    .line 198
    const v0, 0x3e2aaaab

    .line 200
    new-instance v1, Landroid/graphics/SweepGradient;

    const/4 v2, 0x4

    new-array v2, v2, [I

    sget v3, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OO:I

    aput v3, v2, v6

    sget v3, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OP:I

    aput v3, v2, v7

    sget v3, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OQ:I

    aput v3, v2, v13

    sget v3, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OO:I

    aput v3, v2, v14

    const/4 v3, 0x4

    new-array v3, v3, [F

    aput v12, v3, v6

    aput v0, v3, v7

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    aput v4, v3, v13

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v0, v4

    aput v0, v3, v14

    invoke-direct {v1, v12, v12, v2, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 209
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OS:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 211
    const/high16 v0, 0x42420000    # 48.5f

    .line 212
    const v1, 0x42af5555

    .line 213
    new-instance v2, Landroid/graphics/SweepGradient;

    const/4 v3, 0x5

    new-array v3, v3, [I

    sget v4, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OQ:I

    aput v4, v3, v6

    sget v4, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OQ:I

    aput v4, v3, v7

    sget v4, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OP:I

    aput v4, v3, v13

    sget v4, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OO:I

    aput v4, v3, v14

    const/4 v4, 0x4

    sget v5, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OO:I

    aput v5, v3, v4

    const/4 v4, 0x5

    new-array v4, v4, [F

    const/high16 v5, 0x43b40000    # 360.0f

    div-float v5, v0, v5

    aput v5, v4, v6

    const/high16 v5, 0x40400000    # 3.0f

    div-float v5, v1, v5

    add-float/2addr v5, v0

    const/high16 v6, 0x43b40000    # 360.0f

    div-float/2addr v5, v6

    aput v5, v4, v7

    float-to-double v6, v0

    float-to-double v8, v1

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x4076800000000000L    # 360.0

    div-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, v4, v13

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    aput v0, v4, v14

    const/4 v0, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v4, v0

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v2, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pa:Landroid/graphics/SweepGradient;

    .line 230
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OT:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pa:Landroid/graphics/SweepGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 232
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OR:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OR:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OR:I

    int-to-float v3, v3

    iget v4, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OR:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OU:Landroid/graphics/RectF;

    .line 238
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OS:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pe:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 239
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OT:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pe:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 243
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pc:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pb:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/kingroot/kinguser/acs;->c(Landroid/graphics/Bitmap;)V

    .line 245
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->nP()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pb:Landroid/graphics/Bitmap;

    .line 247
    :cond_0
    return-void
.end method

.method private nP()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 424
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 425
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->getBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->layout(IIII)V

    .line 426
    invoke-virtual {p0, v2}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 429
    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 433
    goto :goto_0
.end method


# virtual methods
.method public a([F)I
    .locals 7
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 379
    iget-boolean v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pc:Z

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pb:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->nP()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pb:Landroid/graphics/Bitmap;

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pb:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 406
    :cond_1
    :goto_0
    return v0

    .line 387
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pb:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aget v2, p1, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v1

    .line 393
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    .line 396
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIdleOuterCircleBitmap H "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pb:Landroid/graphics/Bitmap;

    .line 398
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " W "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pb:Landroid/graphics/Bitmap;

    .line 399
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " point X "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " point Y "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 401
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 393
    invoke-static {v2, v1, v3, v4}, Lcom/tencent/feedback/eup/CrashReport;->handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    goto :goto_0
.end method

.method public a(Lcom/kingroot/common/uilib/MainExpCircleView$a;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 2

    .prologue
    .line 250
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    .line 251
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    sget-object v1, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oh:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    if-ne v0, v1, :cond_2

    .line 252
    if-eqz p2, :cond_0

    .line 253
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OX:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OX:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 257
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->CB:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 263
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 264
    return-void

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    sget-object v1, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oi:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    if-ne v0, v1, :cond_1

    .line 259
    const/16 v0, 0xff

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OY:I

    .line 260
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->AB:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 261
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->CB:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/common/uilib/MainExpOutCircleView$a;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pd:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public a(F[F)[F
    .locals 8

    .prologue
    .line 410
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 411
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 412
    const/4 v4, 0x0

    iget v5, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OR:I

    int-to-double v6, v5

    mul-double/2addr v0, v6

    iget v5, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Ot:I

    int-to-double v6, v5

    add-double/2addr v0, v6

    double-to-float v0, v0

    aput v0, p2, v4

    .line 413
    const/4 v0, 0x1

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OR:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Ou:I

    int-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    aput v1, p2, v0

    .line 414
    return-object p2
.end method

.method public b(Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oh:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    invoke-virtual {p0, v0, p1}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->a(Lcom/kingroot/common/uilib/MainExpCircleView$a;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 276
    return-void
.end method

.method public gD()V
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oi:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->a(Lcom/kingroot/common/uilib/MainExpCircleView$a;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 268
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v3, 0x42340000    # 45.0f

    const/4 v4, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Ot:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Ou:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OY:I

    if-eqz v0, :cond_0

    .line 122
    iput-boolean v4, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pc:Z

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OS:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OY:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OV:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OW:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OV:I

    .line 126
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OV:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OV:I

    .line 127
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OV:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 128
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OU:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OS:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 130
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OU:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OS:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 132
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OU:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    iget-object v5, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OS:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 134
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OU:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget-object v5, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OS:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    sget-object v1, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oh:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    sget-object v1, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oj:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    if-ne v0, v1, :cond_2

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 142
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 144
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    sget-object v1, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oj:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    if-ne v0, v1, :cond_3

    .line 145
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OT:Landroid/graphics/Paint;

    const v1, 0x7f0e0124

    invoke-static {v1}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OT:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OU:Landroid/graphics/RectF;

    const/high16 v2, 0x42400000    # 48.0f

    iget v3, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OZ:F

    iget-object v5, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OT:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 160
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 161
    return-void

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->OT:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Pa:Landroid/graphics/SweepGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 167
    iput p1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Or:I

    .line 168
    iput p2, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Oq:I

    .line 169
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView;->Os:I

    .line 170
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->nO()V

    .line 171
    return-void
.end method
