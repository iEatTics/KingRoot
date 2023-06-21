.class public Lcom/kingroot/kinguser/atw;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/atw$a;
    }
.end annotation


# instance fields
.field private aQD:Landroid/widget/RelativeLayout;

.field private aQE:Landroid/widget/ImageView;

.field private aQF:Landroid/widget/ImageView;

.field private aQG:Landroid/widget/LinearLayout;

.field private aQH:Lcom/kingroot/kinguser/atw$a;

.field private afU:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v2, p0, Lcom/kingroot/kinguser/atw;->aQH:Lcom/kingroot/kinguser/atw$a;

    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/atw;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03012a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/atw;->aQD:Landroid/widget/RelativeLayout;

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->aQD:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/atw;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->aQD:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f032b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atw;->aQE:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->aQD:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f032c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atw;->aQF:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->aQD:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f032d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atw;->afU:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->aQD:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f032e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/atw;->aQG:Landroid/widget/LinearLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atw;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->aQF:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/atw;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->afU:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/atw;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kingroot/kinguser/atw;->getResultLayoutAnim()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/atw;)Lcom/kingroot/kinguser/atw$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->aQH:Lcom/kingroot/kinguser/atw$a;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/atw;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->aQG:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getAppIconAnim()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 90
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 93
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 94
    return-object v0
.end method

.method private getBlueMaskAnim()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 164
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 165
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 166
    return-object v0
.end method

.method private getResultLayoutAnim()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 174
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 175
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 176
    return-object v0
.end method

.method private getWhiteCircleAnim()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 102
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x44e10000    # 1800.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 105
    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 107
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 108
    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 109
    const-wide/16 v4, 0x640

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 111
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 112
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 113
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 115
    new-instance v0, Lcom/kingroot/kinguser/atw$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atw$1;-><init>(Lcom/kingroot/kinguser/atw;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 156
    return-object v1
.end method


# virtual methods
.method public jh(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->aQE:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->aQF:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->afU:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->aQG:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->aQE:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    invoke-static {p1}, Lcom/kingroot/kinguser/atu;->je(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    iget-object v1, p0, Lcom/kingroot/kinguser/atw;->afU:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/atw;->aQG:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/kingroot/kinguser/atw;->aQE:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/kingroot/kinguser/atw;->getBlueMaskAnim()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    iget-object v1, p0, Lcom/kingroot/kinguser/atw;->aQF:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/kingroot/kinguser/atw;->getWhiteCircleAnim()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/atw;->afU:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/kingroot/kinguser/atw;->getAppIconAnim()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/atw;->afU:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v1, p0, Lcom/kingroot/kinguser/atw;->afU:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setStartGameMaskViewControllerListener(Lcom/kingroot/kinguser/atw$a;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/kingroot/kinguser/atw;->aQH:Lcom/kingroot/kinguser/atw$a;

    .line 181
    return-void
.end method
