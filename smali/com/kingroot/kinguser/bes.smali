.class public Lcom/kingroot/kinguser/bes;
.super Lcom/kingroot/kinguser/ada;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected oI()V
    .locals 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/kingroot/kinguser/ada;->oI()V

    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/bes;->abA:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    return-void
.end method
