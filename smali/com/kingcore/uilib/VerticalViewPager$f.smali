.class Lcom/kingcore/uilib/VerticalViewPager$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingcore/uilib/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 4

    .prologue
    .line 2789
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    .line 2790
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;

    .line 2791
    iget-boolean v2, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    iget-boolean v3, v1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eq v2, v3, :cond_1

    .line 2792
    iget-boolean v0, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2794
    :goto_0
    return v0

    .line 2792
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 2794
    :cond_1
    iget v0, v0, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->position:I

    iget v1, v1, Lcom/kingcore/uilib/VerticalViewPager$LayoutParams;->position:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 2786
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/kingcore/uilib/VerticalViewPager$f;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
