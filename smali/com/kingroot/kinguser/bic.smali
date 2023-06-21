.class public Lcom/kingroot/kinguser/bic;
.super Lcom/kingroot/kinguser/bid;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bic$a;
    }
.end annotation


# instance fields
.field private bsZ:Landroid/widget/CheckBox;

.field private bta:Lcom/kingroot/kinguser/bic$a;

.field private btb:Lcom/kingroot/kinguser/bic$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bic;)Lcom/kingroot/kinguser/bic$a;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/kingroot/kinguser/bic;->bta:Lcom/kingroot/kinguser/bic$a;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bic;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/kingroot/kinguser/bic;->bsZ:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bic;)Lcom/kingroot/kinguser/bic$a;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/kingroot/kinguser/bic;->btb:Lcom/kingroot/kinguser/bic$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bic$a;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kingroot/kinguser/bic;->bta:Lcom/kingroot/kinguser/bic$a;

    .line 62
    return-void
.end method

.method protected acQ()Landroid/view/View;
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/bic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03004d

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bic;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bic;->mContentView:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bic;->mContentView:Landroid/view/View;

    const v1, 0x7f0f0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bic;->alC:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/bic;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public b(Lcom/kingroot/kinguser/bic$a;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kingroot/kinguser/bic;->btb:Lcom/kingroot/kinguser/bic$a;

    .line 66
    return-void
.end method

.method public ee(Z)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/bic;->bsZ:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    return-void
.end method

.method public lJ(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/bic;->bsZ:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bid;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0f0150

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/kingroot/kinguser/bic;->bsZ:Landroid/widget/CheckBox;

    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/bic;->aci:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bic$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bic$1;-><init>(Lcom/kingroot/kinguser/bic;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/bic;->acj:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bic$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bic$2;-><init>(Lcom/kingroot/kinguser/bic;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/bid;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
