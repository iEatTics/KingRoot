.class public Lcom/kingroot/common/uilib/WellChosenOuterGuideView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final Sm:I


# instance fields
.field private Rk:I

.field private Rl:I

.field private SA:I

.field private SB:I

.field private SC:Lcom/android/animation/ValueAnimator;

.field private SD:Lcom/android/animation/ValueAnimator;

.field private SE:I

.field private SF:Landroid/graphics/Rect;

.field private SG:Landroid/graphics/Paint;

.field private SH:Landroid/graphics/Rect;

.field private SI:Landroid/view/View$OnClickListener;

.field private SJ:Landroid/graphics/Paint;

.field private SK:Z

.field private SL:Z

.field private SM:Z

.field private Sn:Landroid/graphics/Bitmap;

.field private So:I

.field private Sp:F

.field private Sq:I

.field private Sr:I

.field private Ss:F

.field private St:F

.field private Su:Landroid/graphics/Paint;

.field private Sv:Landroid/graphics/Paint;

.field private Sw:I

.field private Sx:I

.field private Sy:I

.field private Sz:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "#ffcd7b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sm:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->So:I

    .line 46
    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sq:I

    .line 66
    iput-boolean v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SK:Z

    .line 68
    iput-boolean v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SL:Z

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SM:Z

    .line 72
    invoke-direct {p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->So:I

    .line 46
    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sq:I

    .line 66
    iput-boolean v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SK:Z

    .line 68
    iput-boolean v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SL:Z

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SM:Z

    .line 77
    invoke-direct {p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->So:I

    .line 46
    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sq:I

    .line 66
    iput-boolean v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SK:Z

    .line 68
    iput-boolean v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SL:Z

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SM:Z

    .line 82
    invoke-direct {p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->init()V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sy:I

    return v0
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sy:I

    return p1
.end method

.method static synthetic b(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sw:I

    return v0
.end method

.method static synthetic b(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SA:I

    return p1
.end method

.method static synthetic c(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sx:I

    return v0
.end method

.method static synthetic c(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sz:I

    return p1
.end method

.method static synthetic d(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sz:I

    return v0
.end method

.method static synthetic d(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SB:I

    return p1
.end method

.method static synthetic e(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->on()V

    return-void
.end method

.method static synthetic f(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SI:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->mPaint:Landroid/graphics/Paint;

    .line 116
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Su:Landroid/graphics/Paint;

    .line 119
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Su:Landroid/graphics/Paint;

    sget v1, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sm:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Su:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sv:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sv:Landroid/graphics/Paint;

    sget v1, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sm:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sv:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SG:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SG:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SG:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SJ:Landroid/graphics/Paint;

    .line 132
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SJ:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SJ:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SJ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/kingroot/kinguser/acs;->c(Landroid/graphics/Bitmap;)V

    .line 140
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0202c9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    .line 142
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3faaaaab

    mul-float/2addr v0, v1

    .line 143
    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->So:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->So:I

    int-to-float v1, v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 144
    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->So:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 145
    iget-object v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    .line 146
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v0

    float-to-int v0, v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    .line 147
    invoke-static {v1}, Lcom/kingroot/kinguser/acs;->c(Landroid/graphics/Bitmap;)V

    .line 150
    :cond_1
    return-void
.end method

.method private on()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SC:Lcom/android/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SC:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SD:Lcom/android/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SD:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 305
    :cond_1
    return-void
.end method

.method private startAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x5dc

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 162
    invoke-direct {p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->on()V

    .line 164
    new-array v0, v5, [I

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sw:I

    aput v1, v0, v4

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sx:I

    aput v1, v0, v2

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SC:Lcom/android/animation/ValueAnimator;

    .line 165
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SC:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$1;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$1;-><init>(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 173
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SC:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 174
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SC:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Lcom/android/animation/ValueAnimator;->setRepeatCount(I)V

    .line 175
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SC:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 176
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SC:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Lcom/android/animation/ValueAnimator;->setRepeatMode(I)V

    .line 177
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SC:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 180
    new-array v0, v5, [I

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sw:I

    aput v1, v0, v4

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sx:I

    aput v1, v0, v2

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SD:Lcom/android/animation/ValueAnimator;

    .line 181
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SD:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$2;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$2;-><init>(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SD:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 190
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SD:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Lcom/android/animation/ValueAnimator;->setRepeatCount(I)V

    .line 191
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SD:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Lcom/android/animation/ValueAnimator;->setRepeatMode(I)V

    .line 192
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SD:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 193
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SD:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setStartDelay(J)V

    .line 194
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SD:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 196
    return-void
.end method


# virtual methods
.method public aa(Z)V
    .locals 0

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SK:Z

    .line 344
    return-void
.end method

.method public c(Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 4

    .prologue
    .line 268
    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rl:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 270
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 271
    new-instance v1, Lcom/kingroot/kinguser/xr;

    sget-object v2, Lcom/kingroot/kinguser/xq;->Us:Lcom/kingroot/kinguser/xq;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/xr;-><init>(Lcom/kingroot/kinguser/xq;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 272
    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {v0, p1}, Lcom/android/animation/ObjectAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 276
    :cond_0
    new-instance v1, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$3;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$3;-><init>(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 283
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    .line 284
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Su:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SA:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sv:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SB:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 90
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Ss:F

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->St:F

    iget v2, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sy:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Su:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 91
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Ss:F

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->St:F

    iget v2, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sz:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sv:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sr:I

    int-to-float v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SL:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SF:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SF:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 99
    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SF:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SJ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 101
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SF:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SF:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SF:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SF:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 102
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SF:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SF:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SF:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SF:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 105
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 250
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 251
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SK:Z

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rl:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 255
    const-wide/16 v2, 0x352

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 256
    new-instance v1, Lcom/kingroot/kinguser/xr;

    sget-object v2, Lcom/kingroot/kinguser/xq;->UC:Lcom/kingroot/kinguser/xq;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/xr;-><init>(Lcom/kingroot/kinguser/xq;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 257
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    .line 260
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 200
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 206
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rl:I

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->setMeasuredDimension(II)V

    .line 246
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3faaaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    .line 212
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    iget-object v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sr:I

    .line 213
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SL:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    :goto_1
    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SE:I

    .line 214
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sr:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SE:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rl:I

    .line 216
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->So:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    :goto_2
    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->So:I

    .line 217
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sq:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rl:I

    :goto_3
    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sq:I

    .line 220
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rl:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sp:F

    .line 221
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sp:F

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->So:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sq:I

    .line 223
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sw:I

    .line 224
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sx:I

    .line 226
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Ss:F

    .line 227
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rl:I

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SE:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->St:F

    .line 230
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SE:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 231
    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 232
    iget-object v2, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SE:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 233
    add-int v3, v1, v0

    .line 234
    add-int/2addr v0, v2

    .line 235
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SF:Landroid/graphics/Rect;

    .line 238
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SE:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 239
    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 240
    iget-object v2, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SE:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 241
    add-int v3, v1, v0

    .line 242
    add-int/2addr v0, v2

    .line 243
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SH:Landroid/graphics/Rect;

    .line 245
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rk:I

    iget v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Rl:I

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 213
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 216
    :cond_3
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->So:I

    goto/16 :goto_2

    .line 217
    :cond_4
    iget v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sq:I

    goto/16 :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 158
    invoke-direct {p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->startAnimation()V

    .line 159
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 313
    iget-object v3, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SH:Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 315
    if-eqz v1, :cond_1

    .line 316
    iput-boolean v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SM:Z

    .line 335
    :goto_0
    return v0

    .line 319
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 320
    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SM:Z

    if-eqz v1, :cond_1

    .line 322
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SM:Z

    .line 323
    new-instance v1, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$4;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$4;-><init>(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)V

    invoke-virtual {p0, v1}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->c(Lcom/android/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    .line 335
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/kingroot/kinguser/acs;->c(Landroid/graphics/Bitmap;)V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->Sn:Landroid/graphics/Bitmap;

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->on()V

    .line 294
    return-void
.end method

.method public setCloseEnable(Z)V
    .locals 0

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SL:Z

    .line 348
    return-void
.end method

.method public setOnCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->SI:Landroid/view/View$OnClickListener;

    .line 340
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->So:I

    .line 109
    invoke-direct {p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->init()V

    .line 110
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->requestLayout()V

    .line 112
    return-void
.end method
