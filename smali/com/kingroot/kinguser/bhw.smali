.class public Lcom/kingroot/kinguser/bhw;
.super Lcom/kingroot/kinguser/bij;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bhw$a;
    }
.end annotation


# instance fields
.field private aci:Landroid/widget/Button;

.field private acj:Landroid/widget/Button;

.field private bsa:Landroid/widget/LinearLayout;

.field private bsb:Lcom/kingroot/kinguser/bhw$a;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0d0069

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/bij;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p1, p0, Lcom/kingroot/kinguser/bhw;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bhw;)Lcom/kingroot/kinguser/bhw$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/bhw;->bsb:Lcom/kingroot/kinguser/bhw$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bhw$a;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kingroot/kinguser/bhw;->bsb:Lcom/kingroot/kinguser/bhw$a;

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bij;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030075

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bhw;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bhw;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 34
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bhw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bhw;->aci:Landroid/widget/Button;

    .line 35
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bhw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bhw;->acj:Landroid/widget/Button;

    .line 36
    const v0, 0x7f0f0191

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bhw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/bhw;->bsa:Landroid/widget/LinearLayout;

    .line 37
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bhw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    const v1, 0x7f0703c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/bhw;->bsa:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kingroot/kinguser/bhw$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bhw$1;-><init>(Lcom/kingroot/kinguser/bhw;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/bhw;->aci:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/bhw;->aci:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bhw$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bhw$2;-><init>(Lcom/kingroot/kinguser/bhw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bhw;->aci:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703c5

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/bhw;->acj:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/bij;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 89
    :try_start_0
    invoke-super {p0}, Lcom/kingroot/kinguser/bij;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method
