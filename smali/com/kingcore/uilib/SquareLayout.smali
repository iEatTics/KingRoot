.class public Lcom/kingcore/uilib/SquareLayout;
.super Landroid/support/percent/PercentRelativeLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/support/percent/PercentRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/percent/PercentRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/support/percent/PercentRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 25
    invoke-super {p0, p1, p2}, Landroid/support/percent/PercentRelativeLayout;->onMeasure(II)V

    .line 26
    invoke-static {v1, p1}, Lcom/kingcore/uilib/SquareLayout;->getDefaultSize(II)I

    move-result v0

    .line 27
    invoke-static {v1, p2}, Lcom/kingcore/uilib/SquareLayout;->getDefaultSize(II)I

    move-result v1

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 29
    invoke-virtual {p0, v0, v0}, Lcom/kingcore/uilib/SquareLayout;->setMeasuredDimension(II)V

    .line 30
    return-void
.end method
