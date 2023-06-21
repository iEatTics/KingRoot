.class Lcom/kingroot/common/uilib/FixLinearLayoutManager$a;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/FixLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic Ne:Lcom/kingroot/common/uilib/FixLinearLayoutManager;


# direct methods
.method public constructor <init>(Lcom/kingroot/common/uilib/FixLinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kingroot/common/uilib/FixLinearLayoutManager$a;->Ne:Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    .line 71
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 73
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingroot/common/uilib/FixLinearLayoutManager$a;->Ne:Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    .line 78
    invoke-virtual {v0, p1}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, -0x1

    return v0
.end method
