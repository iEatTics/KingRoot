.class public Lcom/kingroot/common/uilib/QSwitchCheckBox;
.super Lcom/kingroot/common/uilib/QCompoundButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/uilib/QSwitchCheckBox$b;,
        Lcom/kingroot/common/uilib/QSwitchCheckBox$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private Cm:F

.field private QA:Landroid/graphics/drawable/Drawable;

.field private QB:I

.field private QC:I

.field private QD:I

.field private QE:F

.field private QF:F

.field private QG:F

.field private QH:I

.field private QI:I

.field private QJ:F

.field private QK:F

.field private QL:F

.field private QM:Landroid/graphics/RectF;

.field private QN:Landroid/graphics/RectF;

.field private QO:Landroid/graphics/Paint;

.field private QP:I

.field private QQ:F

.field private QR:F

.field private QS:F

.field private QT:F

.field private QU:Z

.field private QV:I

.field private QW:Lcom/kingroot/common/uilib/QSwitchCheckBox$a;

.field private Qx:F

.field private Qy:I

.field private Qz:Lcom/kingroot/common/uilib/QSwitchCheckBox$b;

.field private mHandler:Landroid/os/Handler;

.field private mMinFlingVelocity:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/kingroot/common/uilib/QSwitchCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/QCompoundButton;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QU:Z

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QV:I

    .line 174
    new-instance v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$1;

    invoke-direct {v0, p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox$1;-><init>(Lcom/kingroot/common/uilib/QSwitchCheckBox;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mHandler:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;

    invoke-direct {v0}, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;-><init>()V

    .line 194
    iput p2, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Re:I

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->a(Landroid/content/Context;Lcom/kingroot/common/uilib/QSwitchCheckBox$b;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/kingroot/common/uilib/QCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QU:Z

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QV:I

    .line 174
    new-instance v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$1;

    invoke-direct {v0, p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox$1;-><init>(Lcom/kingroot/common/uilib/QSwitchCheckBox;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mHandler:Landroid/os/Handler;

    .line 218
    invoke-static {p1, p2}, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/kingroot/common/uilib/QSwitchCheckBox$b;

    move-result-object v0

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->a(Landroid/content/Context;Lcom/kingroot/common/uilib/QSwitchCheckBox$b;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/common/uilib/QCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QU:Z

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QV:I

    .line 174
    new-instance v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$1;

    invoke-direct {v0, p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox$1;-><init>(Lcom/kingroot/common/uilib/QSwitchCheckBox;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mHandler:Landroid/os/Handler;

    .line 225
    invoke-static {p1, p2}, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/kingroot/common/uilib/QSwitchCheckBox$b;

    move-result-object v0

    .line 226
    invoke-direct {p0, p1, v0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->a(Landroid/content/Context;Lcom/kingroot/common/uilib/QSwitchCheckBox$b;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/common/uilib/QSwitchCheckBox$b;)V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/QCompoundButton;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QU:Z

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QV:I

    .line 174
    new-instance v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$1;

    invoke-direct {v0, p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox$1;-><init>(Lcom/kingroot/common/uilib/QSwitchCheckBox;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mHandler:Landroid/os/Handler;

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->a(Landroid/content/Context;Lcom/kingroot/common/uilib/QSwitchCheckBox$b;)V

    .line 207
    return-void
.end method

.method private Z(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 582
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QS:F

    .line 585
    :goto_0
    iget-boolean v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QU:Z

    if-eqz v1, :cond_2

    .line 586
    iput-boolean v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QU:Z

    .line 587
    const/4 v1, 0x4

    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QV:I

    .line 591
    invoke-virtual {p0, v2}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setEnabled(Z)V

    .line 592
    iget-object v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QW:Lcom/kingroot/common/uilib/QSwitchCheckBox$a;

    if-nez v1, :cond_0

    .line 593
    new-instance v1, Lcom/kingroot/common/uilib/QSwitchCheckBox$2;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/common/uilib/QSwitchCheckBox$2;-><init>(Lcom/kingroot/common/uilib/QSwitchCheckBox;Z)V

    iput-object v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QW:Lcom/kingroot/common/uilib/QSwitchCheckBox$a;

    .line 617
    :cond_0
    :goto_1
    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QT:F

    .line 618
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->invalidate()V

    .line 619
    return-void

    .line 582
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QV:I

    .line 614
    invoke-virtual {p0, p1}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setSuperChecked(Z)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lcom/kingroot/common/uilib/QSwitchCheckBox$b;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 231
    iput-object p2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qz:Lcom/kingroot/common/uilib/QSwitchCheckBox$b;

    .line 242
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QO:Landroid/graphics/Paint;

    .line 243
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QO:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 244
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QO:Landroid/graphics/Paint;

    iget v1, p2, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rh:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mTouchSlop:I

    .line 254
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mMinFlingVelocity:I

    .line 258
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    iget v1, p2, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Re:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QA:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QA:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QA:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QC:I

    .line 262
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QA:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QD:I

    .line 264
    :cond_0
    const/high16 v0, 0x42580000    # 54.0f

    invoke-static {v0}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QB:I

    .line 265
    invoke-static {v8}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v0

    .line 266
    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qy:I

    .line 268
    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QB:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Cm:F

    .line 270
    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QD:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QJ:F

    .line 271
    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QB:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QJ:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QK:F

    .line 272
    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QK:F

    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QJ:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QL:F

    .line 278
    const/4 v1, 0x0

    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QE:F

    .line 279
    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QB:I

    int-to-float v1, v1

    .line 280
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QH:I

    .line 281
    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QD:I

    iput v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QI:I

    .line 283
    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QD:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v8

    .line 284
    iget v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QH:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iput v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QF:F

    .line 285
    iget v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QF:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QG:F

    .line 288
    iget v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QE:F

    iget v4, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QB:I

    iget v5, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QC:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 289
    iget v4, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QC:I

    add-int/2addr v4, v3

    .line 290
    iget-object v5, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QA:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 291
    iget-object v5, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QA:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QH:I

    iget v7, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QI:I

    invoke-virtual {v5, v3, v6, v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QE:F

    add-float/2addr v4, v2

    iget v5, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QF:F

    int-to-float v6, v0

    add-float/2addr v6, v2

    iget v7, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QG:F

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QM:Landroid/graphics/RectF;

    .line 296
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QB:I

    sub-int v0, v4, v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iget v4, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QF:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QG:F

    invoke-direct {v3, v0, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QN:Landroid/graphics/RectF;

    .line 302
    iget v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QB:I

    int-to-float v0, v0

    const v1, 0x3fb8e38e

    mul-float/2addr v0, v1

    .line 304
    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QC:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QB:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    .line 305
    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QB:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iput v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QS:F

    .line 307
    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QB:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 318
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 522
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 523
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 524
    invoke-super {p0, v0}, Lcom/kingroot/common/uilib/QCompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 525
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 526
    return-void
.end method

.method private c(FF)Z
    .locals 5

    .prologue
    .line 436
    iget v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QH:I

    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mTouchSlop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 437
    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QE:F

    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QT:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mTouchSlop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 438
    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QC:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 439
    iget v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QI:I

    iget v4, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mTouchSlop:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 440
    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    cmpg-float v0, p2, v3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 535
    iput v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QP:I

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 539
    :goto_0
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->c(Landroid/view/MotionEvent;)V

    .line 540
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->isChecked()Z

    move-result v3

    .line 542
    if-eqz v0, :cond_4

    .line 543
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 544
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 545
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 546
    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    move v0, v1

    .line 551
    :goto_1
    invoke-direct {p0, v0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Z(Z)V

    .line 558
    if-eq v0, v3, :cond_0

    .line 559
    invoke-virtual {p0, v1}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->sendAccessibilityEvent(I)V

    .line 560
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0, v2}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->playSoundEffect(I)V

    .line 562
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 565
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 537
    goto :goto_0

    :cond_2
    move v0, v2

    .line 546
    goto :goto_1

    .line 548
    :cond_3
    invoke-direct {p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->getTargetCheckedState()Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 635
    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QT:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 644
    invoke-super {p0}, Lcom/kingroot/common/uilib/QCompoundButton;->drawableStateChanged()V

    .line 645
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QA:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QA:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->invalidate()V

    .line 649
    return-void
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qz:Lcom/kingroot/common/uilib/QSwitchCheckBox$b;

    iget-object v0, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rb:Ljava/lang/String;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qz:Lcom/kingroot/common/uilib/QSwitchCheckBox$b;

    iget-object v0, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Ra:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 353
    invoke-super {p0, p1}, Lcom/kingroot/common/uilib/QCompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 355
    iget v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Cm:F

    .line 356
    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QF:F

    .line 357
    iget v4, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QG:F

    .line 358
    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QJ:F

    .line 359
    iget v9, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QK:F

    .line 360
    iget-object v5, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QO:Landroid/graphics/Paint;

    .line 361
    iget v6, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QS:F

    .line 362
    iget v12, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QV:I

    .line 367
    if-gez v12, :cond_3

    .line 368
    iget v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QT:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v0, v6

    move v13, v0

    .line 387
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 388
    iget v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qy:I

    int-to-float v0, v0

    iget v6, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qx:F

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 391
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qz:Lcom/kingroot/common/uilib/QSwitchCheckBox$b;

    iget v0, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rg:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    add-float/2addr v3, v13

    .line 393
    cmpg-float v0, v1, v3

    if-gez v0, :cond_0

    move-object v0, p1

    .line 394
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qz:Lcom/kingroot/common/uilib/QSwitchCheckBox$b;

    iget v0, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$b;->Rh:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 401
    cmpg-float v0, v3, v9

    if-gez v0, :cond_1

    move-object v6, p1

    move v7, v3

    move v8, v2

    move v10, v4

    move-object v11, v5

    .line 402
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 413
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 418
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QA:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 422
    if-lez v12, :cond_5

    .line 423
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 430
    :cond_2
    :goto_1
    return-void

    .line 370
    :cond_3
    iget v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QT:F

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    if-nez v0, :cond_4

    move v0, v12

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v6

    const/high16 v7, 0x40a00000    # 5.0f

    div-float/2addr v0, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v0, v6

    .line 371
    iget v6, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QV:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QV:I

    move v13, v0

    goto :goto_0

    .line 370
    :cond_4
    rsub-int/lit8 v0, v12, 0x5

    goto :goto_2

    .line 425
    :cond_5
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QW:Lcom/kingroot/common/uilib/QSwitchCheckBox$a;

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QW:Lcom/kingroot/common/uilib/QSwitchCheckBox$a;

    invoke-interface {v0}, Lcom/kingroot/common/uilib/QSwitchCheckBox$a;->onAnimationEnd()V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QW:Lcom/kingroot/common/uilib/QSwitchCheckBox$a;

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 347
    invoke-super/range {p0 .. p5}, Lcom/kingroot/common/uilib/QCompoundButton;->onLayout(ZIIII)V

    .line 349
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 327
    invoke-super {p0, p1, p2}, Lcom/kingroot/common/uilib/QCompoundButton;->onMeasure(II)V

    .line 329
    iget v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QB:I

    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qy:I

    add-int/2addr v0, v1

    .line 330
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 332
    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QD:I

    sub-int v2, v1, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qx:F

    .line 333
    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qx:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 334
    iput v4, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qx:F

    .line 337
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setMeasuredDimension(II)V

    .line 338
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    .line 449
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 450
    invoke-super {p0, p1}, Lcom/kingroot/common/uilib/QCompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 518
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->nW()Z

    move-result v1

    if-nez v1, :cond_2

    .line 454
    invoke-super {p0, p1}, Lcom/kingroot/common/uilib/QCompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 458
    packed-switch v1, :pswitch_data_0

    .line 518
    :cond_3
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/kingroot/common/uilib/QCompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 462
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->c(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 463
    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QP:I

    .line 464
    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QQ:F

    .line 465
    iput v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QR:F

    goto :goto_1

    .line 471
    :pswitch_2
    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QP:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 477
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 479
    iget v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QQ:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_4

    iget v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QR:F

    sub-float v3, v2, v3

    .line 480
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 481
    :cond_4
    iput v5, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QP:I

    .line 482
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 483
    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QQ:F

    .line 484
    iput v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QR:F

    goto :goto_0

    .line 491
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 492
    iget v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QQ:F

    sub-float v2, v1, v2

    .line 493
    const/4 v3, 0x0

    iget v4, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QT:F

    add-float/2addr v2, v4

    iget v4, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QS:F

    .line 494
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 493
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 495
    iget v3, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QT:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 496
    iput v2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QT:F

    .line 497
    iput v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QQ:F

    .line 498
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->invalidate()V

    goto/16 :goto_0

    .line 508
    :pswitch_5
    iget v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QP:I

    if-ne v1, v5, :cond_5

    .line 509
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->d(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 512
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QP:I

    .line 513
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 471
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 626
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Z(Z)V

    .line 628
    :cond_0
    return-void
.end method

.method public setNeedAnimate(Z)V
    .locals 0

    .prologue
    .line 709
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QU:Z

    .line 710
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 571
    invoke-super {p0, p1}, Lcom/kingroot/common/uilib/QCompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    iput-object p1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 573
    return-void
.end method

.method public setSuperChecked(Z)V
    .locals 0

    .prologue
    .line 631
    invoke-super {p0, p1}, Lcom/kingroot/common/uilib/QCompoundButton;->setChecked(Z)V

    .line 632
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->Qw:Z

    if-nez v0, :cond_0

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox;->QU:Z

    .line 700
    invoke-super {p0}, Lcom/kingroot/common/uilib/QCompoundButton;->toggle()V

    .line 702
    :cond_0
    return-void
.end method
