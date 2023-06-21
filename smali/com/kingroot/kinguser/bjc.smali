.class public final Lcom/kingroot/kinguser/bjc;
.super Lcom/kingroot/kinguser/wr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bjc$a;
    }
.end annotation


# instance fields
.field private bvC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bvD:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private bvE:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingroot/kinguser/wr;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjc;->bvC:Ljava/util/HashMap;

    .line 48
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjc;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/bjc;->bvD:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 50
    iput-boolean p2, p0, Lcom/kingroot/kinguser/bjc;->bvE:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjc;->mItems:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjc;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/bjc;->bvD:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/kingroot/kinguser/bji;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/bjc;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/bjc;->bvC:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjc;->notifyDataSetChanged()V

    .line 87
    return-void
.end method

.method public bX(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    if-nez p1, :cond_1

    .line 146
    :cond_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bjc;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/bjc;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/bjc;->bvC:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 143
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/kingroot/kinguser/bjc;->bvC:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/bjc;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bjc;->jl(I)Lcom/kingroot/kinguser/bji;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bjc;->jl(I)Lcom/kingroot/kinguser/bji;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    const-wide/16 v0, -0x1

    .line 78
    :goto_0
    return-wide v0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bjc;->bvC:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 75
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 78
    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 102
    if-nez p2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/kingroot/kinguser/bjc;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bjc;->bvE:Z

    if-eqz v0, :cond_1

    const v0, 0x7f030111

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 106
    new-instance v0, Lcom/kingroot/kinguser/bjc$a;

    iget-boolean v1, p0, Lcom/kingroot/kinguser/bjc;->bvE:Z

    invoke-direct {v0, p2, v1}, Lcom/kingroot/kinguser/bjc$a;-><init>(Landroid/view/View;Z)V

    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v0, v0, Lcom/kingroot/kinguser/bjc$a;->bvH:Landroid/widget/CompoundButton;

    invoke-static {v0}, Lcom/kingroot/kinguser/acz;->l(Landroid/view/View;)V

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjc$a;

    .line 112
    iget-object v1, v0, Lcom/kingroot/kinguser/bjc$a;->bvH:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bjc;->jl(I)Lcom/kingroot/kinguser/bji;

    move-result-object v1

    .line 114
    if-nez v1, :cond_2

    .line 132
    :goto_1
    return-object p2

    .line 104
    :cond_1
    const v0, 0x7f0300ae

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v1, p2}, Lcom/kingroot/kinguser/bji;->L(Landroid/view/View;)V

    .line 119
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjc;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bjc$a;->a(Lcom/kingroot/kinguser/bji;Lcom/kingroot/kinguser/acr;)V

    .line 121
    iget-object v0, v0, Lcom/kingroot/kinguser/bjc$a;->bvH:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/kingroot/kinguser/bjc$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjc$1;-><init>(Lcom/kingroot/kinguser/bjc;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1
.end method

.method public jl(I)Lcom/kingroot/kinguser/bji;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjc;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bjc;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bji;

    goto :goto_0
.end method
