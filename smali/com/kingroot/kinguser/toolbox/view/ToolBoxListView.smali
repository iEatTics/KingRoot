.class public Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;
.super Lcom/kingroot/common/uilib/TransparentListView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/TransparentListView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;->ZL()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/kingroot/common/uilib/TransparentListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;->ZL()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/common/uilib/TransparentListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;->ZL()V

    .line 27
    return-void
.end method

.method private ZL()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;->setCacheColorHint(I)V

    .line 32
    const v0, 0x7f0e010a

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;->setBackgroundResource(I)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 35
    return-void
.end method
