.class public Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field public weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1460
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010181

    aput v2, v0, v1

    sput-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->ATTRS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1467
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1464
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1468
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1492
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1464
    iput v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1494
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1495
    if-eqz v0, :cond_0

    .line 1496
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1499
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1500
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1480
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1464
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1481
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1484
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1464
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1485
    return-void
.end method
