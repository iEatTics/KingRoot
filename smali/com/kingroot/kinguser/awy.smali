.class public Lcom/kingroot/kinguser/awy;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awy;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/kingroot/kinguser/bep;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/awy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f0702b9

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/awy;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bep;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
