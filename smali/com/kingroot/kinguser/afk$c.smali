.class abstract Lcom/kingroot/kinguser/afk$c;
.super Lcom/kingroot/kinguser/wr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# instance fields
.field protected ahM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/kingroot/kinguser/afk;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/kingroot/kinguser/wr;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/kingroot/kinguser/afk$c;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/afk$c;->ahM:Ljava/util/List;

    .line 112
    return-void
.end method


# virtual methods
.method protected abstract b(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public cS(I)Lcom/kingroot/kinguser/afk;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/afk$c;->ahM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afk;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/afk$c;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/afk$c;->cS(I)Lcom/kingroot/kinguser/afk;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    invoke-virtual {p0, p1, p3}, Lcom/kingroot/kinguser/afk$c;->b(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 137
    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/afk$c;->o(Landroid/view/View;)Lcom/kingroot/kinguser/afk$f;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afk$f;

    .line 142
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/afk$c;->cS(I)Lcom/kingroot/kinguser/afk;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/afk$c;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/afk$f;->a(Lcom/kingroot/kinguser/afk;Lcom/kingroot/kinguser/acr;)V

    .line 144
    return-object p2
.end method

.method protected abstract o(Landroid/view/View;)Lcom/kingroot/kinguser/afk$f;
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/kingroot/kinguser/afk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    iput-object p1, p0, Lcom/kingroot/kinguser/afk$c;->ahM:Ljava/util/List;

    .line 126
    return-void
.end method
