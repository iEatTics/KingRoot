.class public abstract Lcom/kingroot/kinguser/bez;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected blM:Lcom/kingroot/kinguser/bfc;

.field protected blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

.field protected blO:Landroid/view/View;

.field protected blP:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method protected ZC()Lcom/kingroot/kinguser/bfc;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/bez;->blM:Lcom/kingroot/kinguser/bfc;

    return-object v0
.end method

.method protected abstract ZD()I
.end method

.method protected abstract ZE()V
.end method

.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bez;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bez;->ZD()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bez;->mView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/bez;->mView:Landroid/view/View;

    const v1, 0x7f0f0344

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bez;->blO:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/bez;->mView:Landroid/view/View;

    const v1, 0x7f0f0345

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bez;->blP:Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bez;->ZE()V

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/bez;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method protected a(Lcom/kingroot/kinguser/bfc;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/kingroot/kinguser/bez;->blM:Lcom/kingroot/kinguser/bfc;

    .line 32
    return-void
.end method

.method protected a(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kingroot/kinguser/bez;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    .line 40
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected abstract onResume()V
.end method

.method protected abstract r(Ljava/lang/Object;)V
.end method

.method protected abstract s(Ljava/lang/Object;)V
.end method
