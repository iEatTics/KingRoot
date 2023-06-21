.class public Lcom/kingroot/kinguser/bfb;
.super Lcom/kingroot/kinguser/bfa;
.source "SourceFile"


# instance fields
.field protected blU:Landroid/widget/ImageView;

.field protected blV:Landroid/widget/ProgressBar;

.field private blW:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfa;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bfb;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bfb;->blW:Z

    return v0
.end method


# virtual methods
.method protected ZD()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f030139

    return v0
.end method

.method protected ZE()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 51
    invoke-super {p0}, Lcom/kingroot/kinguser/bfa;->ZE()V

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb;->mView:Landroid/view/View;

    const v1, 0x7f0f020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfb;->blU:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb;->mView:Landroid/view/View;

    const v1, 0x7f0f0341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfb;->blV:Landroid/widget/ProgressBar;

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb;->blR:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb;->blV:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb;->blQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb;->blU:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb;->mView:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/bfb$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfb$1;-><init>(Lcom/kingroot/kinguser/bfb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method public dL(Z)Lcom/kingroot/kinguser/bfb;
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bfb;->blW:Z

    .line 39
    return-object p0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method protected s(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bfa;->s(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bfb;->r(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb;->ahP:Landroid/widget/ImageView;

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb;->ahP:Landroid/widget/ImageView;

    const v1, 0x7f0201d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb;->ahP:Landroid/widget/ImageView;

    const v1, 0x7f02015a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
