.class public Lcom/kingroot/kinguser/gamebox/foreground/view/MaxHeightScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/MaxHeightScrollView;->mContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/MaxHeightScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 52
    invoke-virtual {p0}, Lcom/kingroot/kinguser/gamebox/foreground/view/MaxHeightScrollView;->getMeasuredHeight()I

    move-result v0

    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 57
    iget v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/MaxHeightScrollView;->mMaxHeight:I

    if-le v0, v2, :cond_0

    .line 58
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/MaxHeightScrollView;->mMaxHeight:I

    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/MaxHeightScrollView;->setMeasuredDimension(II)V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/MaxHeightScrollView;->setMeasuredDimension(II)V

    goto :goto_0
.end method
