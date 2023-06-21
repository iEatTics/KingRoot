.class public Lcom/kingroot/kinguser/bil;
.super Lcom/kingroot/kinguser/bif;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bif;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected acQ()Landroid/view/View;
    .locals 4

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/bil;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03013d

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bil;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bil;->mContentView:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bil;->mContentView:Landroid/view/View;

    const v1, 0x7f0f0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bil;->alC:Landroid/widget/TextView;

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/bil;->mContentView:Landroid/view/View;

    return-object v0
.end method
