.class public Lcom/kingroot/kinguser/yt;
.super Lcom/kingroot/kinguser/yp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/yp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected oY()Landroid/view/View;
    .locals 3

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yt;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030133

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected oZ()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yt;->getWholeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected pa()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
