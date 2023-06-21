.class Lcom/kingroot/kinguser/axr$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axr;->cW(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbr:Lcom/kingroot/kinguser/axr;

.field final synthetic bbv:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axr;Z)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/kingroot/kinguser/axr$9;->bbr:Lcom/kingroot/kinguser/axr;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/axr$9;->bbv:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$9;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->g(Lcom/kingroot/kinguser/axr;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/kingroot/kinguser/axr$9;->bbr:Lcom/kingroot/kinguser/axr;

    iget-object v0, p0, Lcom/kingroot/kinguser/axr$9;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axr;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f02c7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/axr;->a(Lcom/kingroot/kinguser/axr;Landroid/view/View;)Landroid/view/View;

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$9;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->g(Lcom/kingroot/kinguser/axr;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0702cc

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axr$9;->bbv:Z

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$9;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->g(Lcom/kingroot/kinguser/axr;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$9;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->g(Lcom/kingroot/kinguser/axr;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
