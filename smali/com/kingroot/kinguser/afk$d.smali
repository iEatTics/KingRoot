.class public Lcom/kingroot/kinguser/afk$d;
.super Lcom/kingroot/kinguser/afk$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private ahN:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/afk$c;-><init>(Landroid/content/Context;)V

    .line 193
    iput-object p2, p0, Lcom/kingroot/kinguser/afk$d;->ahN:Landroid/view/View$OnClickListener;

    .line 194
    return-void
.end method


# virtual methods
.method protected b(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/afk$d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030110

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cS(I)Lcom/kingroot/kinguser/afk;
    .locals 1

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/afk$c;->cS(I)Lcom/kingroot/kinguser/afk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/kingroot/kinguser/afk$c;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItemId(I)J
    .locals 2

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/afk$c;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/afk$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected o(Landroid/view/View;)Lcom/kingroot/kinguser/afk$f;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Lcom/kingroot/kinguser/afk$e;

    iget-object v1, p0, Lcom/kingroot/kinguser/afk$d;->ahN:Landroid/view/View$OnClickListener;

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/afk$e;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, v0, Lcom/kingroot/kinguser/afk$e;->ahO:Landroid/widget/Button;

    invoke-static {v1}, Lcom/kingroot/kinguser/acz;->l(Landroid/view/View;)V

    .line 205
    return-object v0
.end method

.method public bridge synthetic setData(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/afk$c;->setData(Ljava/util/List;)V

    return-void
.end method
