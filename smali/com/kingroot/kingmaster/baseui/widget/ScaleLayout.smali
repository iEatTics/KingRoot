.class public Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;,
        Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;
    }
.end annotation


# instance fields
.field private acA:Lcom/kingroot/kingmaster/baseui/widget/ScrollToScaleBase;

.field private acB:Landroid/view/ViewGroup;

.field private acC:I

.field private acD:I

.field private acE:Landroid/view/animation/Animation;

.field private acF:Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;

.field private acG:Z

.field private acH:Z

.field private mAnimating:Z

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field private mMinHeight:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mTouchSlop:I

    .line 70
    new-instance v0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;

    invoke-direct {v0, p0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;-><init>(Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;)V

    iput-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acF:Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;

    .line 72
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acF:Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->setDuration(J)V

    .line 75
    const v0, 0x7f040009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acE:Landroid/view/animation/Animation;

    .line 76
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    .line 77
    return-void
.end method

.method private cr(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 257
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    .line 258
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mMinHeight:I

    if-ge v0, v1, :cond_2

    .line 259
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mMinHeight:I

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    .line 260
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acG:Z

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iput-boolean v2, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acH:Z

    .line 270
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acG:Z

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iput-boolean v3, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acH:Z

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 276
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->requestLayout()V

    .line 277
    return-void

    .line 264
    :cond_2
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acC:I

    if-le v0, v1, :cond_0

    .line 265
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acC:I

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    goto :goto_0
.end method

.method private cs(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 286
    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    iget v2, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mMinHeight:I

    if-ne v1, v2, :cond_0

    .line 287
    if-ltz p1, :cond_1

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acA:Lcom/kingroot/kingmaster/baseui/widget/ScrollToScaleBase;

    invoke-virtual {v1, p1}, Lcom/kingroot/kingmaster/baseui/widget/ScrollToScaleBase;->cq(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private endDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 238
    iput-boolean v4, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mIsBeingDragged:Z

    .line 240
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mMinHeight:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acC:I

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acF:Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;

    iget v2, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    iget-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acG:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acC:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->D(II)V

    .line 242
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acF:Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;

    invoke-virtual {p0, v0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acG:Z

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acE:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iput-boolean v3, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acH:Z

    .line 250
    :cond_0
    return-void

    .line 241
    :cond_1
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mMinHeight:I

    goto :goto_0
.end method

.method private sk()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mIsBeingDragged:Z

    .line 254
    return-void
.end method


# virtual methods
.method public getScaleLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mAnimating:Z

    .line 336
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mAnimating:Z

    .line 350
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 133
    iget-boolean v3, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mAnimating:Z

    if-nez v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    :cond_0
    move v0, v1

    .line 180
    :cond_1
    :goto_0
    return v0

    .line 138
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 180
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 141
    iget v3, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mLastMotionY:I

    sub-int v3, v2, v3

    .line 143
    iget-boolean v4, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mIsBeingDragged:Z

    if-nez v4, :cond_4

    invoke-direct {p0, v3}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->cs(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 148
    iget v3, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mTouchSlop:I

    if-le v0, v3, :cond_3

    .line 149
    invoke-direct {p0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->sk()V

    .line 150
    iput v2, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mLastMotionY:I

    .line 152
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_3

    .line 154
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 161
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 163
    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mLastMotionY:I

    goto :goto_1

    .line 168
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mLastMotionY:I

    goto :goto_1

    .line 175
    :pswitch_4
    iput-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mIsBeingDragged:Z

    goto :goto_1

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    add-int/2addr v0, p3

    .line 82
    iget-object v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 83
    iget-object v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acA:Lcom/kingroot/kingmaster/baseui/widget/ScrollToScaleBase;

    invoke-virtual {v1, p2, v0, p4, p5}, Lcom/kingroot/kingmaster/baseui/widget/ScrollToScaleBase;->layout(IIII)V

    .line 84
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    move v1, v2

    .line 89
    :goto_0
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0, v3}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    .line 91
    invoke-virtual {p0, v2}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/baseui/widget/ScrollToScaleBase;

    iput-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acA:Lcom/kingroot/kingmaster/baseui/widget/ScrollToScaleBase;

    .line 93
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acH:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_0
    invoke-virtual {p0, v3}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->measureChild(Landroid/view/View;II)V

    .line 102
    if-eqz v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acC:I

    .line 104
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acC:I

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mMinHeight:I

    .line 106
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    if-ne v0, v5, :cond_1

    .line 107
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acC:I

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    .line 111
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mMinHeight:I

    sub-int/2addr v0, v1

    .line 112
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acA:Lcom/kingroot/kingmaster/baseui/widget/ScrollToScaleBase;

    invoke-virtual {p0, v0, p1, p2}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->measureChild(Landroid/view/View;II)V

    .line 126
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mMinHeight:I

    iget-object v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acA:Lcom/kingroot/kingmaster/baseui/widget/ScrollToScaleBase;

    invoke-virtual {v1}, Lcom/kingroot/kingmaster/baseui/widget/ScrollToScaleBase;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->setMeasuredDimension(II)V

    .line 128
    return-void

    :cond_2
    move v1, v3

    .line 88
    goto :goto_0

    .line 114
    :sswitch_0
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 119
    :sswitch_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 364
    check-cast p1, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;

    .line 366
    invoke-virtual {p1}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 367
    iget v1, p1, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;->height:I

    iput v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    .line 368
    iget v1, p1, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;->acL:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acH:Z

    .line 370
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->requestLayout()V

    .line 371
    return-void

    .line 368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 354
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;

    invoke-direct {v1, v0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;-><init>(Landroid/os/Parcelable;)V

    .line 357
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    iput v0, v1, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;->height:I

    .line 358
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acH:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;->acL:I

    .line 359
    return-object v1

    .line 358
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 187
    iget-boolean v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mAnimating:Z

    if-eqz v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v2

    .line 191
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mLastMotionY:I

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 200
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mLastMotionY:I

    sub-int/2addr v0, v3

    .line 201
    iget-boolean v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mTouchSlop:I

    if-le v1, v4, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_2

    .line 204
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 207
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->sk()V

    .line 209
    if-lez v0, :cond_4

    .line 210
    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mTouchSlop:I

    sub-int/2addr v0, v1

    .line 215
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 216
    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mLastMotionY:I

    if-le v3, v1, :cond_5

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acG:Z

    .line 219
    iput v3, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mLastMotionY:I

    .line 221
    invoke-direct {p0, v0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->cr(I)V

    goto :goto_0

    .line 212
    :cond_4
    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mTouchSlop:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 216
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 227
    :pswitch_2
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->endDrag()V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setScaleHeight(F)V
    .locals 4

    .prologue
    .line 339
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    .line 340
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acB:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->acD:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 341
    return-void
.end method
