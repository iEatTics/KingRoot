.class public Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$a;
    }
.end annotation


# instance fields
.field public bid:I

.field public bie:F

.field public bif:F

.field public big:F

.field private bih:Z

.field private bii:Z

.field private bij:Z

.field private bik:Landroid/view/View;

.field private bil:Landroid/view/View;

.field private bim:Landroid/view/View;

.field private bin:F

.field private bio:F

.field private bip:F

.field private biq:F

.field private bir:F

.field private bis:Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$a;

.field private bit:Landroid/view/animation/TranslateAnimation;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    .line 31
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bie:F

    .line 36
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    .line 37
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    .line 42
    iput-boolean v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bih:Z

    .line 47
    iput-boolean v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bii:Z

    .line 52
    iput-boolean v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bij:Z

    .line 64
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bin:F

    .line 70
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bio:F

    .line 76
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bip:F

    .line 81
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->biq:F

    .line 86
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bir:F

    .line 96
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->G(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    .line 31
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bie:F

    .line 36
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    .line 37
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    .line 42
    iput-boolean v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bih:Z

    .line 47
    iput-boolean v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bii:Z

    .line 52
    iput-boolean v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bij:Z

    .line 64
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bin:F

    .line 70
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bio:F

    .line 76
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bip:F

    .line 81
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->biq:F

    .line 86
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bir:F

    .line 101
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->G(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    .line 31
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bie:F

    .line 36
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    .line 37
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    .line 42
    iput-boolean v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bih:Z

    .line 47
    iput-boolean v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bii:Z

    .line 52
    iput-boolean v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bij:Z

    .line 64
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bin:F

    .line 70
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bio:F

    .line 76
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bip:F

    .line 81
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->biq:F

    .line 86
    iput v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bir:F

    .line 106
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->G(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method private G(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method private XH()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method private a(Landroid/view/View;FFJ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bit:Landroid/view/animation/TranslateAnimation;

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bit:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p4, p5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 297
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bit:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bit:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->start()V

    .line 299
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->if(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;Z)Z
    .locals 0

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bij:Z

    return p1
.end method

.method private if(I)V
    .locals 1

    .prologue
    .line 260
    iput p1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    .line 261
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    packed-switch v0, :pswitch_data_0

    .line 291
    :pswitch_0
    return-void

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x1

    const-wide/16 v4, 0xc8

    const/4 v3, 0x0

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 142
    packed-switch v0, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 254
    return v8

    .line 145
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bie:F

    goto :goto_0

    .line 151
    :pswitch_1
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bip:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    if-eq v0, v8, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 152
    :cond_1
    invoke-direct {p0, v10}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->if(I)V

    .line 153
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bil:Landroid/view/View;

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->a(Landroid/view/View;FFJ)V

    .line 154
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bik:Landroid/view/View;

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->a(Landroid/view/View;FFJ)V

    .line 155
    iput-boolean v10, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bij:Z

    .line 156
    iput v3, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    .line 157
    iput v3, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    .line 158
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->requestLayout()V

    .line 161
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bil:Landroid/view/View;

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bir:F

    neg-float v2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->a(Landroid/view/View;FFJ)V

    .line 163
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bim:Landroid/view/View;

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bir:F

    neg-float v2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->a(Landroid/view/View;FFJ)V

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$1;-><init>(Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->biq:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    if-ne v0, v9, :cond_4

    .line 180
    invoke-direct {p0, v10}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->if(I)V

    .line 181
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bil:Landroid/view/View;

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->a(Landroid/view/View;FFJ)V

    .line 182
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bim:Landroid/view/View;

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->a(Landroid/view/View;FFJ)V

    .line 183
    iput-boolean v10, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bij:Z

    .line 184
    iput v3, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    .line 185
    iput v3, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    .line 186
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->requestLayout()V

    .line 190
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->biq:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bil:Landroid/view/View;

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bir:F

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    add-float/2addr v2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->a(Landroid/view/View;FFJ)V

    .line 192
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bim:Landroid/view/View;

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bir:F

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    add-float/2addr v2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->a(Landroid/view/View;FFJ)V

    .line 194
    iput v3, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    .line 195
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bir:F

    neg-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    .line 196
    iput-boolean v8, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bij:Z

    .line 197
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->requestLayout()V

    goto/16 :goto_0

    .line 203
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bie:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    .line 205
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bin:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    .line 206
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bio:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    .line 209
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bip:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 210
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bip:F

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    .line 213
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bir:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 214
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bir:F

    neg-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    .line 218
    :cond_6
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_b

    iget-boolean v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bij:Z

    if-nez v0, :cond_b

    .line 219
    iput v3, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    .line 220
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bip:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    if-ne v0, v9, :cond_8

    .line 222
    :cond_7
    invoke-direct {p0, v8}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->if(I)V

    .line 225
    :cond_8
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bip:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    if-eq v0, v8, :cond_9

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    if-ne v0, v9, :cond_a

    .line 226
    :cond_9
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->if(I)V

    .line 229
    :cond_a
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->requestLayout()V

    .line 233
    :cond_b
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bij:Z

    if-nez v0, :cond_0

    .line 234
    iput v3, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    .line 235
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->biq:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    if-ne v0, v8, :cond_d

    .line 236
    :cond_c
    invoke-direct {p0, v9}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->if(I)V

    .line 239
    :cond_d
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->biq:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    if-eq v0, v9, :cond_e

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bid:I

    if-ne v0, v8, :cond_f

    .line 240
    :cond_e
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->if(I)V

    .line 243
    :cond_f
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->requestLayout()V

    goto/16 :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 116
    iget-boolean v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bih:Z

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0, v5}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bik:Landroid/view/View;

    .line 118
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bil:Landroid/view/View;

    .line 119
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bim:Landroid/view/View;

    .line 120
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->XH()V

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bik:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bip:F

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->biq:F

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bir:F

    .line 124
    iput-boolean v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bih:Z

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bik:Landroid/view/View;

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bik:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bik:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    iget v4, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bil:Landroid/view/View;

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bil:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    iget v4, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bil:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bim:Landroid/view/View;

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bil:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bim:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    iget v4, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bil:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bim:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 132
    return-void
.end method

.method public setOnRefreshListener(Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$a;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bis:Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$a;

    .line 310
    return-void
.end method
