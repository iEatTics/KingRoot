.class public final Lcom/kingroot/kinguser/bcl;
.super Lcom/kingroot/kinguser/py;
.source "SourceFile"


# instance fields
.field private bgA:Landroid/widget/TextView;

.field private bgB:Landroid/widget/ImageView;

.field private bgC:Landroid/widget/ImageView;

.field private bgD:Landroid/widget/ImageView;

.field private bgE:Landroid/widget/ImageView;

.field private bgF:Landroid/widget/ImageView;

.field private bgG:Landroid/widget/ImageView;

.field private bgH:Landroid/widget/LinearLayout;

.field private bgI:Landroid/view/animation/Animation;

.field private bgy:Landroid/widget/TextView;

.field private bgz:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/py;-><init>(Landroid/content/Context;)V

    .line 39
    const v0, 0x7f040013

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgI:Landroid/view/animation/Animation;

    .line 40
    return-void
.end method


# virtual methods
.method public Xs()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcl;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040014

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgH:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    return-void
.end method

.method public ae(II)V
    .locals 6

    .prologue
    .line 103
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lt p1, p2, :cond_0

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgA:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0702a6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgA:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0702a8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected gy()Landroid/view/View;
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 47
    const v1, 0x7f0f01c6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgB:Landroid/widget/ImageView;

    .line 48
    const v1, 0x7f0f01c7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgC:Landroid/widget/ImageView;

    .line 49
    const v1, 0x7f0f01cb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgD:Landroid/widget/ImageView;

    .line 50
    const v1, 0x7f0f01cc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgE:Landroid/widget/ImageView;

    .line 51
    const v1, 0x7f0f01d0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgF:Landroid/widget/ImageView;

    .line 52
    const v1, 0x7f0f01d1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgG:Landroid/widget/ImageView;

    .line 53
    const v1, 0x7f0f01c8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgy:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0f01cd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgz:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f0f01d2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgA:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0f01c3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgH:Landroid/widget/LinearLayout;

    .line 57
    return-object v0
.end method

.method public ia(I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 67
    if-nez p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgC:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgB:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgB:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgI:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 72
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgE:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgD:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgD:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgI:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 77
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgG:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgF:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgF:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bcl;->bgI:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    :cond_2
    return-void
.end method

.method public ib(I)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 85
    if-nez p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgC:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgB:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 90
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgE:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgD:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgD:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 95
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgG:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgF:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgF:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 100
    :cond_2
    return-void
.end method

.method public kx(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgy:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public ky(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgz:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public kz(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/bcl;->bgA:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method
