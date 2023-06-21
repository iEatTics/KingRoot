.class public abstract Lcom/kingroot/kinguser/ys;
.super Lcom/kingroot/kinguser/yl;
.source "SourceFile"


# instance fields
.field private VL:Landroid/widget/ProgressBar;

.field private VM:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/yl;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ys;->VM:Z

    .line 25
    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ys;->VL:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/ys;->VL:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/ys;->Vd:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/ys;->Vd:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yl;->i(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 38
    invoke-super {p0}, Lcom/kingroot/kinguser/yl;->oG()Landroid/view/View;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ys;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    .line 43
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ys;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ys;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ys;->pd()I

    move-result v2

    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/ys;->VL:Landroid/widget/ProgressBar;

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/ys;->VL:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54
    iget-object v2, p0, Lcom/kingroot/kinguser/ys;->VL:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 61
    :cond_0
    return-object v0
.end method

.method protected oI()V
    .locals 5

    .prologue
    .line 66
    invoke-super {p0}, Lcom/kingroot/kinguser/yl;->oI()V

    .line 68
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ys;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ys;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ys;->pd()I

    move-result v2

    invoke-virtual {v1}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    .line 73
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/ys;->VL:Landroid/widget/ProgressBar;

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/ys;->VL:Landroid/widget/ProgressBar;

    .line 77
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    invoke-virtual {v1}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ys;->VL:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ys;->Vd:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/ys;->Vd:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 86
    :cond_1
    return-void
.end method

.method protected abstract pd()I
.end method
