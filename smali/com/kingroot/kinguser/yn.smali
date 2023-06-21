.class public abstract Lcom/kingroot/kinguser/yn;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/yn$b;,
        Lcom/kingroot/kinguser/yn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/kingroot/kinguser/ym;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field protected Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

.field protected Vr:Lcom/kingroot/kinguser/yn$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/yn$a",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field protected Vs:I

.field protected mHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yn;->oW()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/yn;->Vs:I

    .line 40
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected abstract getDivider()Landroid/graphics/drawable/Drawable;
.end method

.method public i(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->i(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vr:Lcom/kingroot/kinguser/yn$a;

    if-eqz v0, :cond_0

    .line 103
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 104
    check-cast v0, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kingroot/kinguser/yn$b;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vr:Lcom/kingroot/kinguser/yn$a;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/yn$a;->k(Ljava/util/ArrayList;)V

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vr:Lcom/kingroot/kinguser/yn$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yn$a;->notifyDataSetChanged()V

    .line 111
    :cond_0
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    new-instance v0, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/yn;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/yn;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/yn;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->b(Lcom/kingroot/kinguser/acr;)V

    .line 60
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yn;->oU()Lcom/kingroot/kinguser/yn$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/yn;->Vr:Lcom/kingroot/kinguser/yn$a;

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/yn;->Vr:Lcom/kingroot/kinguser/yn$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget v0, p0, Lcom/kingroot/kinguser/yn;->Vs:I

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/yn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/yn;->Vs:I

    iget-object v3, p0, Lcom/kingroot/kinguser/yn;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/yn;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, v4}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setCacheColorHint(I)V

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    const v1, 0x7f0e0069

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setBackgroundResource(I)V

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    return-object v0
.end method

.method protected abstract oU()Lcom/kingroot/kinguser/yn$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kingroot/kinguser/yn$a",
            "<TDataType;>;"
        }
    .end annotation
.end method

.method protected oV()Lcom/kingroot/kinguser/yn$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kingroot/kinguser/yn$a",
            "<TDataType;>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vr:Lcom/kingroot/kinguser/yn$a;

    return-object v0
.end method

.method protected abstract oW()I
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, p2}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->bX(I)V

    .line 93
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/yn;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    return-void
.end method
