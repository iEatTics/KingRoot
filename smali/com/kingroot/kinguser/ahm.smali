.class public Lcom/kingroot/kinguser/ahm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ahm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Mt:Landroid/content/SharedPreferences;

.field private anQ:Lcom/kingroot/kinguser/tk;

.field private aqU:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/kingroot/kinguser/ahm$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ahm$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ahm;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ahm;->aqU:Z

    .line 49
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "app_launcher_mask_setting"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahm;->Mt:Landroid/content/SharedPreferences;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ahm$1;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahm;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ahm;)Lcom/kingroot/kinguser/tk;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/ahm;->anQ:Lcom/kingroot/kinguser/tk;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/View;Lcom/kingcore/uilib/SlideFlashTextView;Landroid/view/WindowManager;)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 139
    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p2, v8, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 147
    :cond_2
    const-string v0, "translationY"

    new-array v1, v8, [I

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    neg-int v2, v2

    aput v2, v1, v9

    aput v9, v1, v10

    invoke-static {p2, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/android/animation/ObjectAnimator;

    move-result-object v6

    .line 148
    const-string v0, "alpha"

    new-array v1, v8, [F

    fill-array-data v1, :array_0

    invoke-static {p2, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v7

    .line 149
    const-wide/16 v0, 0xc8

    invoke-virtual {v7, v0, v1}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 150
    const-wide/16 v0, 0x190

    invoke-virtual {v6, v0, v1}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 152
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 153
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 155
    new-instance v0, Lcom/kingroot/kinguser/ahm$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ahm$2;-><init>(Lcom/kingroot/kinguser/ahm;Lcom/kingcore/uilib/SlideFlashTextView;Landroid/view/View;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Lcom/android/animation/ObjectAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 193
    new-instance v0, Lcom/android/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 194
    new-array v1, v8, [Lcom/android/animation/Animator;

    aput-object v7, v1, v9

    aput-object v6, v1, v10

    invoke-virtual {v0, v1}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 195
    invoke-virtual {v0}, Lcom/android/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 148
    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ahm;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/kingroot/kinguser/ahm;->aqU:Z

    return p1
.end method

.method public static xs()Lcom/kingroot/kinguser/ahm;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/kingroot/kinguser/ahm;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ahm;

    return-object v0
.end method


# virtual methods
.method public fR(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/ahm;->Mt:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sp_key_had_show_mask_for_pkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public fS(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/ahm;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sp_key_had_show_mask_for_pkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method

.method public fT(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/ahm;->Mt:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_show_toast_tip_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public fU(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 101
    const-string v0, "addAppLaucherMaskView"

    invoke-static {v0}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahm;->anQ:Lcom/kingroot/kinguser/tk;

    .line 102
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ahm;->aqU:Z

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 108
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 110
    const v2, 0x7f030090

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 111
    const v1, 0x7f0f01ec

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/SlideFlashTextView;

    .line 112
    const v3, 0x7f0f00ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 113
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f07007a

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/kingcore/uilib/SlideFlashTextView;->setText(Ljava/lang/String;)V

    .line 114
    const/4 v4, 0x2

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Lcom/kingcore/uilib/SlideFlashTextView;->q(II)V

    .line 115
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f0e0121

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/kingcore/uilib/SlideFlashTextView;->setTextColor(I)V

    .line 116
    const-string v4, "#%06X"

    new-array v5, v9, [Ljava/lang/Object;

    const v6, 0xffffff

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v7

    const v8, 0x7f0e0005

    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v7

    and-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/kingcore/uilib/SlideFlashTextView;->setBackgroundColor(Ljava/lang/String;)V

    .line 119
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 120
    const/4 v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 121
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x108

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 122
    const/16 v5, 0x7d3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 123
    const/4 v5, -0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 124
    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {v5}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 125
    const/16 v5, 0x31

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 126
    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 127
    invoke-interface {v0, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v4, p0, Lcom/kingroot/kinguser/ahm;->anQ:Lcom/kingroot/kinguser/tk;

    if-eqz v4, :cond_1

    .line 129
    iget-object v4, p0, Lcom/kingroot/kinguser/ahm;->anQ:Lcom/kingroot/kinguser/tk;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Lcom/kingroot/kinguser/tk;->s(J)V

    .line 132
    :cond_1
    iput-boolean v9, p0, Lcom/kingroot/kinguser/ahm;->aqU:Z

    .line 133
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/kingroot/kinguser/ahm;->a(Landroid/view/View;Landroid/view/View;Lcom/kingcore/uilib/SlideFlashTextView;Landroid/view/WindowManager;)V

    goto/16 :goto_0
.end method

.method public j(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/ahm;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_show_toast_tip_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    return-void
.end method
