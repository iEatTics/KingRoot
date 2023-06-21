.class public final Lcom/kingroot/kinguser/bco;
.super Lcom/kingroot/kinguser/pz;
.source "SourceFile"


# static fields
.field private static bhu:I


# instance fields
.field private aWR:I

.field private acE:Landroid/view/animation/Animation;

.field private bbL:Landroid/widget/TextView;

.field private bgU:Lcom/kingcore/uilib/ShadowCircle;

.field private bgV:Lcom/kingcore/uilib/CheckingProgressBar;

.field private bgW:Lcom/kingcore/uilib/RotatingCircle;

.field private bgX:Landroid/widget/ImageView;

.field private bgY:Landroid/widget/TextView;

.field private bgZ:Landroid/widget/RelativeLayout;

.field private bha:Landroid/widget/TextView;

.field private bhb:Landroid/view/animation/Animation;

.field private bhc:Landroid/widget/RelativeLayout;

.field private bhd:Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;

.field private bhe:Landroid/widget/TextView;

.field private bhf:Landroid/widget/ImageView;

.field private bhg:Landroid/widget/ImageView;

.field private bhh:Lcom/kingcore/uilib/ClipView;

.field private bhi:Z

.field private bhj:J

.field private bhk:J

.field private bhl:J

.field private bhm:J

.field private bhn:I

.field private bho:Z

.field private bhp:Landroid/view/View;

.field private bhq:Landroid/view/View;

.field private bhr:J

.field private bhs:J

.field private bht:J

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x270f

    sput v0, Lcom/kingroot/kinguser/bco;->bhu:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/pz;-><init>(Landroid/content/Context;)V

    .line 73
    iput-wide v0, p0, Lcom/kingroot/kinguser/bco;->bhs:J

    .line 75
    iput-wide v0, p0, Lcom/kingroot/kinguser/bco;->bht:J

    .line 81
    return-void
.end method

