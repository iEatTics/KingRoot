.class public Lcom/kingcore/uilib/VerticalViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingcore/uilib/VerticalViewPager$f;,
        Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;,
        Lcom/kingcore/uilib/VerticalViewPager$e;,
        Lcom/kingcore/uilib/VerticalViewPager$c;,
        Lcom/kingcore/uilib/VerticalViewPager$SavedState;,
        Lcom/kingcore/uilib/VerticalViewPager$a;,
        Lcom/kingcore/uilib/VerticalViewPager$d;,
        Lcom/kingcore/uilib/VerticalViewPager$b;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/kingcore/uilib/VerticalViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final DU:Lcom/kingcore/uilib/VerticalViewPager$f;

.field private static final LAYOUT_ATTRS:[I

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final DM:Lcom/kingcore/uilib/VerticalViewPager$b;

.field private DN:Lcom/kingcore/uilib/VerticalViewPager$e;

.field private DO:I

.field private DQ:I

.field private DR:Landroid/support/v4/widget/EdgeEffectCompat;

.field private DS:Landroid/support/v4/widget/EdgeEffectCompat;

.field private DT:Lcom/kingcore/uilib/VerticalViewPager$d;

.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingcore/uilib/VerticalViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/kingcore/uilib/VerticalViewPager;->LAYOUT_ATTRS:[I

    .line 87
    new-instance v0, Lcom/kingcore/uilib/VerticalViewPager$1;

    invoke-direct {v0}, Lcom/kingcore/uilib/VerticalViewPager$1;-><init>()V

    sput-object v0, Lcom/kingcore/uilib/VerticalViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 94
    new-instance v0, Lcom/kingcore/uilib/VerticalViewPager$2;

    invoke-direct {v0}, Lcom/kingcore/uilib/VerticalViewPager$2;-><init>()V

    sput-object v0, Lcom/kingcore/uilib/VerticalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 194
    new-instance v0, Lcom/kingcore/uilib/VerticalViewPager$f;

    invoke-direct {v0}, Lcom/kingcore/uilib/VerticalViewPager$f;-><init>()V

    sput-object v0, Lcom/kingcore/uilib/VerticalViewPager;->DU:Lcom/kingcore/uilib/VerticalViewPager$f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 236
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    invoke-direct {v0}, Lcom/kingcore/uilib/VerticalViewPager$b;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->DM:Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 108
    iput v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredCurItem:I

    .line 109
    iput-object v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 110
    iput-object v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 122
    const v0, -0x800001

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstOffset:F

    .line 123
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastOffset:F

    .line 132
    iput v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOffscreenPageLimit:I

    .line 151
    iput v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    .line 178
    iput-boolean v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstLayout:Z

    .line 179
    iput-boolean v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mNeedCalculatePageOffsets:Z

    .line 212
    new-instance v0, Lcom/kingcore/uilib/VerticalViewPager$3;

    invoke-direct {v0, p0}, Lcom/kingcore/uilib/VerticalViewPager$3;-><init>(Lcom/kingcore/uilib/VerticalViewPager;)V

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 219
    iput v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScrollState:I

    .line 237
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->initViewPager()V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 241
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    invoke-direct {v0}, Lcom/kingcore/uilib/VerticalViewPager$b;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->DM:Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 108
    iput v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredCurItem:I

    .line 109
    iput-object v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 110
    iput-object v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 122
    const v0, -0x800001

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstOffset:F

    .line 123
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastOffset:F

    .line 132
    iput v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOffscreenPageLimit:I

    .line 151
    iput v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    .line 178
    iput-boolean v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstLayout:Z

    .line 179
    iput-boolean v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mNeedCalculatePageOffsets:Z

    .line 212
    new-instance v0, Lcom/kingcore/uilib/VerticalViewPager$3;

    invoke-direct {v0, p0}, Lcom/kingcore/uilib/VerticalViewPager$3;-><init>(Lcom/kingcore/uilib/VerticalViewPager;)V

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 219
    iput v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScrollState:I

    .line 242
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->initViewPager()V

    .line 243
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method private a(Lcom/kingcore/uilib/VerticalViewPager$b;ILcom/kingcore/uilib/VerticalViewPager$b;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1019
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    .line 1020
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getClientHeight()I

    move-result v0

    .line 1021
    if-lez v0, :cond_0

    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v6, v0

    .line 1023
    :goto_0
    if-eqz p3, :cond_6

    .line 1024
    iget v0, p3, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    .line 1026
    iget v1, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-ge v0, v1, :cond_3

    .line 1029
    iget v1, p3, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    iget v2, p3, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v1, v2

    add-float v3, v1, v6

    .line 1030
    add-int/lit8 v2, v0, 0x1

    move v1, v4

    .line 1031
    :goto_1
    iget v0, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-gt v2, v0, :cond_6

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1032
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 1033
    :goto_2
    iget v5, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-le v2, v5, :cond_1

    iget-object v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_1

    .line 1034
    add-int/lit8 v1, v1, 0x1

    .line 1035
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    goto :goto_2

    .line 1021
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 1037
    :cond_1
    :goto_3
    iget v5, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-ge v2, v5, :cond_2

    .line 1040
    iget-object v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 1041
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1043
    :cond_2
    iput v3, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    .line 1044
    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v0, v6

    add-float/2addr v3, v0

    .line 1031
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1046
    :cond_3
    iget v1, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-le v0, v1, :cond_6

    .line 1047
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1049
    iget v3, p3, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    .line 1050
    add-int/lit8 v2, v0, -0x1

    .line 1051
    :goto_4
    iget v0, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-lt v2, v0, :cond_6

    if-ltz v1, :cond_6

    .line 1052
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 1053
    :goto_5
    iget v5, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-ge v2, v5, :cond_4

    if-lez v1, :cond_4

    .line 1054
    add-int/lit8 v1, v1, -0x1

    .line 1055
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    goto :goto_5

    .line 1057
    :cond_4
    :goto_6
    iget v5, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-le v2, v5, :cond_5

    .line 1060
    iget-object v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 1061
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 1063
    :cond_5
    iget v5, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 1064
    iput v3, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    .line 1051
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1070
    :cond_6
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1071
    iget v2, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    .line 1072
    iget v0, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    add-int/lit8 v1, v0, -0x1

    .line 1073
    iget v0, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-nez v0, :cond_7

    iget v0, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    :goto_7
    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstOffset:F

    .line 1074
    iget v0, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    add-int/lit8 v3, v7, -0x1

    if-ne v0, v3, :cond_8

    iget v0, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    iget v3, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    :goto_8
    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastOffset:F

    .line 1077
    add-int/lit8 v0, p2, -0x1

    move v5, v0

    :goto_9
    if-ltz v5, :cond_b

    .line 1078
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    move v3, v2

    .line 1079
    :goto_a
    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-le v1, v2, :cond_9

    .line 1080
    iget-object v9, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v9, v1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    add-float/2addr v1, v6

    sub-float v1, v3, v1

    move v3, v1

    move v1, v2

    goto :goto_a

    .line 1073
    :cond_7
    const v0, -0x800001

    goto :goto_7

    .line 1074
    :cond_8
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1082
    :cond_9
    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v2, v6

    sub-float v2, v3, v2

    .line 1083
    iput v2, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    .line 1084
    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-nez v0, :cond_a

    iput v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstOffset:F

    .line 1077
    :cond_a
    add-int/lit8 v0, v5, -0x1

    add-int/lit8 v1, v1, -0x1

    move v5, v0

    goto :goto_9

    .line 1086
    :cond_b
    iget v0, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    iget v1, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v0, v1

    add-float v2, v0, v6

    .line 1087
    iget v0, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    add-int/lit8 v1, v0, 0x1

    .line 1089
    add-int/lit8 v0, p2, 0x1

    move v5, v0

    :goto_b
    if-ge v5, v8, :cond_e

    .line 1090
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    move v3, v2

    .line 1091
    :goto_c
    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-ge v1, v2, :cond_c

    .line 1092
    iget-object v9, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v9, v1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    add-float/2addr v1, v6

    add-float/2addr v1, v3

    move v3, v1

    move v1, v2

    goto :goto_c

    .line 1094
    :cond_c
    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    add-int/lit8 v9, v7, -0x1

    if-ne v2, v9, :cond_d

    .line 1095
    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v10

    iput v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastOffset:F

    .line 1097
    :cond_d
    iput v3, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    .line 1098
    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v0, v6

    add-float v2, v3, v0

    .line 1089
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto :goto_b

    .line 1101
    :cond_e
    iput-boolean v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mNeedCalculatePageOffsets:Z

    .line 1102
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/VerticalViewPager;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/kingcore/uilib/VerticalViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic b(Lcom/kingcore/uilib/VerticalViewPager;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    return v0
.end method

.method private completeScroll(Z)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1638
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v4

    .line 1639
    :goto_0
    if-eqz v0, :cond_1

    .line 1641
    invoke-direct {p0, v2}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 1642
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1643
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollX()I

    move-result v1

    .line 1644
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v3

    .line 1645
    iget-object v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1646
    iget-object v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1647
    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    .line 1648
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/kingcore/uilib/VerticalViewPager;->scrollTo(II)V

    .line 1651
    :cond_1
    iput-boolean v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPopulatePending:Z

    move v1, v2

    move v3, v0

    .line 1652
    :goto_1
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1653
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 1654
    iget-boolean v5, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->scrolling:Z

    if-eqz v5, :cond_2

    .line 1656
    iput-boolean v2, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->scrolling:Z

    move v3, v4

    .line 1652
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1638
    goto :goto_0

    .line 1659
    :cond_4
    if-eqz v3, :cond_5

    .line 1660
    if-eqz p1, :cond_6

    .line 1661
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1666
    :cond_5
    :goto_2
    return-void

    .line 1663
    :cond_6
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 3

    .prologue
    .line 2056
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFlingDistance:I

    if-le v0, v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_2

    .line 2057
    if-lez p3, :cond_1

    .line 2063
    :goto_0
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 2065
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 2068
    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    iget v1, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2071
    :cond_0
    return p1

    .line 2057
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2059
    :cond_2
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-lt p1, v0, :cond_3

    const v0, 0x3ecccccd    # 0.4f

    .line 2060
    :goto_1
    int-to-float v1, p1

    add-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_0

    .line 2059
    :cond_3
    const v0, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private enableLayers(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1673
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v3

    move v2, v1

    .line 1674
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1675
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 1677
    :goto_1
    invoke-virtual {p0, v2}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1674
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1675
    goto :goto_1

    .line 1679
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2303
    iput-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    .line 2304
    iput-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsUnableToDrag:Z

    .line 2306
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2307
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2310
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2484
    if-nez p1, :cond_2

    .line 2485
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2487
    :goto_0
    if-nez p2, :cond_0

    .line 2488
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    .line 2506
    :goto_1
    return-object v0

    .line 2491
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2492
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2493
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2494
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2496
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2497
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    .line 2498
    check-cast v0, Landroid/view/ViewGroup;

    .line 2499
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2500
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2501
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2502
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2504
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 2506
    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private getClientHeight()I
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private hk()Lcom/kingcore/uilib/VerticalViewPager$b;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2013
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getClientHeight()I

    move-result v1

    .line 2014
    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    .line 2015
    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    .line 2016
    :goto_1
    const/4 v5, -0x1

    .line 2019
    const/4 v4, 0x1

    .line 2021
    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    .line 2022
    :goto_2
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2023
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 2025
    if-nez v5, :cond_6

    iget v10, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_6

    .line 2027
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->DM:Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 2028
    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    .line 2029
    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    .line 2030
    iget-object v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v7, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    iput v6, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    .line 2031
    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    .line 2033
    :goto_3
    iget v6, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    .line 2036
    iget v7, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    .line 2037
    if-nez v5, :cond_0

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_2

    .line 2038
    :cond_0
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5

    :cond_1
    move-object v4, v2

    .line 2051
    :cond_2
    return-object v4

    :cond_3
    move v9, v2

    .line 2014
    goto :goto_0

    :cond_4
    move v1, v2

    .line 2015
    goto :goto_1

    .line 2045
    :cond_5
    iget v5, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    .line 2047
    iget v4, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    .line 2022
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_3
.end method

.method private isGutterDrag(FF)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1669
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 2288
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2289
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2290
    iget v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    .line 2293
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2294
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    .line 2295
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    .line 2296
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2300
    :cond_0
    return-void

    .line 2293
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1531
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1532
    iput-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCalledSuper:Z

    .line 1533
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/kingcore/uilib/VerticalViewPager;->onPageScrolled(IFI)V

    .line 1534
    iget-boolean v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCalledSuper:Z

    if-nez v1, :cond_2

    .line 1535
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1540
    :cond_0
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->hk()Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v1

    .line 1541
    if-eqz v1, :cond_1

    .line 1542
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getClientHeight()I

    move-result v2

    .line 1543
    iget v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    add-int/2addr v3, v2

    .line 1544
    iget v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1545
    iget v5, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    .line 1546
    int-to-float v6, p1

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    sub-float/2addr v2, v6

    iget v1, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v1, v4

    div-float v1, v2, v1

    .line 1548
    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1550
    iput-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCalledSuper:Z

    .line 1551
    invoke-virtual {p0, v5, v1, v2}, Lcom/kingcore/uilib/VerticalViewPager;->onPageScrolled(IFI)V

    .line 1552
    iget-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCalledSuper:Z

    if-nez v0, :cond_1

    .line 1553
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1557
    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private performDrag(F)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1962
    .line 1964
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    sub-float/2addr v0, p1

    .line 1965
    iput p1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    .line 1967
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    .line 1968
    add-float v5, v1, v0

    .line 1969
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getClientHeight()I

    move-result v7

    .line 1971
    int-to-float v0, v7

    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstOffset:F

    mul-float v4, v0, v1

    .line 1972
    int-to-float v0, v7

    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastOffset:F

    mul-float v6, v0, v1

    .line 1976
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 1977
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 1978
    iget v8, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-eqz v8, :cond_5

    .line 1980
    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    .line 1982
    :goto_0
    iget v8, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    iget-object v9, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_4

    .line 1984
    iget v1, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    .line 1987
    :goto_1
    cmpg-float v6, v5, v4

    if-gez v6, :cond_1

    .line 1988
    if-eqz v0, :cond_0

    .line 1989
    sub-float v0, v4, v5

    .line 1990
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DR:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    .line 2001
    :cond_0
    :goto_2
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionX:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionX:F

    .line 2002
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollX()I

    move-result v0

    float-to-int v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->scrollTo(II)V

    .line 2003
    float-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->pageScrolled(I)Z

    .line 2005
    return v2

    .line 1993
    :cond_1
    cmpl-float v0, v5, v1

    if-lez v0, :cond_3

    .line 1994
    if-eqz v3, :cond_2

    .line 1995
    sub-float v0, v5, v1

    .line 1996
    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->DS:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_2
    move v4, v1

    .line 1998
    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1366
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1367
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingTop()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, p3

    .line 1368
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p4

    .line 1370
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v3

    .line 1371
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    .line 1372
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 1374
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/kingcore/uilib/VerticalViewPager;->scrollTo(II)V

    .line 1375
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 1378
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->aD(I)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v3

    .line 1379
    if-eqz v3, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, v3, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v4, v3

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->aD(I)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v0

    .line 1386
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    iget v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1388
    :goto_1
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingTop()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 1389
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1390
    invoke-direct {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->completeScroll(Z)V

    .line 1391
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/kingcore/uilib/VerticalViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1386
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 2

    .prologue
    .line 346
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 347
    invoke-virtual {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    .line 349
    iget-boolean v0, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->removeViewAt(I)V

    .line 351
    add-int/lit8 v1, v1, -0x1

    .line 346
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 354
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    .prologue
    .line 1955
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1956
    if-eqz v0, :cond_0

    .line 1957
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1959
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 454
    invoke-virtual {p0, p1}, Lcom/kingcore/uilib/VerticalViewPager;->aD(I)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_5

    .line 457
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getClientHeight()I

    move-result v2

    .line 458
    int-to-float v2, v2

    iget v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstOffset:F

    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    iget v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastOffset:F

    .line 459
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 458
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 461
    :goto_0
    if-eqz p2, :cond_2

    .line 462
    invoke-virtual {p0, v1, v0, p3}, Lcom/kingcore/uilib/VerticalViewPager;->smoothScrollTo(III)V

    .line 463
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 466
    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 480
    :cond_1
    :goto_1
    return-void

    .line 470
    :cond_2
    if-eqz p4, :cond_3

    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_3

    .line 471
    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 473
    :cond_3
    if-eqz p4, :cond_4

    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_4

    .line 474
    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 476
    :cond_4
    invoke-direct {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->completeScroll(Z)V

    .line 477
    invoke-virtual {p0, v1, v0}, Lcom/kingcore/uilib/VerticalViewPager;->scrollTo(II)V

    .line 478
    invoke-direct {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->pageScrolled(I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iput p1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScrollState:I

    .line 285
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    .line 287
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->enableLayers(Z)V

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 287
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 2313
    iget-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2314
    iput-boolean p1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScrollingCacheEnabled:Z

    .line 2325
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .prologue
    .line 1003
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1005
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1009
    :goto_0
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v1

    .line 1010
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1011
    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1012
    iget-object v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v1, Lcom/kingcore/uilib/VerticalViewPager;->DU:Lcom/kingcore/uilib/VerticalViewPager$f;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1016
    :cond_2
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)Lcom/kingcore/uilib/VerticalViewPager$b;
    .locals 4

    .prologue
    .line 1224
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 1226
    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1230
    :goto_1
    return-object v0

    .line 1224
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1230
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method aD(I)Lcom/kingcore/uilib/VerticalViewPager$b;
    .locals 3

    .prologue
    .line 1245
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 1247
    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-ne v2, p1, :cond_0

    .line 1251
    :goto_1
    return-object v0

    .line 1245
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1251
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public aE(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2328
    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v2, :cond_1

    .line 2339
    :cond_0
    :goto_0
    return v1

    .line 2332
    :cond_1
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getClientHeight()I

    move-result v2

    .line 2333
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v3

    .line 2334
    if-gez p1, :cond_3

    .line 2335
    int-to-float v2, v2

    iget v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstOffset:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-le v3, v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2336
    :cond_3
    if-lez p1, :cond_0

    .line 2337
    int-to-float v2, v2

    iget v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastOffset:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-ge v3, v2, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2530
    if-nez p1, :cond_1

    .line 2567
    :cond_0
    :goto_0
    return-void

    .line 2534
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2535
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2536
    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_3

    .line 2537
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2538
    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2539
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2540
    invoke-virtual {p0, v3}, Lcom/kingcore/uilib/VerticalViewPager;->a(Landroid/view/View;)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v4

    .line 2541
    if-eqz v4, :cond_2

    iget v4, v4, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    iget v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_2

    .line 2542
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2537
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2552
    :cond_3
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_4

    .line 2554
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 2557
    :cond_4
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2560
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2561
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2565
    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2577
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2578
    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2579
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2580
    invoke-virtual {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->a(Landroid/view/View;)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v2

    .line 2581
    if-eqz v2, :cond_0

    iget v2, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    iget v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 2582
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2577
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2586
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1190
    invoke-virtual {p0, p3}, Lcom/kingcore/uilib/VerticalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1191
    invoke-virtual {p0, p3}, Lcom/kingcore/uilib/VerticalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 1193
    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    .line 1194
    iget-boolean v2, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    instance-of v3, p1, Lcom/kingcore/uilib/VerticalViewPager$a;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    .line 1195
    iget-boolean v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInLayout:Z

    if-eqz v2, :cond_1

    .line 1196
    iget-boolean v2, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v2, :cond_0

    .line 1197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1199
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->needsMeasure:Z

    .line 1200
    invoke-virtual {p0, p1, p2, v1}, Lcom/kingcore/uilib/VerticalViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1212
    :goto_1
    return-void

    .line 1202
    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x82

    const/16 v7, 0x21

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2418
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2419
    if-ne v2, p0, :cond_1

    move-object v0, v1

    .line 2446
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2448
    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    .line 2449
    if-ne p1, v7, :cond_5

    .line 2452
    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/kingcore/uilib/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 2453
    iget-object v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2454
    if-eqz v0, :cond_4

    if-lt v2, v3, :cond_4

    .line 2455
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->hl()Z

    move-result v0

    .line 2477
    :goto_1
    if-eqz v0, :cond_0

    .line 2478
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->playSoundEffect(I)V

    .line 2480
    :cond_0
    return v0

    .line 2421
    :cond_1
    if-eqz v2, :cond_c

    .line 2423
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    .line 2425
    if-ne v0, p0, :cond_2

    move v0, v4

    .line 2430
    :goto_3
    if-nez v0, :cond_c

    .line 2432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2433
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2434
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 2436
    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2435
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 2424
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    .line 2438
    :cond_3
    const-string v0, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2439
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2438
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2440
    goto/16 :goto_0

    .line 2457
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_1

    .line 2459
    :cond_5
    if-ne p1, v8, :cond_b

    .line 2462
    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/kingcore/uilib/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 2463
    iget-object v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 2464
    if-eqz v0, :cond_6

    if-gt v2, v3, :cond_6

    .line 2465
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->hm()Z

    move-result v0

    goto/16 :goto_1

    .line 2467
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2470
    :cond_7
    if-eq p1, v7, :cond_8

    if-ne p1, v4, :cond_9

    .line 2472
    :cond_8
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->hl()Z

    move-result v0

    goto/16 :goto_1

    .line 2473
    :cond_9
    if-eq p1, v8, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 2475
    :cond_a
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->hm()Z

    move-result v0

    goto/16 :goto_1

    :cond_b
    move v0, v3

    goto/16 :goto_1

    :cond_c
    move-object v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto/16 :goto_3
.end method

.method b(Landroid/view/View;)Lcom/kingcore/uilib/VerticalViewPager$b;
    .locals 2

    .prologue
    .line 1235
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 1236
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1237
    :cond_0
    const/4 v0, 0x0

    .line 1241
    :goto_1
    return-object v0

    .line 1239
    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1241
    :cond_2
    invoke-virtual {p0, p1}, Lcom/kingcore/uilib/VerticalViewPager;->a(Landroid/view/View;)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v0

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 2355
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 2356
    check-cast v6, Landroid/view/ViewGroup;

    .line 2357
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2358
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2359
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2361
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 2364
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2365
    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    .line 2366
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    .line 2367
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    .line 2368
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 2367
    invoke-virtual/range {v0 .. v5}, Lcom/kingcore/uilib/VerticalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2374
    :cond_0
    :goto_1
    return v2

    .line 2361
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 2374
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2656
    instance-of v0, p1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1508
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollX()I

    move-result v0

    .line 1509
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v1

    .line 1510
    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1511
    iget-object v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1513
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1514
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/kingcore/uilib/VerticalViewPager;->scrollTo(II)V

    .line 1515
    invoke-direct {p0, v3}, Lcom/kingcore/uilib/VerticalViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1516
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1517
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/kingcore/uilib/VerticalViewPager;->scrollTo(II)V

    .line 1522
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1528
    :goto_0
    return-void

    .line 1527
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 742
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    .line 743
    iput v8, p0, Lcom/kingcore/uilib/VerticalViewPager;->mExpectedAdapterCount:I

    .line 744
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    .line 745
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_0

    move v0, v1

    .line 746
    :goto_0
    iget v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    move v4, v2

    move v5, v3

    move v6, v0

    move v3, v2

    .line 749
    :goto_1
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 750
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 751
    iget-object v7, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->object:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v7

    .line 753
    const/4 v9, -0x1

    if-ne v7, v9, :cond_1

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 749
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 745
    goto :goto_0

    .line 757
    :cond_1
    const/4 v9, -0x2

    if-ne v7, v9, :cond_3

    .line 758
    iget-object v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 759
    add-int/lit8 v3, v3, -0x1

    .line 761
    if-nez v4, :cond_2

    .line 762
    iget-object v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v4, v1

    .line 766
    :cond_2
    iget-object v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v7, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    iget-object v9, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->object:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 769
    iget v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-ne v6, v0, :cond_b

    .line 771
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    add-int/lit8 v5, v8, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 772
    goto :goto_2

    .line 777
    :cond_3
    iget v9, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-eq v9, v7, :cond_a

    .line 778
    iget v6, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    iget v9, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-ne v6, v9, :cond_4

    move v5, v7

    .line 783
    :cond_4
    iput v7, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 784
    goto :goto_2

    .line 788
    :cond_5
    if-eqz v4, :cond_6

    .line 789
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 792
    :cond_6
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v3, Lcom/kingcore/uilib/VerticalViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 794
    if-eqz v6, :cond_9

    .line 796
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    .line 797
    :goto_3
    if-ge v3, v4, :cond_8

    .line 798
    invoke-virtual {p0, v3}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    .line 800
    iget-boolean v6, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_7

    .line 801
    const/4 v6, 0x0

    iput v6, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->DW:F

    .line 797
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 805
    :cond_8
    invoke-virtual {p0, v5, v2, v1}, Lcom/kingcore/uilib/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    .line 806
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->requestLayout()V

    .line 808
    :cond_9
    return-void

    :cond_a
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_2

    :cond_b
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto/16 :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2380
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/kingcore/uilib/VerticalViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2624
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1

    .line 2625
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2641
    :cond_0
    :goto_0
    return v0

    .line 2629
    :cond_1
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2630
    :goto_1
    if-ge v1, v2, :cond_0

    .line 2631
    invoke-virtual {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2632
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2633
    invoke-virtual {p0, v3}, Lcom/kingcore/uilib/VerticalViewPager;->a(Landroid/view/View;)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v4

    .line 2634
    if-eqz v4, :cond_2

    iget v4, v4, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    iget v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_2

    .line 2635
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2636
    const/4 v0, 0x1

    goto :goto_0

    .line 2630
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    .prologue
    .line 663
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 664
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 665
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 2076
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2077
    const/4 v0, 0x0

    .line 2079
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    .line 2080
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 2082
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 2083
    :cond_0
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DR:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2084
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2085
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getHeight()I

    move-result v2

    .line 2086
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2088
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstOffset:F

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2089
    iget-object v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->DR:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2090
    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->DR:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2091
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2093
    :cond_1
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DS:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2094
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2095
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getHeight()I

    move-result v2

    .line 2096
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2098
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2099
    neg-int v4, v3

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2100
    iget-object v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->DS:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2101
    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->DS:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2102
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2109
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2111
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2113
    :cond_3
    return-void

    .line 2105
    :cond_4
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DR:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2106
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DS:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 651
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 652
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 653
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 656
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2392
    const/4 v0, 0x0

    .line 2393
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2394
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2414
    :cond_0
    :goto_0
    return v0

    .line 2396
    :sswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2399
    :sswitch_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2402
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2405
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2406
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2407
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2408
    invoke-virtual {p0, v3}, Lcom/kingcore/uilib/VerticalViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2394
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2646
    new-instance v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2661
    new-instance v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2651
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .prologue
    .line 539
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->childIndex:I

    .line 541
    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    return v0
.end method

.method hl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2510
    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2511
    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/kingcore/uilib/VerticalViewPager;->setCurrentItem(IZ)V

    .line 2514
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hm()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2518
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2519
    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/kingcore/uilib/VerticalViewPager;->setCurrentItem(IZ)V

    .line 2522
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initViewPager()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->setWillNotDraw(Z)V

    .line 247
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->setDescendantFocusability(I)V

    .line 248
    invoke-virtual {p0, v4}, Lcom/kingcore/uilib/VerticalViewPager;->setFocusable(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 250
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/kingcore/uilib/VerticalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    .line 251
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 252
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 254
    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTouchSlop:I

    .line 255
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mMinimumVelocity:I

    .line 256
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mMaximumVelocity:I

    .line 257
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DR:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 258
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DS:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 260
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFlingDistance:I

    .line 261
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCloseEnough:I

    .line 262
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mDefaultGutterSize:I

    .line 264
    new-instance v0, Lcom/kingcore/uilib/VerticalViewPager$c;

    invoke-direct {v0, p0}, Lcom/kingcore/uilib/VerticalViewPager$c;-><init>(Lcom/kingcore/uilib/VerticalViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 266
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 271
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1256
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstLayout:Z

    .line 1258
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 276
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 277
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .prologue
    .line 2117
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2120
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingcore/uilib/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_2

    .line 2121
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v6

    .line 2122
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getHeight()I

    move-result v7

    .line 2124
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    .line 2125
    const/4 v5, 0x0

    .line 2126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 2127
    iget v4, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    .line 2128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2129
    iget v3, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    .line 2130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/VerticalViewPager$b;

    iget v10, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    move v2, v5

    move v5, v3

    .line 2131
    :goto_0
    if-ge v5, v10, :cond_2

    .line 2132
    :goto_1
    iget v3, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-le v5, v3, :cond_0

    if-ge v2, v9, :cond_0

    .line 2133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/VerticalViewPager$b;

    goto :goto_1

    .line 2137
    :cond_0
    iget v3, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-ne v5, v3, :cond_3

    .line 2138
    iget v3, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    iget v4, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    .line 2139
    iget v4, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    iget v11, v1, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    .line 2146
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    .line 2147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingcore/uilib/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/kingcore/uilib/VerticalViewPager;->DO:I

    float-to-int v13, v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/kingcore/uilib/VerticalViewPager;->DQ:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2149
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingcore/uilib/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2152
    :cond_1
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-lez v3, :cond_4

    .line 2157
    :cond_2
    return-void

    .line 2141
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    .line 2142
    add-float v3, v4, v11

    int-to-float v12, v7

    mul-float/2addr v3, v12

    .line 2143
    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_2

    .line 2131
    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1692
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    .line 1695
    :cond_0
    iput-boolean v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    .line 1696
    iput-boolean v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsUnableToDrag:Z

    .line 1697
    iput v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    .line 1698
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1699
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1822
    :cond_1
    :goto_0
    return v2

    .line 1707
    :cond_2
    if-eqz v0, :cond_4

    .line 1708
    iget-boolean v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_3

    move v2, v6

    .line 1710
    goto :goto_0

    .line 1712
    :cond_3
    iget-boolean v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsUnableToDrag:Z

    if-nez v1, :cond_1

    .line 1718
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 1813
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1814
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1816
    :cond_6
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1822
    iget-boolean v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1729
    :sswitch_0
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    .line 1730
    if-eq v0, v3, :cond_5

    .line 1735
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1736
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1737
    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    sub-float v8, v7, v1

    .line 1738
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1739
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1740
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInitialMotionX:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1743
    cmpl-float v0, v8, v12

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    invoke-direct {p0, v0, v8}, Lcom/kingcore/uilib/VerticalViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_7

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v7

    move-object v0, p0

    move-object v1, p0

    .line 1744
    invoke-virtual/range {v0 .. v5}, Lcom/kingcore/uilib/VerticalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1746
    iput v10, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionX:F

    .line 1747
    iput v7, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    .line 1748
    iput-boolean v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsUnableToDrag:Z

    goto :goto_0

    .line 1751
    :cond_7
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_a

    .line 1753
    iput-boolean v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    .line 1754
    invoke-direct {p0, v6}, Lcom/kingcore/uilib/VerticalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1755
    invoke-direct {p0, v6}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollState(I)V

    .line 1756
    cmpl-float v0, v8, v12

    if-lez v0, :cond_9

    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInitialMotionY:F

    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    .line 1758
    iput v10, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionX:F

    .line 1759
    invoke-direct {p0, v6}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 1768
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1770
    invoke-direct {p0, v7}, Lcom/kingcore/uilib/VerticalViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1771
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1756
    :cond_9
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInitialMotionY:F

    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1760
    :cond_a
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    .line 1766
    iput-boolean v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1782
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionX:F

    .line 1783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    .line 1784
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    .line 1785
    iput-boolean v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsUnableToDrag:Z

    .line 1787
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1788
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1789
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_b

    .line 1791
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1792
    iput-boolean v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPopulatePending:Z

    .line 1793
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->populate()V

    .line 1794
    iput-boolean v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    .line 1795
    invoke-direct {p0, v6}, Lcom/kingcore/uilib/VerticalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1796
    invoke-direct {p0, v6}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1798
    :cond_b
    invoke-direct {p0, v2}, Lcom/kingcore/uilib/VerticalViewPager;->completeScroll(Z)V

    .line 1799
    iput-boolean v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1809
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/VerticalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1718
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .prologue
    .line 1398
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v9

    .line 1399
    sub-int v10, p4, p2

    .line 1400
    sub-int v11, p5, p3

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingLeft()I

    move-result v6

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingTop()I

    move-result v2

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingRight()I

    move-result v5

    .line 1404
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingBottom()I

    move-result v3

    .line 1405
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v12

    .line 1407
    const/4 v4, 0x0

    .line 1411
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_0

    .line 1412
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1413
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_5

    .line 1414
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    .line 1417
    iget-boolean v7, v1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_5

    .line 1418
    iget v7, v1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v7, 0x7

    .line 1419
    iget v1, v1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v1, 0x70

    .line 1420
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    .line 1437
    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1454
    :goto_2
    add-int/2addr v1, v12

    .line 1456
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    .line 1457
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    .line 1455
    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1458
    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    .line 1411
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    .line 1426
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1427
    goto :goto_1

    .line 1429
    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1431
    goto :goto_1

    .line 1433
    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1434
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    .line 1443
    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1444
    goto :goto_2

    .line 1446
    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1448
    goto :goto_2

    .line 1450
    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1451
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    .line 1463
    :cond_0
    sub-int v1, v11, v2

    sub-int v7, v1, v3

    .line 1465
    const/4 v1, 0x0

    move v3, v1

    :goto_4
    if-ge v3, v9, :cond_3

    .line 1466
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1467
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v11, 0x8

    if-eq v1, v11, :cond_2

    .line 1468
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    .line 1470
    iget-boolean v11, v1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/kingcore/uilib/VerticalViewPager;->a(Landroid/view/View;)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1471
    int-to-float v12, v7

    iget v11, v11, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 1473
    add-int/2addr v11, v2

    .line 1474
    iget-boolean v12, v1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v12, :cond_1

    .line 1477
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->needsMeasure:Z

    .line 1478
    sub-int v12, v10, v6

    sub-int/2addr v12, v5

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1481
    int-to-float v13, v7

    iget v1, v1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->DW:F

    mul-float/2addr v1, v13

    float-to-int v1, v1

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1484
    invoke-virtual {v8, v12, v1}, Landroid/view/View;->measure(II)V

    .line 1490
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    .line 1491
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v11

    .line 1489
    invoke-virtual {v8, v6, v11, v1, v12}, Landroid/view/View;->layout(IIII)V

    .line 1465
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 1495
    :cond_3
    move-object/from16 v0, p0

    iput v6, v0, Lcom/kingcore/uilib/VerticalViewPager;->DO:I

    .line 1496
    sub-int v1, v10, v5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingcore/uilib/VerticalViewPager;->DQ:I

    .line 1497
    move-object/from16 v0, p0

    iput v4, v0, Lcom/kingcore/uilib/VerticalViewPager;->mDecorChildCount:I

    .line 1499
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_4

    .line 1500
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingcore/uilib/VerticalViewPager;->scrollToItem(IZIZ)V

    .line 1502
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstLayout:Z

    .line 1503
    return-void

    :cond_5
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_3

    .line 1420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1437
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1267
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/kingcore/uilib/VerticalViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    .line 1268
    invoke-static {v1, p2}, Lcom/kingcore/uilib/VerticalViewPager;->getDefaultSize(II)I

    move-result v1

    .line 1267
    invoke-virtual {p0, v0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->setMeasuredDimension(II)V

    .line 1270
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getMeasuredHeight()I

    move-result v0

    .line 1271
    div-int/lit8 v1, v0, 0xa

    .line 1272
    iget v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mDefaultGutterSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mGutterSize:I

    .line 1275
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingRight()I

    move-result v2

    sub-int v3, v1, v2

    .line 1276
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 1283
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v9

    .line 1284
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_8

    .line 1285
    invoke-virtual {p0, v8}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1286
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 1287
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    .line 1288
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_3

    .line 1289
    iget v1, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v6, v1, 0x7

    .line 1290
    iget v1, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v4, v1, 0x70

    .line 1291
    const/high16 v2, -0x80000000

    .line 1292
    const/high16 v1, -0x80000000

    .line 1293
    const/16 v7, 0x30

    if-eq v4, v7, :cond_0

    const/16 v7, 0x50

    if-ne v4, v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    .line 1294
    :goto_1
    const/4 v4, 0x3

    if-eq v6, v4, :cond_1

    const/4 v4, 0x5

    if-ne v6, v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    .line 1296
    :goto_2
    if-eqz v7, :cond_6

    .line 1297
    const/high16 v2, 0x40000000    # 2.0f

    .line 1304
    :cond_2
    :goto_3
    iget v4, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_d

    .line 1305
    const/high16 v4, 0x40000000    # 2.0f

    .line 1306
    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_c

    .line 1307
    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->width:I

    .line 1310
    :goto_4
    iget v11, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_b

    .line 1311
    const/high16 v1, 0x40000000    # 2.0f

    .line 1312
    iget v11, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_b

    .line 1313
    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->height:I

    .line 1316
    :goto_5
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1317
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1318
    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1320
    if-eqz v7, :cond_7

    .line 1321
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 1284
    :cond_3
    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1293
    :cond_4
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    .line 1294
    :cond_5
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    .line 1298
    :cond_6
    if-eqz v6, :cond_2

    .line 1299
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_3

    .line 1322
    :cond_7
    if-eqz v6, :cond_3

    .line 1323
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_6

    .line 1329
    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mChildWidthMeasureSpec:I

    .line 1330
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mChildHeightMeasureSpec:I

    .line 1333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInLayout:Z

    .line 1334
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->populate()V

    .line 1335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInLayout:Z

    .line 1338
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v2

    .line 1339
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_a

    .line 1340
    invoke-virtual {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1341
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_9

    .line 1345
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    .line 1346
    if-eqz v0, :cond_9

    iget-boolean v4, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v4, :cond_9

    .line 1347
    int-to-float v4, v5

    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->DW:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1349
    iget v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mChildWidthMeasureSpec:I

    invoke-virtual {v3, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1339
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1353
    :cond_a
    return-void

    :cond_b
    move v0, v5

    goto :goto_5

    :cond_c
    move v2, v3

    goto/16 :goto_4

    :cond_d
    move v4, v2

    move v2, v3

    goto/16 :goto_4
.end method

.method protected onPageScrolled(IFI)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 1574
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mDecorChildCount:I

    if-lez v0, :cond_2

    .line 1575
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v5

    .line 1576
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingTop()I

    move-result v1

    .line 1577
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingBottom()I

    move-result v2

    .line 1578
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getHeight()I

    move-result v6

    .line 1579
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v7

    move v4, v3

    .line 1580
    :goto_0
    if-ge v4, v7, :cond_2

    .line 1581
    invoke-virtual {p0, v4}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1582
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    .line 1583
    iget-boolean v9, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1580
    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_0

    .line 1585
    :cond_1
    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x70

    .line 1587
    sparse-switch v0, :sswitch_data_0

    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1604
    :goto_2
    add-int/2addr v0, v5

    .line 1606
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1607
    if-eqz v0, :cond_0

    .line 1608
    invoke-virtual {v8, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 1593
    :sswitch_0
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    .line 1594
    goto :goto_2

    .line 1596
    :sswitch_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1598
    goto :goto_2

    .line 1600
    :sswitch_2
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1601
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_2

    .line 1613
    :cond_2
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1614
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1616
    :cond_3
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_4

    .line 1617
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1620
    :cond_4
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_6

    .line 1621
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v2

    .line 1622
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v4

    move v1, v3

    .line 1623
    :goto_3
    if-ge v1, v4, :cond_6

    .line 1624
    invoke-virtual {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1625
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    .line 1627
    iget-boolean v0, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_5

    .line 1623
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1629
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getClientHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 1630
    iget-object v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    invoke-interface {v5, v3, v0}, Landroid/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1634
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCalledSuper:Z

    .line 1635
    return-void

    .line 1587
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 2597
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v0

    .line 2598
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    move v1, v2

    move v3, v4

    .line 2607
    :goto_0
    if-eq v3, v0, :cond_2

    .line 2608
    invoke-virtual {p0, v3}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2609
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2610
    invoke-virtual {p0, v5}, Lcom/kingcore/uilib/VerticalViewPager;->a(Landroid/view/View;)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v6

    .line 2611
    if-eqz v6, :cond_1

    iget v6, v6, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    iget v7, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 2612
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2618
    :goto_1
    return v2

    .line 2603
    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    .line 2605
    goto :goto_0

    .line 2607
    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 2618
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 1170
    instance-of v0, p1, Lcom/kingcore/uilib/VerticalViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1171
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1186
    :goto_0
    return-void

    .line 1175
    :cond_0
    check-cast p1, Lcom/kingcore/uilib/VerticalViewPager$SavedState;

    .line 1176
    invoke-virtual {p1}, Lcom/kingcore/uilib/VerticalViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1178
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p1, Lcom/kingcore/uilib/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/kingcore/uilib/VerticalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1180
    iget v0, p1, Lcom/kingcore/uilib/VerticalViewPager$SavedState;->position:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kingcore/uilib/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1182
    :cond_1
    iget v0, p1, Lcom/kingcore/uilib/VerticalViewPager$SavedState;->position:I

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredCurItem:I

    .line 1183
    iget-object v0, p1, Lcom/kingcore/uilib/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1184
    iget-object v0, p1, Lcom/kingcore/uilib/VerticalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1159
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1160
    new-instance v1, Lcom/kingcore/uilib/VerticalViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/kingcore/uilib/VerticalViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1161
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    iput v0, v1, Lcom/kingcore/uilib/VerticalViewPager$SavedState;->position:I

    .line 1162
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/kingcore/uilib/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1165
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 1357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1360
    if-eq p2, p4, :cond_0

    .line 1361
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    invoke-direct {p0, p2, p4, v0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->recomputeScrollPosition(IIII)V

    .line 1363
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1827
    iget-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1951
    :goto_0
    return v0

    .line 1834
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 1837
    goto :goto_0

    .line 1840
    :cond_1
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    .line 1842
    goto :goto_0

    .line 1845
    :cond_3
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 1846
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1848
    :cond_4
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1850
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1853
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1948
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_6

    .line 1949
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    move v0, v1

    .line 1951
    goto :goto_0

    .line 1855
    :pswitch_1
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1856
    iput-boolean v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPopulatePending:Z

    .line 1857
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->populate()V

    .line 1860
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionX:F

    .line 1861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    .line 1862
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1866
    :pswitch_2
    iget-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_7

    .line 1867
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1868
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1869
    iget v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1870
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1871
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionX:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1874
    iget v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_7

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7

    .line 1876
    iput-boolean v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    .line 1877
    invoke-direct {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1878
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInitialMotionY:F

    sub-float v0, v3, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInitialMotionY:F

    iget v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_2
    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    .line 1880
    iput v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionX:F

    .line 1881
    invoke-direct {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollState(I)V

    .line 1882
    invoke-direct {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 1885
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1886
    if-eqz v0, :cond_7

    .line 1887
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1892
    :cond_7
    iget-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1894
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1896
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1897
    invoke-direct {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->performDrag(F)Z

    move-result v0

    or-int/2addr v2, v0

    .line 1898
    goto/16 :goto_1

    .line 1878
    :cond_8
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInitialMotionY:F

    iget v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_2

    .line 1901
    :pswitch_3
    iget-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1902
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1903
    const/16 v2, 0x3e8

    iget v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1904
    iget v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    invoke-static {v0, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 1906
    iput-boolean v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPopulatePending:Z

    .line 1907
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getClientHeight()I

    move-result v2

    .line 1908
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v3

    .line 1909
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->hk()Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v4

    .line 1910
    if-eqz v4, :cond_9

    .line 1911
    iget v5, v4, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    .line 1912
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, v4, Lcom/kingcore/uilib/VerticalViewPager$b;->offset:F

    sub-float/2addr v2, v3

    iget v3, v4, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    div-float/2addr v2, v3

    .line 1913
    iget v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    .line 1914
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 1915
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1916
    iget v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInitialMotionY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1917
    invoke-direct {p0, v5, v2, v0, v3}, Lcom/kingcore/uilib/VerticalViewPager;->determineTargetPage(IFII)I

    move-result v2

    .line 1919
    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/kingcore/uilib/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    .line 1922
    :cond_9
    iput v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    .line 1923
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->endDrag()V

    .line 1924
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->DR:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->DS:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    or-int/2addr v2, v0

    .line 1925
    goto/16 :goto_1

    .line 1928
    :pswitch_4
    iget-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1929
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/kingcore/uilib/VerticalViewPager;->scrollToItem(IZIZ)V

    .line 1930
    iput v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    .line 1931
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->endDrag()V

    .line 1932
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->DR:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->DS:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    or-int/2addr v2, v0

    goto/16 :goto_1

    .line 1936
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1937
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1938
    iput v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    .line 1939
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 1943
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/VerticalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1944
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mActivePointerId:I

    .line 1945
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1944
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mLastMotionY:F

    goto/16 :goto_1

    .line 1853
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method populate()V
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->populate(I)V

    .line 812
    return-void
.end method

.method populate(I)V
    .locals 18

    .prologue
    .line 815
    const/4 v3, 0x0

    .line 816
    const/4 v2, 0x2

    .line 817
    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    move/from16 v0, p1

    if-eq v4, v0, :cond_23

    .line 818
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    move/from16 v0, p1

    if-ge v2, v0, :cond_1

    const/16 v2, 0x82

    .line 819
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/VerticalViewPager;->aD(I)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v3

    .line 820
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    move-object v4, v3

    move v3, v2

    .line 823
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v2, :cond_2

    .line 824
    invoke-direct/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->sortChildDrawingOrder()V

    .line 1000
    :cond_0
    :goto_2
    return-void

    .line 818
    :cond_1
    const/16 v2, 0x21

    goto :goto_0

    .line 832
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mPopulatePending:Z

    if-eqz v2, :cond_3

    .line 834
    invoke-direct/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->sortChildDrawingOrder()V

    goto :goto_2

    .line 841
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 847
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mOffscreenPageLimit:I

    .line 848
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    sub-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 849
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    .line 850
    add-int/lit8 v5, v12, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    add-int/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 852
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mExpectedAdapterCount:I

    if-eq v12, v2, :cond_4

    .line 855
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 859
    :goto_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingcore/uilib/VerticalViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pager id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Pager class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 863
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Problematic adapter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 864
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 856
    :catch_0
    move-exception v2

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 869
    :cond_4
    const/4 v6, 0x0

    .line 870
    const/4 v2, 0x0

    move v5, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_22

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 872
    iget v7, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-lt v7, v8, :cond_9

    .line 873
    iget v7, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-ne v7, v8, :cond_22

    .line 878
    :goto_5
    if-nez v2, :cond_21

    if-lez v12, :cond_21

    .line 879
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/kingcore/uilib/VerticalViewPager;->t(II)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v2

    move-object v10, v2

    .line 885
    :goto_6
    if-eqz v10, :cond_7

    .line 886
    const/4 v9, 0x0

    .line 887
    add-int/lit8 v8, v5, -0x1

    .line 888
    if-ltz v8, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 889
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getClientHeight()I

    move-result v14

    .line 890
    if-gtz v14, :cond_b

    const/4 v6, 0x0

    .line 892
    :goto_8
    move-object/from16 v0, p0

    iget v7, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    add-int/lit8 v7, v7, -0x1

    move/from16 v16, v7

    move v7, v9

    move/from16 v9, v16

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v17

    :goto_9
    if-ltz v9, :cond_5

    .line 893
    cmpl-float v15, v7, v6

    if-ltz v15, :cond_f

    if-ge v9, v11, :cond_f

    .line 894
    if-nez v2, :cond_c

    .line 920
    :cond_5
    iget v6, v10, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    .line 921
    add-int/lit8 v9, v8, 0x1

    .line 922
    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, v6, v2

    if-gez v2, :cond_6

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/VerticalViewPager$b;

    move-object v7, v2

    .line 924
    :goto_a
    if-gtz v14, :cond_14

    const/4 v2, 0x0

    move v5, v2

    .line 926
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v2

    move-object v2, v7

    move v7, v9

    move/from16 v9, v16

    :goto_c
    if-ge v9, v12, :cond_6

    .line 927
    cmpl-float v11, v6, v5

    if-ltz v11, :cond_17

    if-le v9, v13, :cond_17

    .line 928
    if-nez v2, :cond_15

    .line 953
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v4}, Lcom/kingcore/uilib/VerticalViewPager;->a(Lcom/kingcore/uilib/VerticalViewPager$b;ILcom/kingcore/uilib/VerticalViewPager$b;)V

    .line 963
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-eqz v10, :cond_1b

    iget-object v2, v10, Lcom/kingcore/uilib/VerticalViewPager$b;->object:Ljava/lang/Object;

    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v2}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 969
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v5

    .line 970
    const/4 v2, 0x0

    move v4, v2

    :goto_e
    if-ge v4, v5, :cond_1c

    .line 971
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 972
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    .line 973
    iput v4, v2, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->childIndex:I

    .line 974
    iget-boolean v7, v2, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v7, :cond_8

    iget v7, v2, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->DW:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_8

    .line 976
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kingcore/uilib/VerticalViewPager;->a(Landroid/view/View;)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v6

    .line 977
    if-eqz v6, :cond_8

    .line 978
    iget v7, v6, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    iput v7, v2, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->DW:F

    .line 979
    iget v6, v6, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    iput v6, v2, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->position:I

    .line 970
    :cond_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_e

    .line 870
    :cond_9
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_4

    .line 888
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 890
    :cond_b
    const/high16 v6, 0x40000000    # 2.0f

    iget v7, v10, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    sub-float/2addr v6, v7

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    int-to-float v15, v14

    div-float/2addr v7, v15

    add-float/2addr v6, v7

    goto/16 :goto_8

    .line 897
    :cond_c
    iget v15, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-ne v9, v15, :cond_d

    iget-boolean v15, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->scrolling:Z

    if-nez v15, :cond_d

    .line 898
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 899
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->object:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v9, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 904
    add-int/lit8 v5, v5, -0x1

    .line 905
    add-int/lit8 v8, v8, -0x1

    .line 906
    if-ltz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 892
    :cond_d
    :goto_f
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_9

    .line 906
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 908
    :cond_f
    if-eqz v2, :cond_11

    iget v15, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-ne v9, v15, :cond_11

    .line 909
    iget v2, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v7, v2

    .line 910
    add-int/lit8 v5, v5, -0x1

    .line 911
    if-ltz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/VerticalViewPager$b;

    goto :goto_f

    :cond_10
    const/4 v2, 0x0

    goto :goto_f

    .line 913
    :cond_11
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/kingcore/uilib/VerticalViewPager;->t(II)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v2

    .line 914
    iget v2, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v7, v2

    .line 915
    add-int/lit8 v8, v8, 0x1

    .line 916
    if-ltz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/VerticalViewPager$b;

    goto :goto_f

    :cond_12
    const/4 v2, 0x0

    goto :goto_f

    .line 923
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 925
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v5, v14

    div-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    add-float/2addr v2, v5

    move v5, v2

    goto/16 :goto_b

    .line 931
    :cond_15
    iget v11, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-ne v9, v11, :cond_20

    iget-boolean v11, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->scrolling:Z

    if-nez v11, :cond_20

    .line 932
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 933
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->object:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v9, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/VerticalViewPager$b;

    :goto_10
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    .line 926
    :goto_11
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v2

    move-object v2, v6

    move/from16 v6, v16

    goto/16 :goto_c

    .line 938
    :cond_16
    const/4 v2, 0x0

    goto :goto_10

    .line 940
    :cond_17
    if-eqz v2, :cond_19

    iget v11, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    if-ne v9, v11, :cond_19

    .line 941
    iget v2, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v6, v2

    .line 942
    add-int/lit8 v7, v7, 0x1

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/VerticalViewPager$b;

    :goto_12
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    goto :goto_11

    :cond_18
    const/4 v2, 0x0

    goto :goto_12

    .line 945
    :cond_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7}, Lcom/kingcore/uilib/VerticalViewPager;->t(II)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v2

    .line 946
    add-int/lit8 v7, v7, 0x1

    .line 947
    iget v2, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    add-float/2addr v6, v2

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/VerticalViewPager$b;

    :goto_13
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    goto :goto_11

    :cond_1a
    const/4 v2, 0x0

    goto :goto_13

    .line 963
    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 983
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->sortChildDrawingOrder()V

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 987
    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/VerticalViewPager;->b(Landroid/view/View;)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v2

    .line 988
    :goto_14
    if-eqz v2, :cond_1d

    iget v2, v2, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-eq v2, v4, :cond_0

    .line 989
    :cond_1d
    const/4 v2, 0x0

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 990
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 991
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kingcore/uilib/VerticalViewPager;->a(Landroid/view/View;)Lcom/kingcore/uilib/VerticalViewPager$b;

    move-result-object v5

    .line 992
    if-eqz v5, :cond_1e

    iget v5, v5, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-ne v5, v6, :cond_1e

    .line 993
    invoke-virtual {v4, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 989
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 987
    :cond_1f
    const/4 v2, 0x0

    goto :goto_14

    :cond_20
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    goto/16 :goto_11

    :cond_21
    move-object v10, v2

    goto/16 :goto_6

    :cond_22
    move-object v2, v6

    goto/16 :goto_5

    :cond_23
    move-object v4, v3

    move v3, v2

    goto/16 :goto_1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1216
    iget-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1217
    invoke-virtual {p0, p1}, Lcom/kingcore/uilib/VerticalViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1221
    :goto_0
    return-void

    .line 1219
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DN:Lcom/kingcore/uilib/VerticalViewPager$e;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 302
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v1, v2

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    .line 305
    iget-object v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v4, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    iget-object v0, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 303
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 308
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 309
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->removeNonDecorViews()V

    .line 310
    iput v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    .line 311
    invoke-virtual {p0, v2, v2}, Lcom/kingcore/uilib/VerticalViewPager;->scrollTo(II)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 315
    iput-object p1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 316
    iput v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mExpectedAdapterCount:I

    .line 318
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DN:Lcom/kingcore/uilib/VerticalViewPager$e;

    if-nez v1, :cond_2

    .line 320
    new-instance v1, Lcom/kingcore/uilib/VerticalViewPager$e;

    invoke-direct {v1, p0, v5}, Lcom/kingcore/uilib/VerticalViewPager$e;-><init>(Lcom/kingcore/uilib/VerticalViewPager;Lcom/kingcore/uilib/VerticalViewPager$1;)V

    iput-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DN:Lcom/kingcore/uilib/VerticalViewPager$e;

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->DN:Lcom/kingcore/uilib/VerticalViewPager$e;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 323
    iput-boolean v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPopulatePending:Z

    .line 324
    iget-boolean v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstLayout:Z

    .line 325
    iput-boolean v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstLayout:Z

    .line 326
    iget-object v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mExpectedAdapterCount:I

    .line 327
    iget v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredCurItem:I

    if-ltz v3, :cond_5

    .line 328
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 329
    iget v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v1, v2, v6}, Lcom/kingcore/uilib/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    .line 330
    const/4 v1, -0x1

    iput v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredCurItem:I

    .line 331
    iput-object v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 332
    iput-object v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 340
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DT:Lcom/kingcore/uilib/VerticalViewPager$d;

    if-eqz v1, :cond_4

    if-eq v0, p1, :cond_4

    .line 341
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DT:Lcom/kingcore/uilib/VerticalViewPager$d;

    invoke-interface {v1, v0, p1}, Lcom/kingcore/uilib/VerticalViewPager$d;->a(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 343
    :cond_4
    return-void

    .line 333
    :cond_5
    if-nez v1, :cond_6

    .line 334
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->populate()V

    goto :goto_1

    .line 336
    :cond_6
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->requestLayout()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 5

    .prologue
    .line 520
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 521
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 523
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "setChildrenDrawingOrderEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 535
    :cond_1
    :goto_1
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    const-string v1, "ViewPager"

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 531
    :catch_1
    move-exception v0

    .line 532
    const-string v1, "ViewPager"

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 386
    iput-boolean v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPopulatePending:Z

    .line 387
    iget-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    .line 388
    return-void

    :cond_0
    move v0, v1

    .line 387
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPopulatePending:Z

    .line 398
    invoke-virtual {p0, p1, p2, v0}, Lcom/kingcore/uilib/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    .line 399
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/kingcore/uilib/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    .line 407
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 410
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 411
    :cond_0
    invoke-direct {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 450
    :goto_0
    return-void

    .line 414
    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    invoke-direct {p0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 419
    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    .line 424
    :cond_3
    :goto_1
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOffscreenPageLimit:I

    .line 425
    iget v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    .line 429
    :goto_2
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 430
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    iput-boolean v3, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->scrolling:Z

    .line 429
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 421
    :cond_5
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 433
    :cond_6
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    if-eq v0, p1, :cond_7

    move v1, v3

    .line 435
    :cond_7
    iget-boolean v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_a

    .line 438
    iput p1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    .line 439
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_8

    .line 440
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 442
    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 443
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 445
    :cond_9
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->requestLayout()V

    goto :goto_0

    .line 447
    :cond_a
    invoke-virtual {p0, p1}, Lcom/kingcore/uilib/VerticalViewPager;->populate(I)V

    .line 448
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/kingcore/uilib/VerticalViewPager;->scrollToItem(IZIZ)V

    goto :goto_0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 585
    if-ge p1, v0, :cond_0

    .line 586
    const-string v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 590
    :cond_0
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 591
    iput p1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOffscreenPageLimit:I

    .line 592
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->populate()V

    .line 594
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/kingcore/uilib/VerticalViewPager$d;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/kingcore/uilib/VerticalViewPager;->DT:Lcom/kingcore/uilib/VerticalViewPager$d;

    .line 367
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 490
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .prologue
    .line 605
    iget v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    .line 606
    iput p1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    .line 608
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getHeight()I

    move-result v1

    .line 609
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/kingcore/uilib/VerticalViewPager;->recomputeScrollPosition(IIII)V

    .line 611
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->requestLayout()V

    .line 612
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 629
    iput-object p1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 630
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->refreshDrawableState()V

    .line 631
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->setWillNotDraw(Z)V

    .line 632
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->invalidate()V

    .line 633
    return-void

    .line 631
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method smoothScrollTo(III)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 686
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 688
    invoke-direct {p0, v5}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 724
    :goto_0
    return-void

    .line 691
    :cond_0
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollX()I

    move-result v1

    .line 692
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getScrollY()I

    move-result v2

    .line 693
    sub-int v3, p1, v1

    .line 694
    sub-int v4, p2, v2

    .line 695
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 696
    invoke-direct {p0, v5}, Lcom/kingcore/uilib/VerticalViewPager;->completeScroll(Z)V

    .line 697
    invoke-virtual {p0}, Lcom/kingcore/uilib/VerticalViewPager;->populate()V

    .line 698
    invoke-direct {p0, v5}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollState(I)V

    goto :goto_0

    .line 702
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 703
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kingcore/uilib/VerticalViewPager;->setScrollState(I)V

    .line 705
    invoke-direct {p0}, Lcom/kingcore/uilib/VerticalViewPager;->getClientHeight()I

    move-result v0

    .line 706
    div-int/lit8 v5, v0, 0x2

    .line 707
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 708
    int-to-float v7, v5

    int-to-float v5, v5

    .line 709
    invoke-virtual {p0, v6}, Lcom/kingcore/uilib/VerticalViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 712
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 713
    if-lez v6, :cond_2

    .line 714
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 720
    :goto_1
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 722
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 723
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 716
    :cond_2
    int-to-float v0, v0

    iget-object v5, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mCurItem:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    mul-float/2addr v0, v5

    .line 717
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/kingcore/uilib/VerticalViewPager;->mPageMargin:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    .line 718
    add-float/2addr v0, v8

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_1
.end method

.method t(II)Lcom/kingcore/uilib/VerticalViewPager$b;
    .locals 2

    .prologue
    .line 727
    new-instance v0, Lcom/kingcore/uilib/VerticalViewPager$b;

    invoke-direct {v0}, Lcom/kingcore/uilib/VerticalViewPager$b;-><init>()V

    .line 728
    iput p1, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    .line 729
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->object:Ljava/lang/Object;

    .line 730
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/kingcore/uilib/VerticalViewPager$b;->DW:F

    .line 731
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    :goto_0
    return-object v0

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/kingcore/uilib/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 646
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
