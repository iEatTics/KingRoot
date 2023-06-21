.class public abstract Lcom/kingroot/kinguser/yl;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# instance fields
.field protected Vd:Landroid/widget/ListView;

.field protected Ve:Landroid/widget/BaseAdapter;

.field private Vf:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/yl;->Vf:I

    .line 34
    return-void
.end method

.method private a(Landroid/widget/ListView;)V
    .locals 2

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yl;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/yl;->Ve:Landroid/widget/BaseAdapter;

    .line 74
    instance-of v0, p1, Lcom/kingroot/common/uilib/KBaseListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Ve:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/kingroot/kinguser/wr;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 76
    check-cast v0, Lcom/kingroot/common/uilib/KBaseListView;

    .line 77
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yl;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/KBaseListView;->b(Lcom/kingroot/kinguser/acr;)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Ve:Landroid/widget/BaseAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    const v0, 0x7f0f000b

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setId(I)V

    .line 81
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yl;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 83
    const v0, 0x7f0e0069

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private oH()Landroid/widget/ListView;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Lcom/kingroot/common/uilib/AnimationListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/yl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/yl;->Vf:I

    invoke-direct {v0, v1, v2}, Lcom/kingroot/common/uilib/AnimationListView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/yl;->a(Landroid/widget/ListView;)V

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected abstract getAdapter()Landroid/widget/BaseAdapter;
.end method

.method protected getDivider()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 125
    const-wide/32 v0, 0x7f0201c1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/yl;->Y(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Ve:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Ve:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 55
    :cond_0
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/yl;->oH()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yl;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 94
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 95
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    .line 110
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/yl;->a(Landroid/widget/ListView;)V

    .line 112
    :cond_1
    return-void

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yl;->oJ()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    instance-of v0, v0, Lcom/kingroot/common/uilib/AnimationListView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/yl;->Vf:I

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    check-cast v0, Lcom/kingroot/common/uilib/AnimationListView;

    iget v1, p0, Lcom/kingroot/kinguser/yl;->Vf:I

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/AnimationListView;->setAnimationType(I)V

    goto :goto_0
.end method

.method protected abstract oJ()I
.end method

.method protected setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/yl;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    :cond_0
    return-void
.end method
