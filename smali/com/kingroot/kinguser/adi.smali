.class public Lcom/kingroot/kinguser/adi;
.super Landroid/app/ProgressDialog;
.source "SourceFile"


# instance fields
.field protected Dc:Ljava/lang/String;

.field protected acx:Landroid/widget/ImageView;

.field protected acy:Landroid/widget/TextView;

.field protected acz:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/kingroot/kinguser/adi;->mContext:Landroid/content/Context;

    .line 41
    const v0, 0x7f040013

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/adi;->acz:Landroid/view/animation/Animation;

    .line 42
    return-void
.end method


# virtual methods
.method public cp(I)V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/adi;->Dc:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/kingroot/kinguser/adi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 137
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/ProgressDialog;->onAttachedToWindow()V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/adi;->acx:Landroid/widget/ImageView;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/adi;->acx:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/adi;->acz:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/adi;->Dc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/adi;->acy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/adi;->Dc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030083

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adi;->setContentView(I)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adi;->setCanceledOnTouchOutside(Z)V

    .line 55
    const v0, 0x7f0f0180

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/adi;->acy:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0f00db

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/adi;->acx:Landroid/widget/ImageView;

    .line 57
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/kingroot/kinguser/adi;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :try_start_0
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method
