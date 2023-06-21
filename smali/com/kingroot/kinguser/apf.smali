.class public Lcom/kingroot/kinguser/apf;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/apf$a;
    }
.end annotation


# instance fields
.field private aHp:Lcom/kingroot/kinguser/ape;

.field private aHq:Landroid/support/v4/view/ViewPager;

.field private aHr:Landroid/widget/ImageView;

.field private aHs:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private aHt:Lcom/kingroot/kinguser/apl;

.field private aHu:Lcom/kingroot/kinguser/apg;

.field private aHv:Landroid/widget/LinearLayout;

.field private volatile aHw:Z

.field private aHx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object p1, p0, Lcom/kingroot/kinguser/apf;->context:Landroid/content/Context;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/apf;->aHx:Ljava/util/Set;

    .line 74
    return-void
.end method

.method private Lc()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ape;->KV()Lcom/kingroot/kinguser/apl;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/apf;->aHt:Lcom/kingroot/kinguser/apl;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/apf;->setBackgroundColor(I)V

    .line 83
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->initViewPager()V

    .line 84
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->Ld()V

    .line 85
    return-void
.end method

.method private Ld()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ape;->Lb()Landroid/widget/ImageView;

    move-result-object v0

    .line 92
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 97
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/kingroot/kinguser/apf;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/kingroot/kinguser/apf;->aHr:Landroid/widget/ImageView;

    .line 98
    iget-object v3, p0, Lcom/kingroot/kinguser/apf;->aHr:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHr:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHr:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHr:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bhi;->setX(F)V

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHr:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v2, v1

    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->getStatusBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bhi;->setY(F)V

    .line 104
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kingroot/kinguser/apf;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/apf;->aHv:Landroid/widget/LinearLayout;

    .line 107
    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHv:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHv:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHr:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->Lf()V

    .line 111
    return-void
.end method

.method private Le()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->Lg()V

    .line 202
    return-void
.end method

