.class public Lcom/kingroot/common/uilib/banner/GuideLinkageLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/GuideLinkageLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 25
    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/banner/GuideLinkageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 27
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 32
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
