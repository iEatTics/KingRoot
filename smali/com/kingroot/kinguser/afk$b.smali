.class public Lcom/kingroot/kinguser/afk$b;
.super Lcom/kingroot/kinguser/afk$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/afk$c;-><init>(Landroid/content/Context;)V

    .line 155
    return-void
.end method


# virtual methods
.method protected b(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/afk$b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300af

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cS(I)Lcom/kingroot/kinguser/afk;
    .locals 1

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/afk$c;->cS(I)Lcom/kingroot/kinguser/afk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/kingroot/kinguser/afk$c;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItemId(I)J
    .locals 2

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/afk$c;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/afk$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected o(Landroid/view/View;)Lcom/kingroot/kinguser/afk$f;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/kingroot/kinguser/afk$a;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/afk$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic setData(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/afk$c;->setData(Ljava/util/List;)V

    return-void
.end method