.method private Lf()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHt:Lcom/kingroot/kinguser/apl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/apf;->aHw:Z

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHt:Lcom/kingroot/kinguser/apl;

    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->Lb()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/apf;->aHr:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/apl;->a(Landroid/view/View;Landroid/view/View;)Lcom/android/animation/Animator;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/kingroot/kinguser/apf$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/apf$2;-><init>(Lcom/kingroot/kinguser/apf;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/Animator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 232
    invoke-virtual {v0}, Lcom/android/animation/Animator;->start()V

    goto :goto_0
.end method

.method private Lg()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ape;->KX()Lcom/kingroot/kinguser/apj;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->KU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 241
    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/apj;->a(Landroid/widget/FrameLayout;)V

    .line 242
    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHq:Landroid/support/v4/view/ViewPager;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/apj;->a(Landroid/support/v4/view/ViewPager;)V

    .line 244
    :cond_0
    return-void
.end method

.method private Lh()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ape;->KX()Lcom/kingroot/kinguser/apj;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->KU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 252
    invoke-interface {v0}, Lcom/kingroot/kinguser/apj;->Lo()V

    .line 254
    :cond_0
    return-void
.end method

.method private Li()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ape;->La()I

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->KZ()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->getDismissMissAnimator()Lcom/android/animation/Animator;

    move-result-object v0

    .line 266
    :goto_0
    if-nez v0, :cond_1

    .line 283
    :goto_1
    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->getDismissHitAnimator()Lcom/android/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/apf;->setBackgroundColor(I)V

    .line 272
    new-instance v1, Lcom/kingroot/kinguser/apf$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/apf$3;-><init>(Lcom/kingroot/kinguser/apf;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/Animator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 282
    invoke-virtual {v0}, Lcom/android/animation/Animator;->start()V

    goto :goto_1
.end method

.method private Lj()V
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/kingroot/kinguser/apf;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 320
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ape;->KY()Lcom/kingroot/kinguser/api;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/api;->cancel()V

    .line 324
    return-void
.end method

.method private Lk()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 330
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 334
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 335
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/ape;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/apf;Lcom/kingroot/kinguser/apg;)Lcom/kingroot/kinguser/apg;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kingroot/kinguser/apf;->aHu:Lcom/kingroot/kinguser/apg;

    return-object p1
.end method

.method private a(Lcom/kingroot/kinguser/ape;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    .line 464
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/apf;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/apf;->fX(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/apf;Lcom/kingroot/kinguser/ape;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/ape;)V

    return-void
.end method

.method public static aW(Landroid/content/Context;)Lcom/kingroot/kinguser/apf;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/kingroot/kinguser/apf;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/apf;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/apf;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHx:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/apg;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHu:Lcom/kingroot/kinguser/apg;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/apf;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHq:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/apf;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHs:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/apf;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHv:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private fX(I)V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ape;->KU()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 393
    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->KY()Lcom/kingroot/kinguser/api;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/apf;->aHu:Lcom/kingroot/kinguser/apg;

    invoke-virtual {v2, p1}, Lcom/kingroot/kinguser/apg;->gc(I)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/apf$4;

    invoke-direct {v3, p0, p1}, Lcom/kingroot/kinguser/apf$4;-><init>(Lcom/kingroot/kinguser/apf;I)V

    invoke-interface {v1, v0, v2, v3}, Lcom/kingroot/kinguser/api;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kingroot/kinguser/api$a;)V

    .line 424
    return-void
.end method

.method static synthetic g(Lcom/kingroot/kinguser/apf;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->Le()V

    return-void
.end method

.method private getDismissBackgroundAnimator()Lcom/android/animation/Animator;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHt:Lcom/kingroot/kinguser/apl;

    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->getBackgroundColor()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/apl;->k(Landroid/view/View;I)Lcom/android/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private getDismissHitAnimator()Lcom/android/animation/Animator;
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHu:Lcom/kingroot/kinguser/apg;

    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->La()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apg;->gc(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->Lb()Landroid/widget/ImageView;

    move-result-object v1

    .line 291
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 292
    :cond_0
    const/4 v0, 0x0

    .line 296
    :goto_0
    return-object v0

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/apf;->aHt:Lcom/kingroot/kinguser/apl;

    invoke-interface {v2, v0, v1}, Lcom/kingroot/kinguser/apl;->b(Landroid/view/View;Landroid/view/View;)Lcom/android/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method private getDismissMissAnimator()Lcom/android/animation/Animator;
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHu:Lcom/kingroot/kinguser/apg;

    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->La()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apg;->gc(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHt:Lcom/kingroot/kinguser/apl;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/apl;->u(Landroid/view/View;)Lcom/android/animation/Animator;

    move-result-object v0

    .line 305
    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 3

    .prologue
    .line 452
    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 454
    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 456
    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 458
    :goto_0
    return v0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/apf;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->Lh()V

    return-void
.end method

.method static synthetic i(Lcom/kingroot/kinguser/apf;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->Lj()V

    return-void
.end method

.method private initViewPager()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 117
    new-instance v0, Lcom/kingroot/kinguser/apf$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/apf$1;-><init>(Lcom/kingroot/kinguser/apf;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apf;->aHs:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 142
    new-instance v0, Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apf;->aHq:Landroid/support/v4/view/ViewPager;

    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHq:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHq:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHq:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHs:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHq:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->KU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/apf;->addView(Landroid/view/View;)V

    .line 148
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/kingroot/kinguser/apf;->aHw:Z

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/apf;->aHw:Z

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ape;->KW()Lcom/kingroot/kinguser/apk;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_1

    .line 188
    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHp:Lcom/kingroot/kinguser/ape;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->La()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/apk;->gd(I)V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHt:Lcom/kingroot/kinguser/apl;

    if-nez v0, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->Lj()V

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->Li()V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/kingroot/kinguser/apf;->aHw:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/apf;->aHq:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kingroot/kinguser/apf;->aHs:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 155
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/kingroot/kinguser/apf;->aHw:Z

    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->Lk()V

    .line 172
    invoke-direct {p0}, Lcom/kingroot/kinguser/apf;->Lc()V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/apf;->aHw:Z

    .line 175
    :cond_0
    return-void
.end method
