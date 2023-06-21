.class public Lcom/kingroot/kinguser/aoe;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aFc:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

.field private aFd:Ljava/util/Timer;

.field private aFe:Landroid/widget/ImageView;

.field private aFf:Landroid/widget/ImageView;

.field private aie:I

.field private mContainer:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppMarketBespokePopRecommendPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aoe;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFc:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 45
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFd:Ljava/util/Timer;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/aoe;->aie:I

    .line 97
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 225
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x3f8b851f    # 1.09f

    .line 231
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 232
    if-gtz v1, :cond_2

    .line 233
    const/high16 v1, 0x43a50000    # 330.0f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    .line 236
    :cond_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v3, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 237
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 238
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aoe;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoe;->close()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aoe;Landroid/graphics/Bitmap;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/aoe;->a(Landroid/graphics/Bitmap;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aoe;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/aoe;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFe:Landroid/widget/ImageView;

    return-object v0
.end method

.method private close()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFd:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 221
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aoe;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 222
    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/aoe;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFf:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/aoe;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFc:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/aoe;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/aoe;->aie:I

    return v0
.end method


# virtual methods
.method protected oG()Landroid/view/View;
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aoe;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 110
    const v0, 0x7f0f01f0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    const v0, 0x7f0f0005

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoe;->mContainer:Landroid/view/ViewGroup;

    .line 115
    const v0, 0x7f0f01ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFe:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0f01ee

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFf:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f0f00cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    new-instance v2, Lcom/kingroot/kinguser/aoe$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/aoe$1;-><init>(Lcom/kingroot/kinguser/aoe;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/aoe;->aFc:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    new-instance v3, Lcom/kingroot/kinguser/aoe$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aoe$2;-><init>(Lcom/kingroot/kinguser/aoe;)V

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 144
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/aoe;->aFc:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    new-instance v3, Lcom/kingroot/kinguser/aoe$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aoe$3;-><init>(Lcom/kingroot/kinguser/aoe;)V

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFc:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFf:Landroid/widget/ImageView;

    new-instance v2, Lcom/kingroot/kinguser/aoe$4;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/aoe$4;-><init>(Lcom/kingroot/kinguser/aoe;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_0
    :goto_0
    return-object v1

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFc:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFf:Landroid/widget/ImageView;

    new-instance v2, Lcom/kingroot/kinguser/aoe$5;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/aoe$5;-><init>(Lcom/kingroot/kinguser/aoe;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFc:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFf:Landroid/widget/ImageView;

    new-instance v2, Lcom/kingroot/kinguser/aoe$6;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/aoe$6;-><init>(Lcom/kingroot/kinguser/aoe;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oO()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aoe;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    const-string v0, "extra_splash_entity"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 58
    instance-of v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    if-eqz v2, :cond_0

    .line 59
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFc:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 63
    :cond_0
    const-string v0, "extra_scen"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aoe;->aie:I

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe;->aFc:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    if-nez v0, :cond_3

    .line 67
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aoe;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 72
    :goto_0
    iget v0, p0, Lcom/kingroot/kinguser/aoe;->aie:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1893d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 78
    :cond_2
    :goto_1
    return-void

    .line 69
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aoe;->aFc:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akl;->b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->at(J)V

    goto :goto_0

    .line 74
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/aoe;->aie:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1893b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 88
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStop()V

    .line 93
    return-void
.end method
