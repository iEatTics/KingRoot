.class public abstract Lcom/kingroot/kinguser/bie;
.super Lcom/kingroot/kinguser/bij;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bie$b;,
        Lcom/kingroot/kinguser/bie$a;
    }
.end annotation


# instance fields
.field protected btk:Landroid/widget/FrameLayout;

.field protected btl:Landroid/widget/FrameLayout;

.field protected btm:Landroid/widget/FrameLayout;

.field protected btn:Lcom/kingroot/kinguser/bie$a;

.field protected bto:Lcom/kingroot/kinguser/bie$b;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0069

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/bij;-><init>(Landroid/content/Context;I)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bie;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bie$a;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kingroot/kinguser/bie;->btn:Lcom/kingroot/kinguser/bie$a;

    .line 96
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bie$b;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/kingroot/kinguser/bie;->bto:Lcom/kingroot/kinguser/bie$b;

    .line 100
    return-void
.end method

.method protected abstract acQ()Landroid/view/View;
.end method

.method protected abstract acS()Landroid/view/View;
.end method

.method protected abstract acU()Landroid/view/View;
.end method

.method public al(II)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/bie;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/bie;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/kingroot/kinguser/bie;->s(Landroid/view/View;I)V

    .line 50
    return-void
.end method

.method public bI(I)Landroid/widget/FrameLayout;
    .locals 3

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bie;->btk:Landroid/widget/FrameLayout;

    .line 87
    :goto_0
    return-object v0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bie;->btl:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bie;->btm:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bij;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bie;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bie;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 69
    const v0, 0x7f0f0095

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/bie;->btk:Landroid/widget/FrameLayout;

    .line 70
    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/bie;->btl:Landroid/widget/FrameLayout;

    .line 71
    const v0, 0x7f0f011e

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bie;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/bie;->btm:Landroid/widget/FrameLayout;

    .line 74
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bie;->acS()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bie;->s(Landroid/view/View;I)V

    .line 75
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bie;->acQ()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bie;->s(Landroid/view/View;I)V

    .line 76
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bie;->acU()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bie;->s(Landroid/view/View;I)V

    .line 77
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 105
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/kingroot/kinguser/bie;->btn:Lcom/kingroot/kinguser/bie$a;

    if-eqz v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/bie;->btn:Lcom/kingroot/kinguser/bie$a;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/bie$a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 110
    :cond_0
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bie;->dismiss()V

    .line 119
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/bij;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bie;->bto:Lcom/kingroot/kinguser/bie$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/bie;->bto:Lcom/kingroot/kinguser/bie$b;

    invoke-interface {v1, p1, p2}, Lcom/kingroot/kinguser/bie$b;->b(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public s(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/bie;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 59
    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/bie;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 61
    :cond_0
    return-void
.end method
