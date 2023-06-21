.class public Lcom/kingroot/kinguser/bjd;
.super Lcom/kingroot/kinguser/add;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/kingroot/kinguser/bjb$b;
.implements Lcom/kingroot/kinguser/bjf$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bjd$a;,
        Lcom/kingroot/kinguser/bjd$b;
    }
.end annotation


# instance fields
.field protected bvJ:Landroid/widget/FrameLayout;

.field protected bvK:Landroid/widget/FrameLayout;

.field private bvL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bvM:Landroid/view/View;

.field private bvN:Lcom/kingroot/kinguser/bib;

.field protected bvO:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

.field private bvP:Lcom/kingroot/common/uilib/KBaseListView;

.field private bvQ:Lcom/kingroot/common/uilib/KBaseListView;

.field private bvR:Lcom/kingroot/kinguser/bjc;

.field private bvS:Lcom/kingroot/kinguser/bjc;

.field private final bvT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bvU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile bvV:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bvW:Lcom/kingroot/kinguser/bjd$b;

.field private bvX:Lcom/kingroot/kinguser/bjb;

.field private bvY:Lcom/kingroot/kinguser/bjf;

.field private final bvZ:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/add;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvL:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvT:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvU:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvV:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance v0, Lcom/kingroot/kinguser/bjd$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjd$1;-><init>(Lcom/kingroot/kinguser/bjd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 592
    new-instance v0, Lcom/kingroot/kinguser/bjd$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjd$7;-><init>(Lcom/kingroot/kinguser/bjd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvZ:Ljava/util/Comparator;

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/bjb;->adD()Lcom/kingroot/kinguser/bjb;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvX:Lcom/kingroot/kinguser/bjb;

    .line 165
    new-instance v0, Lcom/kingroot/kinguser/bjd$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjd$5;-><init>(Lcom/kingroot/kinguser/bjd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvW:Lcom/kingroot/kinguser/bjd$b;

    .line 176
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/kinguser/bjf;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvY:Lcom/kingroot/kinguser/bjf;

    return-object v0
.end method

.method private a(Landroid/view/View;FFFFLjava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 785
    .line 786
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 787
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 788
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 789
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 790
    if-eqz p6, :cond_0

    .line 791
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bjd$10;

    invoke-direct {v1, p0, p6}, Lcom/kingroot/kinguser/bjd$10;-><init>(Lcom/kingroot/kinguser/bjd;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 798
    :cond_0
    return-void
.end method

.method private a(Landroid/view/animation/Animation;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 804
    if-eqz p2, :cond_0

    .line 805
    new-instance v0, Lcom/kingroot/kinguser/bjd$11;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/bjd$11;-><init>(Lcom/kingroot/kinguser/bjd;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 812
    :cond_0
    return-void
.end method

.method private a(Lcom/kingroot/common/uilib/KBaseListView;Lcom/kingroot/kinguser/bjc;Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 661
    invoke-virtual {p1}, Lcom/kingroot/common/uilib/KBaseListView;->getFirstVisiblePosition()I

    move-result v2

    .line 662
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/kingroot/common/uilib/KBaseListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 663
    invoke-virtual {p1, v0}, Lcom/kingroot/common/uilib/KBaseListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 664
    add-int v4, v2, v0

    .line 665
    if-ne v4, v1, :cond_1

    .line 666
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvL:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 677
    :cond_0
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/kingroot/common/uilib/KBaseListView;->getPositionForView(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 681
    :goto_1
    if-ne v0, v1, :cond_3

    .line 682
    invoke-virtual {p2}, Lcom/kingroot/kinguser/bjc;->notifyDataSetChanged()V

    .line 778
    :goto_2
    return-void

    .line 669
    :cond_1
    invoke-virtual {p2, v4}, Lcom/kingroot/kinguser/bjc;->getItemId(I)J

    move-result-wide v4

    .line 670
    if-eq v3, p3, :cond_2

    .line 671
    iget-object v6, p0, Lcom/kingroot/kinguser/bjd;->bvL:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 685
    :cond_3
    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/bjc;->jl(I)Lcom/kingroot/kinguser/bji;

    move-result-object v5

    .line 686
    invoke-virtual {p2, v5}, Lcom/kingroot/kinguser/bjc;->b(Lcom/kingroot/kinguser/bji;)V

    .line 689
    invoke-virtual {p1}, Lcom/kingroot/common/uilib/KBaseListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 690
    new-instance v0, Lcom/kingroot/kinguser/bjd$9;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bjd$9;-><init>(Lcom/kingroot/kinguser/bjd;Landroid/view/ViewTreeObserver;Lcom/kingroot/common/uilib/KBaseListView;Lcom/kingroot/kinguser/bjc;Lcom/kingroot/kinguser/bji;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2
.end method

.method private a(Lcom/kingroot/common/uilib/KBaseListView;Lcom/kingroot/kinguser/bjc;Landroid/view/View;FJ)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 630
    if-nez p3, :cond_0

    .line 655
    :goto_0
    return-void

    .line 633
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_1

    .line 634
    const-wide/16 p5, 0x64

    .line 636
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kingroot/common/uilib/KBaseListView;->setEnabled(Z)V

    .line 638
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v3, p4, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 639
    const/high16 v1, 0x3f800000    # 1.0f

    .line 640
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 641
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 642
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 643
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 644
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 645
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 646
    invoke-virtual {v1, p5, p6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 647
    new-instance v0, Lcom/kingroot/kinguser/bjd$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingroot/kinguser/bjd$8;-><init>(Lcom/kingroot/kinguser/bjd;Lcom/kingroot/common/uilib/KBaseListView;Lcom/kingroot/kinguser/bjc;Landroid/view/View;)V

    invoke-direct {p0, v1, v0}, Lcom/kingroot/kinguser/bjd;->a(Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    .line 653
    invoke-virtual {p3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjd;Landroid/view/View;FFFFLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct/range {p0 .. p6}, Lcom/kingroot/kinguser/bjd;->a(Landroid/view/View;FFFFLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjd;Lcom/kingroot/common/uilib/KBaseListView;Lcom/kingroot/kinguser/bjc;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/common/uilib/KBaseListView;Lcom/kingroot/kinguser/bjc;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjd;Lcom/kingroot/kinguser/bji;Z)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/kinguser/bji;Z)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjd;Ljava/util/Collection;Z)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bjd;->a(Ljava/util/Collection;Z)V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/bji;Z)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 528
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvT:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvU:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 535
    :goto_0
    if-eqz p2, :cond_2

    const/4 v1, 0x0

    .line 536
    :goto_1
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->jj(I)V

    .line 538
    invoke-static {}, Lcom/kingroot/kinguser/ahe;->wL()Lcom/kingroot/kinguser/ahe;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/kingroot/kinguser/ahe;->x(Ljava/lang/String;Z)V

    .line 539
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adE()V

    .line 543
    if-nez p2, :cond_0

    .line 544
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bjd$6;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/bjd$6;-><init>(Lcom/kingroot/kinguser/bjd;Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->b(Lcom/kingroot/kinguser/bek;)V

    .line 556
    :cond_0
    return-void

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvU:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvT:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private a(Ljava/util/Collection;Z)V
    .locals 6
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1084
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 1085
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1090
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bji;

    .line 1091
    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bji;->setChecked(Z)V

    .line 1092
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 1093
    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->jj(I)V

    .line 1099
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1084
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 1102
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ahe;->wL()Lcom/kingroot/kinguser/ahe;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ahe;->h(Ljava/util/Map;)V

    .line 1105
    if-eqz p2, :cond_4

    .line 1106
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1107
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1112
    :goto_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adE()V

    .line 1115
    if-nez p2, :cond_3

    .line 1116
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bjd$4;

    invoke-direct {v1, p0, v2}, Lcom/kingroot/kinguser/bjd$4;-><init>(Lcom/kingroot/kinguser/bjd;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->b(Lcom/kingroot/kinguser/bek;)V

    .line 1128
    :cond_3
    return-void

    .line 1109
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1110
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method private a(Lcom/kingroot/common/uilib/KBaseListView;FJLcom/kingroot/kinguser/bjc;ZLcom/kingroot/kinguser/bjd$a;)Z
    .locals 19
    .param p1    # Lcom/kingroot/common/uilib/KBaseListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/kingroot/kinguser/bjc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 822
    invoke-virtual/range {p1 .. p1}, Lcom/kingroot/common/uilib/KBaseListView;->getFirstVisiblePosition()I

    move-result v4

    .line 823
    invoke-virtual/range {p1 .. p1}, Lcom/kingroot/common/uilib/KBaseListView;->getLastVisiblePosition()I

    move-result v10

    .line 824
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 826
    const/4 v4, 0x0

    .line 917
    :goto_0
    return v4

    .line 828
    :cond_0
    const/4 v5, -0x1

    if-ne v10, v5, :cond_1

    .line 830
    const/4 v4, 0x0

    goto :goto_0

    .line 832
    :cond_1
    if-ge v10, v4, :cond_2

    .line 834
    const/4 v4, 0x0

    goto :goto_0

    .line 838
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-gtz v5, :cond_3

    .line 839
    const-wide/16 p3, 0x64

    .line 841
    :cond_3
    const-wide/16 v6, 0x32

    sub-int v5, v10, v4

    int-to-long v8, v5

    mul-long/2addr v6, v8

    add-long v12, p3, v6

    .line 844
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingroot/common/uilib/KBaseListView;->setEnabled(Z)V

    .line 846
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 849
    const-wide/16 v8, 0x0

    .line 850
    const/4 v6, 0x0

    .line 851
    const/4 v5, 0x0

    move v7, v4

    .line 852
    :goto_1
    if-gt v7, v10, :cond_4

    .line 854
    if-eqz p6, :cond_5

    .line 855
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Lcom/kingroot/kinguser/bjc;->jl(I)Lcom/kingroot/kinguser/bji;

    move-result-object v4

    .line 856
    if-eqz v4, :cond_5

    .line 857
    invoke-virtual {v4}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 858
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vk()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 881
    :cond_4
    if-eqz v6, :cond_7

    .line 884
    new-instance v4, Lcom/kingroot/kinguser/bjd$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v5, v2}, Lcom/kingroot/kinguser/bjd$12;-><init>(Lcom/kingroot/kinguser/bjd;Lcom/kingroot/kinguser/bjd$a;ILcom/kingroot/common/uilib/KBaseListView;)V

    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 917
    const/4 v4, 0x1

    goto :goto_0

    .line 864
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/kingroot/common/uilib/KBaseListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 865
    if-nez v14, :cond_6

    move v4, v5

    move-object v5, v6

    .line 852
    :goto_2
    add-int/lit8 v6, v7, 0x1

    const-wide/16 v14, 0x32

    add-long/2addr v8, v14

    move v7, v6

    move-object v6, v5

    move v5, v4

    goto :goto_1

    .line 868
    :cond_6
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 871
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 872
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v6, v15, v0, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 873
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 874
    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 875
    sub-long v16, v12, v8

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 876
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 877
    invoke-virtual {v14, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 913
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/kingroot/common/uilib/KBaseListView;->setEnabled(Z)V

    .line 914
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private adE()V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvT:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvZ:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvU:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvZ:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 360
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adF()V

    .line 361
    return-void
.end method

.method private adF()V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvR:Lcom/kingroot/kinguser/bjc;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvT:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjc;->bX(Ljava/util/List;)V

    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvR:Lcom/kingroot/kinguser/bjc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjc;->notifyDataSetChanged()V

    .line 367
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvS:Lcom/kingroot/kinguser/bjc;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvU:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjc;->bX(Ljava/util/List;)V

    .line 368
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvS:Lcom/kingroot/kinguser/bjc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjc;->notifyDataSetChanged()V

    .line 369
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvO:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvO:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 372
    :cond_0
    return-void
.end method

.method private adG()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 506
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvM:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvM:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 508
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvM:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 509
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvY:Lcom/kingroot/kinguser/bjf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjf;->as(Z)V

    .line 511
    :cond_0
    return-void
.end method

.method private adH()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 515
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvM:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvM:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 517
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvM:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 518
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvY:Lcom/kingroot/kinguser/bjf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjf;->as(Z)V

    .line 520
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bjd;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adH()V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bjd;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvV:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c(Lcom/kingroot/kinguser/bji;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :goto_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adF()V

    .line 354
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bjd;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvL:Ljava/util/HashMap;

    return-object v0
.end method

.method private d(Lcom/kingroot/kinguser/bji;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->Vx:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 429
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/kingroot/kinguser/bjd;->bvR:Lcom/kingroot/kinguser/bjc;

    .line 430
    :goto_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->adU()Landroid/view/View;

    move-result-object v4

    .line 431
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/kingroot/kinguser/bjd;->bvP:Lcom/kingroot/common/uilib/KBaseListView;

    .line 432
    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 433
    :goto_2
    int-to-float v5, v0

    const-wide/16 v6, 0x1f4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/common/uilib/KBaseListView;Lcom/kingroot/kinguser/bjc;Landroid/view/View;FJ)V

    .line 434
    return-void

    .line 429
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/bjd;->bvS:Lcom/kingroot/kinguser/bjc;

    goto :goto_0

    .line 431
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/bjd;->bvQ:Lcom/kingroot/common/uilib/KBaseListView;

    goto :goto_1

    .line 432
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_2
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/kinguser/bjd$b;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvW:Lcom/kingroot/kinguser/bjd$b;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/common/uilib/KBaseListView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvP:Lcom/kingroot/common/uilib/KBaseListView;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/common/uilib/KBaseListView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvQ:Lcom/kingroot/common/uilib/KBaseListView;

    return-object v0
.end method


# virtual methods
.method public K(Landroid/view/View;)V
    .locals 10
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 925
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->Vx:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_4

    .line 927
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18815

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 929
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 932
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bji;

    .line 934
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 935
    if-eqz v1, :cond_0

    .line 938
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vk()Z

    move-result v1

    if-nez v1, :cond_0

    .line 943
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 946
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 948
    const v0, 0x7f070081

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->show(I)V

    .line 1079
    :cond_2
    :goto_1
    return-void

    .line 951
    :cond_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adG()V

    .line 952
    iget-object v2, p0, Lcom/kingroot/kinguser/bjd;->bvP:Lcom/kingroot/common/uilib/KBaseListView;

    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvP:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/KBaseListView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    const-wide/16 v4, 0x1f4

    iget-object v6, p0, Lcom/kingroot/kinguser/bjd;->bvR:Lcom/kingroot/kinguser/bjc;

    const/4 v7, 0x1

    new-instance v8, Lcom/kingroot/kinguser/bjd$2;

    invoke-direct {v8, p0, v9}, Lcom/kingroot/kinguser/bjd$2;-><init>(Lcom/kingroot/kinguser/bjd;Ljava/util/ArrayList;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/common/uilib/KBaseListView;FJLcom/kingroot/kinguser/bjc;ZLcom/kingroot/kinguser/bjd$a;)Z

    move-result v0

    .line 996
    if-nez v0, :cond_2

    .line 997
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adH()V

    .line 998
    const/4 v0, 0x0

    invoke-direct {p0, v9, v0}, Lcom/kingroot/kinguser/bjd;->a(Ljava/util/Collection;Z)V

    goto :goto_1

    .line 1003
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18816

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1004
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bji;

    .line 1009
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 1010
    if-eqz v1, :cond_5

    .line 1013
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vl()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1018
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1020
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 1022
    const v0, 0x7f070080

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->show(I)V

    goto :goto_1

    .line 1025
    :cond_7
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adG()V

    .line 1026
    iget-object v2, p0, Lcom/kingroot/kinguser/bjd;->bvQ:Lcom/kingroot/common/uilib/KBaseListView;

    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvQ:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/KBaseListView;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v3, v0

    const-wide/16 v4, 0x1f4

    iget-object v6, p0, Lcom/kingroot/kinguser/bjd;->bvS:Lcom/kingroot/kinguser/bjc;

    const/4 v7, 0x0

    new-instance v8, Lcom/kingroot/kinguser/bjd$3;

    invoke-direct {v8, p0, v9}, Lcom/kingroot/kinguser/bjd$3;-><init>(Lcom/kingroot/kinguser/bjd;Ljava/util/ArrayList;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/common/uilib/KBaseListView;FJLcom/kingroot/kinguser/bjc;ZLcom/kingroot/kinguser/bjd$a;)Z

    move-result v0

    .line 1073
    if-nez v0, :cond_2

    .line 1074
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adH()V

    .line 1075
    const/4 v0, 0x1

    invoke-direct {p0, v9, v0}, Lcom/kingroot/kinguser/bjd;->a(Ljava/util/Collection;Z)V

    goto/16 :goto_1
.end method

.method public a(ILjava/lang/Object;II)V
    .locals 3

    .prologue
    .line 560
    packed-switch p1, :pswitch_data_0

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 562
    :pswitch_0
    if-eqz p2, :cond_0

    .line 563
    new-instance v1, Lcom/kingroot/kinguser/bji;

    check-cast p2, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-direct {v1, p2}, Lcom/kingroot/kinguser/bji;-><init>(Ljava/lang/Object;)V

    .line 565
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adB()I

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adB()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 567
    :goto_1
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bji;->setChecked(Z)V

    .line 568
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, -0x2710

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 566
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 311
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/add;->a(Landroid/os/Message;)V

    .line 312
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    return-void

    .line 316
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvJ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvJ:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvK:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvK:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_1
    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/bji;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjd;->c(Lcom/kingroot/kinguser/bji;)V

    goto :goto_0

    .line 331
    :pswitch_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adE()V

    .line 334
    iget-object v2, p0, Lcom/kingroot/kinguser/bjd;->Vx:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 337
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvY:Lcom/kingroot/kinguser/bjf;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjf;->ar(Z)V

    goto :goto_0

    .line 334
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 322
    :catch_0
    move-exception v0

    goto :goto_1

    .line 312
    nop

    :pswitch_data_0
    .packed-switch -0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(ILjava/lang/Object;II)V
    .locals 2

    .prologue
    .line 581
    packed-switch p1, :pswitch_data_0

    .line 590
    :goto_0
    return-void

    .line 583
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 581
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected co(I)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const-wide/32 v6, 0x7f070091

    const/16 v4, 0x18

    const/16 v8, 0xd

    .line 442
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvO:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->getmCurrentTab()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 443
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    move v3, v0

    .line 450
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 473
    const-string v0, ""

    .line 475
    :goto_1
    return-object v0

    .line 445
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    move v3, v0

    goto :goto_0

    .line 452
    :pswitch_0
    new-instance v2, Lcom/kingroot/kinguser/ade$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvR:Lcom/kingroot/kinguser/bjc;

    .line 453
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjc;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4, v3}, Lcom/kingroot/kinguser/ade$a;-><init>(Ljava/lang/String;II)V

    .line 454
    new-instance v1, Lcom/kingroot/kinguser/ade$a;

    .line 455
    invoke-virtual {p0, v6, v7}, Lcom/kingroot/kinguser/bjd;->V(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v8, v3}, Lcom/kingroot/kinguser/ade$a;-><init>(Ljava/lang/String;II)V

    .line 456
    new-instance v0, Lcom/kingroot/kinguser/ade$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v6, 0x7f070089

    .line 457
    invoke-virtual {p0, v6, v7}, Lcom/kingroot/kinguser/bjd;->V(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v8, v3}, Lcom/kingroot/kinguser/ade$a;-><init>(Ljava/lang/String;II)V

    .line 475
    :goto_2
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/kingroot/kinguser/ade$a;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/kingroot/kinguser/ade;->a([Lcom/kingroot/kinguser/ade$a;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 462
    :pswitch_1
    new-instance v2, Lcom/kingroot/kinguser/ade$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvS:Lcom/kingroot/kinguser/bjc;

    .line 463
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjc;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4, v3}, Lcom/kingroot/kinguser/ade$a;-><init>(Ljava/lang/String;II)V

    .line 464
    new-instance v1, Lcom/kingroot/kinguser/ade$a;

    .line 465
    invoke-virtual {p0, v6, v7}, Lcom/kingroot/kinguser/bjd;->V(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v8, v3}, Lcom/kingroot/kinguser/ade$a;-><init>(Ljava/lang/String;II)V

    .line 466
    new-instance v0, Lcom/kingroot/kinguser/ade$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v6, 0x7f070085

    .line 467
    invoke-virtual {p0, v6, v7}, Lcom/kingroot/kinguser/bjd;->V(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v8, v3}, Lcom/kingroot/kinguser/ade$a;-><init>(Ljava/lang/String;II)V

    goto :goto_2

    .line 450
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected oG()Landroid/view/View;
    .locals 11

    .prologue
    const v10, 0x7f0f0092

    const v7, 0x7f0f000b

    const v6, 0x7f030126

    const/4 v9, 0x0

    const v8, 0x7f0e0028

    .line 210
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjd;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjd;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 211
    const v0, 0x7f0f0026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->Vx:Landroid/support/v4/view/ViewPager;

    .line 212
    const v0, 0x7f0f0103

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvO:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    .line 214
    const v0, 0x7f0f0104

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvM:Landroid/view/View;

    .line 215
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adH()V

    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 219
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/KBaseListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvP:Lcom/kingroot/common/uilib/KBaseListView;

    .line 220
    const v0, 0x7f0f00b6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 221
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    .line 222
    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 223
    const v0, 0x7f0f0278

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v4, 0x7f070088

    .line 224
    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/bjd;->V(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvP:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0, v3}, Lcom/kingroot/common/uilib/KBaseListView;->setEmptyView(Landroid/view/View;)V

    .line 226
    new-instance v0, Lcom/kingroot/kinguser/bjc;

    invoke-direct {v0, p0, v9}, Lcom/kingroot/kinguser/bjc;-><init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvR:Lcom/kingroot/kinguser/bjc;

    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvP:Lcom/kingroot/common/uilib/KBaseListView;

    iget-object v3, p0, Lcom/kingroot/kinguser/bjd;->bvR:Lcom/kingroot/kinguser/bjc;

    invoke-virtual {v0, v3}, Lcom/kingroot/common/uilib/KBaseListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvP:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0, p0}, Lcom/kingroot/common/uilib/KBaseListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvP:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0, v8}, Lcom/kingroot/common/uilib/KBaseListView;->setBackgroundResource(I)V

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvP:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjd;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/kingroot/common/uilib/KBaseListView;->b(Lcom/kingroot/kinguser/acr;)V

    .line 232
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvJ:Landroid/widget/FrameLayout;

    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 236
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/KBaseListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvQ:Lcom/kingroot/common/uilib/KBaseListView;

    .line 237
    const v0, 0x7f0f00b6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 238
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    .line 239
    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 240
    const v0, 0x7f0f0278

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v6, 0x7f070084

    .line 241
    invoke-virtual {p0, v6, v7}, Lcom/kingroot/kinguser/bjd;->V(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvQ:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0, v4}, Lcom/kingroot/common/uilib/KBaseListView;->setEmptyView(Landroid/view/View;)V

    .line 243
    new-instance v0, Lcom/kingroot/kinguser/bjc;

    invoke-direct {v0, p0, v9}, Lcom/kingroot/kinguser/bjc;-><init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvS:Lcom/kingroot/kinguser/bjc;

    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvQ:Lcom/kingroot/common/uilib/KBaseListView;

    iget-object v4, p0, Lcom/kingroot/kinguser/bjd;->bvS:Lcom/kingroot/kinguser/bjc;

    invoke-virtual {v0, v4}, Lcom/kingroot/common/uilib/KBaseListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvQ:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0, p0}, Lcom/kingroot/common/uilib/KBaseListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvQ:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0, v8}, Lcom/kingroot/common/uilib/KBaseListView;->setBackgroundResource(I)V

    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvQ:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjd;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/kingroot/common/uilib/KBaseListView;->b(Lcom/kingroot/kinguser/acr;)V

    .line 249
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvK:Landroid/widget/FrameLayout;

    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->acc:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->acc:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->acd:Lcom/kingroot/kinguser/add$a;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjd;->acc:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/add$a;->a(Ljava/util/Vector;)V

    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->Vx:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjd;->acd:Lcom/kingroot/kinguser/add$a;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvO:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjd;->Vx:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvO:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjd;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 258
    return-object v1
.end method

.method protected oI()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 297
    invoke-super {p0}, Lcom/kingroot/kinguser/add;->oI()V

    .line 299
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 300
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 304
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 305
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjd;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 291
    new-instance v0, Lcom/kingroot/kinguser/bjf;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f070090

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjd;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/kingroot/kinguser/bjf;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kingroot/kinguser/bjf$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvY:Lcom/kingroot/kinguser/bjf;

    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvY:Lcom/kingroot/kinguser/bjf;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvV:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adG()V

    .line 399
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    if-eqz p2, :cond_2

    const v0, 0x186de

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 403
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bji;

    .line 405
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vl()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 406
    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    if-nez v1, :cond_0

    .line 407
    new-instance v1, Lcom/kingroot/kinguser/bib;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjd;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bib;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    .line 408
    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/kingroot/kinguser/bib;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bib;->a(Lcom/kingroot/kinguser/bji;)V

    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bib;->show()V

    .line 413
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvS:Lcom/kingroot/kinguser/bjc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjc;->notifyDataSetChanged()V

    .line 414
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adH()V

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvV:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 425
    :cond_1
    :goto_1
    return-void

    .line 399
    :cond_2
    const v0, 0x186df

    goto :goto_0

    .line 418
    :cond_3
    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bji;->setChecked(Z)V

    .line 419
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjd;->d(Lcom/kingroot/kinguser/bji;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 421
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 484
    iget-object v2, p0, Lcom/kingroot/kinguser/bjd;->bvV:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjd;->adG()V

    .line 488
    check-cast p1, Lcom/kingroot/kinguser/bib;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bib;->acT()Lcom/kingroot/kinguser/bji;

    move-result-object v3

    .line 489
    if-eqz v3, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 491
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v4

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x186de

    :goto_0
    invoke-virtual {v4, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 495
    invoke-virtual {v3}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bji;->setChecked(Z)V

    .line 496
    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/bjd;->d(Lcom/kingroot/kinguser/bji;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_0
    :goto_2
    return-void

    .line 491
    :cond_1
    const v2, 0x186df

    goto :goto_0

    :cond_2
    move v0, v1

    .line 495
    goto :goto_1

    .line 498
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjd;->vd()V

    .line 204
    invoke-super {p0}, Lcom/kingroot/kinguser/add;->onDestroy()V

    .line 205
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 379
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1878d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 380
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lcom/kingroot/kinguser/bib;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bib;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    .line 382
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/kingroot/kinguser/bib;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 385
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bji;

    .line 386
    iget-object v1, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bib;->a(Lcom/kingroot/kinguser/bji;)V

    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bib;->show()V

    .line 388
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvX:Lcom/kingroot/kinguser/bjb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjb;->onPause()V

    .line 272
    invoke-super {p0}, Lcom/kingroot/kinguser/add;->onPause()V

    .line 273
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lcom/kingroot/kinguser/add;->onResume()V

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvX:Lcom/kingroot/kinguser/bjb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjb;->onResume()V

    .line 266
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-super {p0}, Lcom/kingroot/kinguser/add;->onStart()V

    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 283
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvY:Lcom/kingroot/kinguser/bjf;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjf;->ar(Z)V

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvX:Lcom/kingroot/kinguser/bjb;

    invoke-virtual {v0, p0, v1}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/bjb$b;Z)V

    .line 287
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Lcom/kingroot/kinguser/add;->onStop()V

    .line 198
    return-void
.end method

.method public vd()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bib;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd;->bvN:Lcom/kingroot/kinguser/bib;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bib;->dismiss()V

    .line 193
    :cond_0
    return-void
.end method
