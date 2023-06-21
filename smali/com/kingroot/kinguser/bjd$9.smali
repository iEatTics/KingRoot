.class Lcom/kingroot/kinguser/bjd$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/common/uilib/KBaseListView;Lcom/kingroot/kinguser/bjc;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwa:Lcom/kingroot/kinguser/bjd;

.field final synthetic bwc:Landroid/view/ViewTreeObserver;

.field final synthetic bwl:Lcom/kingroot/common/uilib/KBaseListView;

.field final synthetic bwn:Lcom/kingroot/kinguser/bjc;

.field final synthetic bwo:Lcom/kingroot/kinguser/bji;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd;Landroid/view/ViewTreeObserver;Lcom/kingroot/common/uilib/KBaseListView;Lcom/kingroot/kinguser/bjc;Lcom/kingroot/kinguser/bji;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$9;->bwa:Lcom/kingroot/kinguser/bjd;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjd$9;->bwc:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/kingroot/kinguser/bjd$9;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    iput-object p4, p0, Lcom/kingroot/kinguser/bjd$9;->bwn:Lcom/kingroot/kinguser/bjc;

    iput-object p5, p0, Lcom/kingroot/kinguser/bjd$9;->bwo:Lcom/kingroot/kinguser/bji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 693
    iget-object v1, p0, Lcom/kingroot/kinguser/bjd$9;->bwc:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 696
    iget-object v1, p0, Lcom/kingroot/kinguser/bjd$9;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v1}, Lcom/kingroot/common/uilib/KBaseListView;->getFirstVisiblePosition()I

    move-result v9

    move v7, v0

    move v3, v0

    .line 698
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/KBaseListView;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 699
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0, v7}, Lcom/kingroot/common/uilib/KBaseListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 700
    add-int v0, v9, v7

    .line 701
    iget-object v4, p0, Lcom/kingroot/kinguser/bjd$9;->bwn:Lcom/kingroot/kinguser/bjc;

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/bjc;->getItemId(I)J

    move-result-wide v4

    .line 702
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->d(Lcom/kingroot/kinguser/bjd;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 703
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 704
    if-nez v0, :cond_0

    .line 708
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v5, p0, Lcom/kingroot/kinguser/bjd$9;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v5}, Lcom/kingroot/common/uilib/KBaseListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 709
    if-lez v7, :cond_2

    :goto_1
    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 711
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v4, v0, v4

    .line 713
    if-eqz v4, :cond_8

    .line 715
    const/4 v3, 0x0

    .line 716
    add-int/lit8 v0, v7, 0x1

    .line 718
    iget-object v5, p0, Lcom/kingroot/kinguser/bjd$9;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v5}, Lcom/kingroot/common/uilib/KBaseListView;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 719
    iget-object v5, p0, Lcom/kingroot/kinguser/bjd$9;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v5, v0}, Lcom/kingroot/common/uilib/KBaseListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 720
    add-int/2addr v0, v9

    .line 721
    iget-object v6, p0, Lcom/kingroot/kinguser/bjd$9;->bwn:Lcom/kingroot/kinguser/bjc;

    invoke-virtual {v6, v0}, Lcom/kingroot/kinguser/bjc;->getItemId(I)J

    move-result-wide v10

    .line 722
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->d(Lcom/kingroot/kinguser/bjd;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 723
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 724
    if-nez v0, :cond_1

    .line 728
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v5, p0, Lcom/kingroot/kinguser/bjd$9;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v5}, Lcom/kingroot/common/uilib/KBaseListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 729
    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 731
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v6

    .line 733
    if-nez v0, :cond_7

    .line 734
    new-instance v0, Lcom/kingroot/kinguser/bjd$9$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjd$9$1;-><init>(Lcom/kingroot/kinguser/bjd$9;)V

    :goto_2
    move-object v6, v0

    .line 753
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwa:Lcom/kingroot/kinguser/bjd;

    int-to-float v4, v4

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/kinguser/bjd;Landroid/view/View;FFFFLjava/lang/Runnable;)V

    move v1, v8

    .line 698
    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v3, v1

    goto/16 :goto_0

    .line 709
    :cond_2
    neg-int v0, v0

    goto :goto_1

    .line 744
    :cond_3
    new-instance v6, Lcom/kingroot/kinguser/bjd$9$2;

    invoke-direct {v6, p0}, Lcom/kingroot/kinguser/bjd$9$2;-><init>(Lcom/kingroot/kinguser/bjd$9;)V

    goto :goto_3

    .line 756
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/KBaseListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 758
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0, v8}, Lcom/kingroot/common/uilib/KBaseListView;->setEnabled(Z)V

    .line 759
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwn:Lcom/kingroot/kinguser/bjc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjc;->notifyDataSetChanged()V

    .line 760
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->e(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/kinguser/bjd$b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 761
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->e(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/kinguser/bjd$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjd$9;->bwo:Lcom/kingroot/kinguser/bji;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/bjd$b;->e(Lcom/kingroot/kinguser/bji;)V

    .line 774
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->d(Lcom/kingroot/kinguser/bjd;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 775
    return v8

    .line 764
    :cond_6
    if-nez v3, :cond_5

    .line 766
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0, v8}, Lcom/kingroot/common/uilib/KBaseListView;->setEnabled(Z)V

    .line 767
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwn:Lcom/kingroot/kinguser/bjc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjc;->notifyDataSetChanged()V

    .line 768
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->e(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/kinguser/bjd$b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 769
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->e(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/kinguser/bjd$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjd$9;->bwo:Lcom/kingroot/kinguser/bji;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/bjd$b;->e(Lcom/kingroot/kinguser/bji;)V

    goto :goto_5

    :cond_7
    move-object v0, v3

    goto :goto_2

    :cond_8
    move v1, v3

    goto :goto_4
.end method
