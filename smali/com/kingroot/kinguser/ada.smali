.class public Lcom/kingroot/kinguser/ada;
.super Lcom/kingroot/kinguser/acw;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/acw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected oI()V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ada;->ck(I)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ada;->ar(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ada;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    invoke-virtual {p0, p0}, Lcom/kingroot/kinguser/ada;->c(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ada;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ada;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 37
    :cond_0
    return-void
.end method
