.class public Lcom/kingroot/kinguser/bjt;
.super Lcom/kingroot/kinguser/bij;
.source "SourceFile"


# instance fields
.field private aci:Landroid/widget/Button;

.field private acj:Landroid/widget/Button;

.field private ack:Landroid/widget/ImageView;

.field private acm:Lcom/kingroot/kinguser/adf$b;

.field private acn:Lcom/kingroot/kinguser/adf$b;

.field private aco:Lcom/kingroot/kinguser/adf$a;

.field private aif:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0d0069

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/bij;-><init>(Landroid/content/Context;I)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjt;)Lcom/kingroot/kinguser/adf$b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->acm:Lcom/kingroot/kinguser/adf$b;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bjt;)Lcom/kingroot/kinguser/adf$b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->acn:Lcom/kingroot/kinguser/adf$b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/adf$b;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kingroot/kinguser/bjt;->acn:Lcom/kingroot/kinguser/adf$b;

    .line 86
    return-void
.end method

.method aeA()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->aci:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->acj:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->ack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->ack:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public iY(I)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->acj:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->aci:Landroid/widget/Button;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjt;->aeA()V

    .line 139
    return-void
.end method

.method public lK(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->aci:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method public lL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->acj:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public ma(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->aif:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->aif:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->aif:Landroid/widget/TextView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->aif:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bij;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjt;->requestWindowFeature(I)Z

    .line 47
    const v0, 0x7f03013c

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjt;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjt;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 49
    const v0, 0x7f0f00d1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjt;->mTitleView:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0f0091

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjt;->aif:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjt;->aci:Landroid/widget/Button;

    .line 52
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjt;->acj:Landroid/widget/Button;

    .line 53
    const v0, 0x7f0f0143

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjt;->ack:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0f0349

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjt;->mIconView:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->aci:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bjt$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjt$1;-><init>(Lcom/kingroot/kinguser/bjt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->acj:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bjt$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjt$2;-><init>(Lcom/kingroot/kinguser/bjt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 152
    const/4 v0, 0x1

    .line 153
    iget-object v1, p0, Lcom/kingroot/kinguser/bjt;->aco:Lcom/kingroot/kinguser/adf$a;

    if-eqz v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->aco:Lcom/kingroot/kinguser/adf$a;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/adf$a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 156
    :cond_0
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjt;->dismiss()V

    .line 160
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/bij;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 167
    :try_start_0
    invoke-super {p0}, Lcom/kingroot/kinguser/bij;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method
