.class public Lcom/kingroot/kinguser/biu;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private anW:Lcom/kingroot/kinguser/ada;

.field private aoR:Landroid/widget/ImageView;

.field private final buD:I

.field private final buE:I

.field private buL:Landroid/widget/TextView;

.field private buM:Landroid/widget/TextView;

.field private buN:Landroid/widget/TextView;

.field private buO:Landroid/widget/TextView;

.field private buP:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

.field private mTitleView:Landroid/widget/TextView;

.field private zv:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, "#f53a5d"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/biu;->buD:I

    .line 31
    const-string v0, "#009688"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/biu;->buE:I

    .line 45
    return-void
.end method


# virtual methods
.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/kingroot/kinguser/biu;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    const v1, 0x7f0300fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/biu;->zv:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->zv:Landroid/view/View;

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/biu;->mContentView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->mContentView:Landroid/view/View;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;I)V

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->zv:Landroid/view/View;

    const v1, 0x7f0f011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/biu;->aoR:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->zv:Landroid/view/View;

    const v1, 0x7f0f011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/biu;->mTitleView:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->zv:Landroid/view/View;

    const v1, 0x7f0f011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/biu;->buL:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->zv:Landroid/view/View;

    const v1, 0x7f0f029b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/biu;->buM:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->zv:Landroid/view/View;

    const v1, 0x7f0f029e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/biu;->buN:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->zv:Landroid/view/View;

    const v1, 0x7f0f02a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/biu;->buO:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->zv:Landroid/view/View;

    return-object v0
.end method

.method protected oI()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->buP:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/kingroot/kinguser/biu;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    const-string v1, "cve_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/biu;->buP:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->buP:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/kingroot/kinguser/biu;->aoR:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const v0, 0x7f02010c

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kingroot/kinguser/biu;->buP:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    iget-object v2, v2, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/kingroot/kinguser/biu;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/kingroot/kinguser/biu;->buE:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->buL:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/biu;->buP:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->bur:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->buM:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/biu;->buP:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->buN:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/biu;->buP:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->bus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->buO:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/biu;->buP:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->buO:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/biu;->buP:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->buO:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_1
    return-void

    .line 86
    :cond_2
    const v0, 0x7f02010b

    goto :goto_0

    .line 88
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/biu;->buD:I

    goto :goto_1
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/biu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070448

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/biu;->anW:Lcom/kingroot/kinguser/ada;

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->anW:Lcom/kingroot/kinguser/ada;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ada;->getWholeView()Landroid/view/View;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/biu;->anW:Lcom/kingroot/kinguser/ada;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    array-length v1, v0

    if-lez v1, :cond_0

    .line 103
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    invoke-virtual {p0}, Lcom/kingroot/kinguser/biu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 109
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188e3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 110
    return-void
.end method