.method private XA()V
    .locals 10

    .prologue
    .line 425
    iget-wide v0, p0, Lcom/kingroot/kinguser/bco;->bhk:J

    iget-wide v2, p0, Lcom/kingroot/kinguser/bco;->bhj:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 426
    iget-wide v0, p0, Lcom/kingroot/kinguser/bco;->bhk:J

    iget-wide v2, p0, Lcom/kingroot/kinguser/bco;->bhj:J

    sub-long v2, v0, v2

    .line 428
    const-wide/16 v4, 0x3e8

    .line 429
    const-wide/16 v0, 0x21

    .line 430
    div-long v6, v4, v0

    long-to-int v6, v6

    .line 431
    int-to-long v6, v6

    div-long v6, v2, v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 432
    div-long/2addr v2, v6

    .line 433
    const-wide/16 v8, 0x14

    cmp-long v8, v2, v8

    if-gez v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_0

    .line 434
    div-long v0, v4, v2

    .line 436
    :cond_0
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 437
    const-wide/16 v0, 0x1f4

    .line 441
    :cond_1
    iput-wide v6, p0, Lcom/kingroot/kinguser/bco;->bhs:J

    .line 442
    iput-wide v0, p0, Lcom/kingroot/kinguser/bco;->bht:J

    .line 444
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhe:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingroot/kinguser/bco;->bhj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 449
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bco$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bco$2;-><init>(Lcom/kingroot/kinguser/bco;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhp:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bco;->bhi:Z

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhp:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 471
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 472
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 473
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 474
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 475
    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 476
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 477
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 478
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 479
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhp:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 482
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bco$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bco$3;-><init>(Lcom/kingroot/kinguser/bco;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    :cond_2
    return-void

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhe:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingroot/kinguser/bco;->bhk:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private Xw()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgZ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgU:Lcom/kingcore/uilib/ShadowCircle;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/ShadowCircle;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgV:Lcom/kingcore/uilib/CheckingProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/CheckingProgressBar;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgW:Lcom/kingcore/uilib/RotatingCircle;

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/RotatingCircle;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgW:Lcom/kingcore/uilib/RotatingCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RotatingCircle;->gX()V

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00a9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    return-void
.end method

.method private Xx()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x4

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgZ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgU:Lcom/kingcore/uilib/ShadowCircle;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ShadowCircle;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgV:Lcom/kingcore/uilib/CheckingProgressBar;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/CheckingProgressBar;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00a9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhc:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgU:Lcom/kingcore/uilib/ShadowCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ShadowCircle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    return-void
.end method

.method private Xy()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgZ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgU:Lcom/kingcore/uilib/ShadowCircle;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ShadowCircle;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgV:Lcom/kingcore/uilib/CheckingProgressBar;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/CheckingProgressBar;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgW:Lcom/kingcore/uilib/RotatingCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RotatingCircle;->gX()V

    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgW:Lcom/kingcore/uilib/RotatingCircle;

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/RotatingCircle;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00a9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bco;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/kingroot/kinguser/bco;->bhm:J

    return-wide v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bco;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/kingroot/kinguser/bco;->bhr:J

    return-wide p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bco;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bco;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bco;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bco;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/kingroot/kinguser/bco;->bhj:J

    return-wide v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bco;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bco;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhp:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bco;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/kingroot/kinguser/bco;->bhr:J

    return-wide v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bco;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/kingroot/kinguser/bco;->bhk:J

    return-wide v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Lcom/kingroot/kinguser/bco$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/bco$4;-><init>(Lcom/kingroot/kinguser/bco;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bco;->mHandler:Landroid/os/Handler;

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/bco;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhe:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/bco;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/kingroot/kinguser/bco;->bhs:J

    return-wide v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/bco;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/kingroot/kinguser/bco;->bht:J

    return-wide v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/bco;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public Ql()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->Xx()V

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgW:Lcom/kingcore/uilib/RotatingCircle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/RotatingCircle;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgV:Lcom/kingcore/uilib/CheckingProgressBar;

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/CheckingProgressBar;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bco;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bce;->bn(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v1, 0x7f070287

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    return-void
.end method

.method public Qm()V
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->Xw()V

    .line 138
    const v0, 0x7f02021a

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bco;->id(I)V

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v1, 0x7f070285

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    const v1, 0x7f0701b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    return-void
.end method

.method public Qo()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgZ:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgV:Lcom/kingcore/uilib/CheckingProgressBar;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/CheckingProgressBar;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgW:Lcom/kingcore/uilib/RotatingCircle;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/RotatingCircle;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgU:Lcom/kingcore/uilib/ShadowCircle;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/ShadowCircle;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    const v1, 0x7f0201b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v1, 0x7f070298

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00a9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    const v1, 0x7f070286

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    return-void
.end method

.method public XB()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 520
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgZ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgV:Lcom/kingcore/uilib/CheckingProgressBar;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/CheckingProgressBar;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgW:Lcom/kingcore/uilib/RotatingCircle;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/RotatingCircle;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgU:Lcom/kingcore/uilib/ShadowCircle;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ShadowCircle;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    return-void
.end method

.method public XC()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgU:Lcom/kingcore/uilib/ShadowCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ShadowCircle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhq:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    return-void
.end method

.method public Xt()V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->Xy()V

    .line 132
    const v0, 0x7f02021a

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bco;->id(I)V

    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v1, 0x7f070284

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    return-void
.end method

.method public Xu()V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->Xw()V

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhc:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bco;->Xz()V

    .line 158
    return-void
.end method

.method public Xv()V
    .locals 3

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->Xw()V

    .line 162
    const v0, 0x7f02021b

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bco;->id(I)V

    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v1, 0x7f0701c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00a9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    const v1, 0x7f0701e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    return-void
.end method

.method public Xz()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v8, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 297
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhf:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 300
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 302
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 304
    invoke-virtual {v0, v8}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 305
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 306
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 307
    iget-object v1, p0, Lcom/kingroot/kinguser/bco;->bhf:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 309
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x44070000    # 540.0f

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 311
    invoke-virtual {v0, v8}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 312
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 313
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 314
    iget-object v1, p0, Lcom/kingroot/kinguser/bco;->bhg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 315
    return-void
.end method

.method public a(ZJJJJIZ)V
    .locals 10

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bco;->bhi:Z

    .line 321
    iput-wide p2, p0, Lcom/kingroot/kinguser/bco;->bhj:J

    .line 322
    iput-wide p4, p0, Lcom/kingroot/kinguser/bco;->bhk:J

    .line 323
    move-wide/from16 v0, p6

    iput-wide v0, p0, Lcom/kingroot/kinguser/bco;->bhl:J

    .line 324
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/kingroot/kinguser/bco;->bhm:J

    .line 325
    move/from16 v0, p10

    iput v0, p0, Lcom/kingroot/kinguser/bco;->bhn:I

    .line 326
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bco;->bho:Z

    .line 329
    iget-wide v2, p0, Lcom/kingroot/kinguser/bco;->bhk:J

    sget v4, Lcom/kingroot/kinguser/bco;->bhu:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/kingroot/kinguser/bco;->bhe:Landroid/widget/TextView;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 335
    :goto_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/akj;->aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/akj;->AA()Z

    move-result v2

    if-nez v2, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bco;->XC()V

    .line 341
    :cond_0
    iget-boolean v2, p0, Lcom/kingroot/kinguser/bco;->bhi:Z

    if-eqz v2, :cond_3

    .line 343
    iget-wide v2, p0, Lcom/kingroot/kinguser/bco;->bhk:J

    iput-wide v2, p0, Lcom/kingroot/kinguser/bco;->bhj:J

    .line 347
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/kingroot/kinguser/bco;->bhm:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-wide v2, p0, Lcom/kingroot/kinguser/bco;->bhm:J

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 348
    iget-object v2, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v3, 0x7f0701a8

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bco;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :goto_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->XA()V

    .line 422
    :goto_2
    return-void

    .line 332
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/bco;->bhe:Landroid/widget/TextView;

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v2, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v3, 0x7f0701a7

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bco;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bco;->XC()V

    goto :goto_1

    .line 358
    :cond_3
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/kingroot/kinguser/bco;->bhm:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    iget-wide v2, p0, Lcom/kingroot/kinguser/bco;->bhm:J

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    .line 360
    iget-object v2, p0, Lcom/kingroot/kinguser/bco;->bhe:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingroot/kinguser/bco;->bhk:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget v2, p0, Lcom/kingroot/kinguser/bco;->bhn:I

    if-lez v2, :cond_5

    .line 362
    const v2, 0x7f0701d9

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bco;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 363
    iget-object v3, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/kingroot/kinguser/bco;->bhn:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-boolean v2, p0, Lcom/kingroot/kinguser/bco;->bho:Z

    if-eqz v2, :cond_4

    .line 366
    iget-object v2, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    const v3, 0x7f0701c1

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bco;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 368
    :cond_4
    iget-object v2, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    const v3, 0x7f0701c9

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bco;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 372
    :cond_5
    const v2, 0x7f0701ca

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bco;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 373
    iget-object v3, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v2, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bco;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/bbl;->bm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 379
    :cond_6
    const-wide/16 v2, 0xc8

    iget-wide v4, p0, Lcom/kingroot/kinguser/bco;->bhm:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_9

    iget-wide v2, p0, Lcom/kingroot/kinguser/bco;->bhm:J

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_9

    .line 380
    iget-wide v2, p0, Lcom/kingroot/kinguser/bco;->bhk:J

    iget-wide v4, p0, Lcom/kingroot/kinguser/bco;->bhj:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_8

    .line 381
    const v2, 0x7f0701b6

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bco;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 382
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/kingroot/kinguser/bco;->bhk:J

    iget-wide v8, p0, Lcom/kingroot/kinguser/bco;->bhj:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 384
    iget-wide v4, p0, Lcom/kingroot/kinguser/bco;->bhm:J

    iget-wide v6, p0, Lcom/kingroot/kinguser/bco;->bhl:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_7

    .line 385
    const v3, 0x7f0701bc

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bco;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/kingroot/kinguser/bco;->bhm:J

    const-wide/16 v8, 0xc8

    sub-long/2addr v6, v8

    .line 387
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 386
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 389
    :cond_7
    iget-object v3, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :goto_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->XA()V

    goto/16 :goto_2

    .line 391
    :cond_8
    const v2, 0x7f0701e3

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bco;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 392
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 394
    iget-object v3, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/bco$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bco$1;-><init>(Lcom/kingroot/kinguser/bco;)V

    const-wide/16 v4, 0x1770

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 408
    :cond_9
    iget-wide v2, p0, Lcom/kingroot/kinguser/bco;->bhk:J

    iget-wide v4, p0, Lcom/kingroot/kinguser/bco;->bhj:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    .line 409
    const v2, 0x7f0701b3

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bco;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/kingroot/kinguser/bco;->bhk:J

    iget-wide v8, p0, Lcom/kingroot/kinguser/bco;->bhj:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 415
    :goto_4
    iget-object v3, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bco;->XC()V

    goto :goto_3

    .line 413
    :cond_a
    const v2, 0x7f0701ee

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bco;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public a(ZLcom/kingcore/uilib/ClipView$b;)V
    .locals 3

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->Xw()V

    .line 188
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhh:Lcom/kingcore/uilib/ClipView;

    invoke-virtual {v0, p2}, Lcom/kingcore/uilib/ClipView;->setListener(Lcom/kingcore/uilib/ClipView$b;)V

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bhh:Lcom/kingcore/uilib/ClipView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ClipView;->gD()V

    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v1, 0x7f07028e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0078

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    const v1, 0x7f070290

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v1, 0x7f07028f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public g(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgU:Lcom/kingcore/uilib/ShadowCircle;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgU:Lcom/kingcore/uilib/ShadowCircle;

    invoke-virtual {v0, p1}, Lcom/kingcore/uilib/ShadowCircle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    :cond_0
    return-void
.end method

.method protected gy()Landroid/view/View;
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bco;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 86
    const v1, 0x7f030119

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 88
    const v1, 0x7f0f02fe

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/ShadowCircle;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bgU:Lcom/kingcore/uilib/ShadowCircle;

    .line 90
    const v1, 0x7f0f02ff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/CheckingProgressBar;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bgV:Lcom/kingcore/uilib/CheckingProgressBar;

    .line 92
    const v1, 0x7f0f0300

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/RotatingCircle;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bgW:Lcom/kingcore/uilib/RotatingCircle;

    .line 95
    const v1, 0x7f0f0308

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    .line 98
    const v1, 0x7f0f0204

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f0f030c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f0f0309

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bgZ:Landroid/widget/RelativeLayout;

    .line 103
    const v1, 0x7f0f030b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/ClipView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bhh:Lcom/kingcore/uilib/ClipView;

    .line 106
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bco;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->acE:Landroid/view/animation/Animation;

    .line 107
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bco;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bhb:Landroid/view/animation/Animation;

    .line 110
    const v1, 0x7f0f0301

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bhc:Landroid/widget/RelativeLayout;

    .line 111
    const v1, 0x7f0f0302

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bhd:Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;

    .line 112
    const v1, 0x7f0f0305

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bhe:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0f0303

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bhf:Landroid/widget/ImageView;

    .line 114
    const v1, 0x7f0f0304

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bhg:Landroid/widget/ImageView;

    .line 115
    const v1, 0x7f0f0306

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bhp:Landroid/view/View;

    .line 116
    const v1, 0x7f0f0307

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bco;->bhq:Landroid/view/View;

    .line 118
    return-object v0
.end method

.method public ic(I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 169
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->Xx()V

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgW:Lcom/kingcore/uilib/RotatingCircle;

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/RotatingCircle;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgW:Lcom/kingcore/uilib/RotatingCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RotatingCircle;->gD()V

    .line 172
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bco;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bco;->bha:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgZ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    if-ne p1, v3, :cond_0

    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v1, 0x7f07028d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    const v1, 0x7f0702a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v1, 0x7f0701df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public id(I)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bco;->bhb:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgX:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bco;->acE:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    return-void
.end method

.method public kB(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->Xw()V

    .line 145
    const v0, 0x7f020213

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bco;->id(I)V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v1, 0x7f070299

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public kC(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/kingroot/kinguser/bco;->Xw()V

    .line 202
    const v0, 0x7f0201d1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bco;->id(I)V

    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    const v1, 0x7f07028b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bbL:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00b9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/bco;->bgY:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method public setPercentage(I)V
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/kingroot/kinguser/bco;->aWR:I

    if-eq p1, v0, :cond_0

    .line 277
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bco;->bha:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iput p1, p0, Lcom/kingroot/kinguser/bco;->aWR:I

    .line 281
    :cond_0
    return-void

    .line 277
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
