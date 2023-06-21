.class public Lcom/kingroot/kinguser/any;
.super Lcom/kingroot/kinguser/ann;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ann;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected oI()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/kingroot/kinguser/ann;->oI()V

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/any;->aBf:Lcom/kingroot/common/uilib/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/NestedScrollView;->i(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ann;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const-string v0, "ku_pageDownloadTabPage"

    sput-object v0, Lcom/kingroot/kinguser/any;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/kingroot/kinguser/ann;->onResume()V

    .line 29
    return-void
.end method
