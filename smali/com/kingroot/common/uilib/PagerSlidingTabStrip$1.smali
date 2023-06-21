.class Lcom/kingroot/common/uilib/PagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qi:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$1;->Qi:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$1;->Qi:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$1;->Qi:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$1;->Qi:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->a(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->a(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;I)I

    .line 235
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$1;->Qi:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$1;->Qi:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->b(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->a(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;II)V

    .line 236
    return-void
.end method
