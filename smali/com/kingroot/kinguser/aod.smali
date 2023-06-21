.class public Lcom/kingroot/kinguser/aod;
.super Lcom/kingroot/kinguser/anl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anl;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected oI()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/kingroot/kinguser/anl;->oI()V

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/aod;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->i(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/anl;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const-string v0, "ku_pageNewGamePage"

    iput-object v0, p0, Lcom/kingroot/kinguser/aod;->TAG:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704ce

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aod;->aBy:Ljava/lang/String;

    .line 26
    const v0, 0x4c7bc1

    iput v0, p0, Lcom/kingroot/kinguser/aod;->aBz:I

    .line 27
    return-void
.end method
