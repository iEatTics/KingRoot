.class Lcom/kingroot/common/uilib/PagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->b(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qi:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

.field final synthetic Qj:I


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$2;->Qi:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    iput p2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$2;->Qj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$2;->Qi:Lcom/kingroot/common/uilib/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->a(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$2;->Qj:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 278
    return-void
.end method
