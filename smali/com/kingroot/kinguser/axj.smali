.class public Lcom/kingroot/kinguser/axj;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/axj$a;
    }
.end annotation


# instance fields
.field private aYb:Z

.field private aZd:I

.field private aZe:Lcom/kingcore/uilib/VerticalViewPager;

.field private final aZf:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private aZg:Landroid/widget/CheckBox;

.field private aZh:Z

.field private aZi:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/axj;->aZd:I

    .line 72
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axj;->aYb:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/axj;->aZe:Lcom/kingcore/uilib/VerticalViewPager;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axj;->aZf:Landroid/util/SparseArray;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axj;->aZh:Z

    .line 80
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axj;->aZi:Z

    .line 84
    return-void
.end method

.method private B(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 247
    :cond_0
    :try_start_0
    const-string v0, "translationY"

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    .line 248
    invoke-static {v3}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 247
    invoke-static {p1, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 249
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 250
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 251
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 252
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private C(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 405
    const/16 v0, 0x190

    new-instance v1, Lcom/kingroot/kinguser/axj$7;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axj$7;-><init>(Lcom/kingroot/kinguser/axj;Landroid/view/View;)V

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/bhk;->c(Landroid/view/View;ILcom/android/animation/AnimatorListenerAdapter;)V

    .line 412
    return-void
.end method

.method private D(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 419
    :cond_0
    const/16 v0, 0x190

    new-instance v1, Lcom/kingroot/kinguser/axj$8;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axj$8;-><init>(Lcom/kingroot/kinguser/axj;Landroid/view/View;)V

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;ILcom/android/animation/AnimatorListenerAdapter;)V

    goto :goto_0
.end method

.method private E(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axj;->aZh:Z

    if-eqz v0, :cond_0

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axj;->aZh:Z

    .line 432
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axj;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axj$9;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axj$9;-><init>(Lcom/kingroot/kinguser/axj;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 445
    :cond_0
    return-void
.end method

.method private TU()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axj;->aYb:Z

    .line 297
    invoke-static {}, Lcom/kingroot/kinguser/aiy;->yI()Lcom/kingroot/kinguser/aiy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiy;->yJ()V

    .line 298
    return-void
.end method

.method private TV()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axj;->aYb:Z

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axj;)Lcom/kingcore/uilib/VerticalViewPager;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZe:Lcom/kingcore/uilib/VerticalViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axj;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axj;->D(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axj;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZg:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axj;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axj;->C(Landroid/view/View;)V

    return-void
.end method

.method private n(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    new-instance v0, Lcom/kingroot/kinguser/axj$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axj$6;-><init>(Lcom/kingroot/kinguser/axj;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axj;->B(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public Uh()V
    .locals 2

    .prologue
    .line 310
    invoke-static {}, Lcom/kingroot/kinguser/bgp;->abR()V

    .line 313
    iget v0, p0, Lcom/kingroot/kinguser/axj;->aZd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axj;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->h(Landroid/content/Context;I)V

    .line 316
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axj;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 322
    :goto_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/axj;->TU()V

    .line 323
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axj;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/axj;->aZd:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aiy;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 270
    invoke-direct {p0}, Lcom/kingroot/kinguser/axj;->TV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x27d9

    if-ne v0, v1, :cond_0

    .line 277
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/kingroot/kinguser/axj;->aZd:I

    .line 280
    invoke-direct {p0}, Lcom/kingroot/kinguser/axj;->TU()V

    goto :goto_0
.end method

.method protected oG()Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f0f02b5

    const v8, 0x7f0f02b4

    const v7, 0x7f0f02b2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    const v0, 0x7f0300ff

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 98
    const v0, 0x7f02014e

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    iget-object v4, p0, Lcom/kingroot/kinguser/axj;->aZf:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    const v4, 0x7f020152

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f07016a

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 103
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f070169

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 104
    const v0, 0x7f0f02b6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/kingroot/kinguser/axj;->n(Landroid/view/View;I)V

    .line 106
    const v0, 0x7f0f02b6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    new-instance v4, Lcom/kingroot/kinguser/axj$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axj$1;-><init>(Lcom/kingroot/kinguser/axj;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const v0, 0x7f0300ff

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 118
    const v0, 0x7f02014f

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 120
    iget-object v4, p0, Lcom/kingroot/kinguser/axj;->aZf:Landroid/util/SparseArray;

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    const v4, 0x7f020153

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f07016c

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 123
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f07016b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 124
    const v0, 0x7f0f02b6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/kingroot/kinguser/axj;->n(Landroid/view/View;I)V

    .line 125
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const v0, 0x7f030100

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    const v0, 0x7f020150

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 130
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    iget-object v3, p0, Lcom/kingroot/kinguser/axj;->aZf:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    const v3, 0x7f020154

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f07016f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 134
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f07016e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 135
    const v0, 0x7f0f02b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 136
    new-instance v0, Lcom/kingroot/kinguser/axj$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axj$2;-><init>(Lcom/kingroot/kinguser/axj;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f0f02b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/kingroot/kinguser/axj;->aZg:Landroid/widget/CheckBox;

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZg:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZg:Landroid/widget/CheckBox;

    new-instance v4, Lcom/kingroot/kinguser/axj$3;

    invoke-direct {v4, p0, v3}, Lcom/kingroot/kinguser/axj$3;-><init>(Lcom/kingroot/kinguser/axj;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    const v0, 0x7f0f02ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/kingroot/kinguser/axj$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axj$4;-><init>(Lcom/kingroot/kinguser/axj;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, Lcom/kingroot/kinguser/axj$a;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/axj$a;-><init>(Ljava/util/List;)V

    .line 183
    new-instance v1, Lcom/kingcore/uilib/VerticalViewPager;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axj;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingcore/uilib/VerticalViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/axj;->aZe:Lcom/kingcore/uilib/VerticalViewPager;

    .line 184
    iget-object v1, p0, Lcom/kingroot/kinguser/axj;->aZe:Lcom/kingcore/uilib/VerticalViewPager;

    invoke-virtual {v1, v0}, Lcom/kingcore/uilib/VerticalViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZe:Lcom/kingcore/uilib/VerticalViewPager;

    invoke-virtual {v0, v5}, Lcom/kingcore/uilib/VerticalViewPager;->setVerticalScrollBarEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZe:Lcom/kingcore/uilib/VerticalViewPager;

    invoke-virtual {v0, v5}, Lcom/kingcore/uilib/VerticalViewPager;->setHorizontalScrollBarEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZe:Lcom/kingcore/uilib/VerticalViewPager;

    invoke-virtual {v0, v5, v6}, Lcom/kingcore/uilib/VerticalViewPager;->setCurrentItem(IZ)V

    .line 188
    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZe:Lcom/kingcore/uilib/VerticalViewPager;

    invoke-virtual {v0, p0}, Lcom/kingcore/uilib/VerticalViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZe:Lcom/kingcore/uilib/VerticalViewPager;

    invoke-virtual {v0}, Lcom/kingcore/uilib/VerticalViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axj$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axj$5;-><init>(Lcom/kingroot/kinguser/axj;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZe:Lcom/kingcore/uilib/VerticalViewPager;

    return-object v0
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 263
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/kingroot/kinguser/yt;

    iget-object v1, p0, Lcom/kingroot/kinguser/axj;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/yt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 290
    invoke-static {}, Lcom/kingroot/kinguser/aiy;->yI()Lcom/kingroot/kinguser/aiy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axj;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aiy;->a(Landroid/os/Handler;)V

    .line 291
    invoke-static {}, Lcom/kingroot/kinguser/aiy;->yI()Lcom/kingroot/kinguser/aiy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiy;->ll()V

    .line 292
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 360
    if-eq p1, v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axj;->aZi:Z

    if-nez v0, :cond_0

    .line 368
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axj;->aZi:Z

    .line 369
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/bfi;->ai(II)V

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZf:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 334
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/axj;->aZh:Z

    if-eqz v1, :cond_0

    .line 335
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/kinguser/axj;->aZh:Z

    .line 336
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axj;->E(Landroid/view/View;)V

    .line 339
    :cond_0
    const v1, 0x7f0f02b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 340
    const v2, 0x7f0f02b3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 342
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/axj;->D(Landroid/view/View;)V

    .line 343
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axj;->C(Landroid/view/View;)V

    .line 344
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZg:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axj;->aZg:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18817

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 355
    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStop()V

    .line 356
    return-void
.end method
