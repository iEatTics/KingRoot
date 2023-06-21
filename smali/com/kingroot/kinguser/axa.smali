.class public Lcom/kingroot/kinguser/axa;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# instance fields
.field private aWA:Lcom/kingroot/kinguser/bia;

.field private aWB:Lcom/kingroot/kinguser/bhz;

.field private aWC:Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;

.field private aWD:Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;

.field private aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

.field private aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

.field private aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

.field private aWH:Lcom/kingroot/kinguser/ber;

.field private aWI:Landroid/widget/TextView;

.field private aWJ:Landroid/widget/TextView;

.field private aWK:Landroid/widget/TextView;

.field private aWL:J

.field private aWM:J

.field private aWN:J

.field private aWO:Lcom/kingroot/kinguser/afm;

.field private aWP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ai/AntiInjectLogModel;",
            ">;"
        }
    .end annotation
.end field

.field private aWQ:Lcom/kingroot/kinguser/bif;

.field private aWR:I

.field private aWS:Z

.field private aWT:Z

.field private aWU:Landroid/widget/Button;

.field private aWV:Landroid/widget/Button;

.field private aWW:Landroid/widget/Button;

.field private aWX:Landroid/widget/TextView;

.field private aWY:Landroid/os/Handler;

.field private aWZ:Lcom/kingroot/kinguser/bed;

.field private aWo:Landroid/view/ViewGroup;

.field private aWp:Landroid/view/ViewGroup;

.field private aWq:Landroid/view/ViewGroup;

.field private aWr:Landroid/view/ViewGroup;

.field private aWs:Landroid/widget/ImageView;

.field private aWt:Landroid/widget/ImageView;

.field private aWu:Landroid/widget/ImageView;

.field private aWv:Landroid/widget/ImageView;

.field private aWw:Landroid/widget/ImageView;

.field private aWx:Landroid/widget/ImageView;

.field private aWy:Lcom/kingroot/kinguser/bhr;

.field private aWz:Lcom/kingroot/kinguser/bhy;

.field private aXa:Lcom/kingroot/kinguser/bed;

.field private aXb:Landroid/view/View$OnClickListener;

.field private abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

.field private mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 134
    iput-object v1, p0, Lcom/kingroot/kinguser/axa;->aWP:Ljava/util/List;

    .line 135
    iput-object v1, p0, Lcom/kingroot/kinguser/axa;->aWQ:Lcom/kingroot/kinguser/bif;

    .line 136
    iput v0, p0, Lcom/kingroot/kinguser/axa;->aWR:I

    .line 137
    iput-boolean v0, p0, Lcom/kingroot/kinguser/axa;->aWS:Z

    .line 138
    iput-boolean v0, p0, Lcom/kingroot/kinguser/axa;->aWT:Z

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWY:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/axa$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axa$1;-><init>(Lcom/kingroot/kinguser/axa;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWZ:Lcom/kingroot/kinguser/bed;

    .line 203
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/axa$5;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axa$5;-><init>(Lcom/kingroot/kinguser/axa;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aXa:Lcom/kingroot/kinguser/bed;

    .line 224
    new-instance v0, Lcom/kingroot/kinguser/axa$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axa$6;-><init>(Lcom/kingroot/kinguser/axa;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aXb:Landroid/view/View$OnClickListener;

    .line 235
    new-instance v0, Lcom/kingroot/kinguser/bhr;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/bhr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWy:Lcom/kingroot/kinguser/bhr;

    .line 236
    new-instance v0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    .line 237
    new-instance v0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    .line 238
    new-instance v0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    .line 239
    return-void
.end method

.method private TB()V
    .locals 8

    .prologue
    const v7, 0x7f0f0214

    const v6, 0x7f0f0213

    const v5, 0x7f0f0148

    const v4, 0x7f0f00d1

    .line 573
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 574
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0294

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 575
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 576
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingroot/kinguser/axa;->aWI:Landroid/widget/TextView;

    .line 577
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/axa;->aWs:Landroid/widget/ImageView;

    .line 578
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/axa;->aWv:Landroid/widget/ImageView;

    .line 579
    const v1, 0x7f0702cd

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWI:Landroid/widget/TextView;

    const v1, 0x7f0702ce

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWs:Landroid/widget/ImageView;

    const v1, 0x7f020068

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0295

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 584
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 585
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingroot/kinguser/axa;->aWJ:Landroid/widget/TextView;

    .line 586
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/axa;->aWt:Landroid/widget/ImageView;

    .line 587
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/axa;->aWw:Landroid/widget/ImageView;

    .line 588
    const v1, 0x7f0702cf

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWJ:Landroid/widget/TextView;

    const v1, 0x7f0702d0

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWt:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 593
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 594
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingroot/kinguser/axa;->aWK:Landroid/widget/TextView;

    .line 595
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/axa;->aWu:Landroid/widget/ImageView;

    .line 596
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/axa;->aWx:Landroid/widget/ImageView;

    .line 597
    const v1, 0x7f0702d1

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWK:Landroid/widget/TextView;

    const v1, 0x7f0702d2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWu:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    return-void
.end method

.method private TC()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 986
    new-instance v0, Lcom/kingroot/kinguser/bif;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bif;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWQ:Lcom/kingroot/kinguser/bif;

    .line 987
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWQ:Lcom/kingroot/kinguser/bif;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bif;->show()V

    .line 988
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWQ:Lcom/kingroot/kinguser/bif;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->setTitleText(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWQ:Lcom/kingroot/kinguser/bif;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->d(Ljava/lang/CharSequence;)V

    .line 990
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWQ:Lcom/kingroot/kinguser/bif;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->iZ(I)V

    .line 991
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWQ:Lcom/kingroot/kinguser/bif;

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/bif;->ef(Z)V

    .line 993
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v4, Lcom/kingroot/kinguser/axa$4;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axa$4;-><init>(Lcom/kingroot/kinguser/axa;)V

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 1027
    return-void
.end method

.method private TD()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1031
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18775

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/axa;->aWM:J

    .line 1034
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    .line 1039
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWC:Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;

    .line 1040
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWC:Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->setViewConfig(Landroid/view/View;)V

    .line 1041
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWC:Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 1043
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWy:Lcom/kingroot/kinguser/bhr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhr;->acI()Lcom/kingroot/kinguser/bia;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWA:Lcom/kingroot/kinguser/bia;

    .line 1044
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWA:Lcom/kingroot/kinguser/bia;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bia;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    .line 1045
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 1047
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1049
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWH:Lcom/kingroot/kinguser/ber;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ber;->dI(Z)V

    .line 1050
    iput-boolean v2, p0, Lcom/kingroot/kinguser/axa;->aWT:Z

    .line 1052
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWZ:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 1053
    return-void
.end method

.method private TE()V
    .locals 4

    .prologue
    .line 1057
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWO:Lcom/kingroot/kinguser/afm;

    if-nez v0, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/afm;->aJ(Landroid/content/Context;)Lcom/kingroot/kinguser/afm;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWO:Lcom/kingroot/kinguser/afm;

    .line 1061
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    const-string v2, "com.tencent.mobileqq"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1067
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->jX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1068
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1072
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1076
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ahl;->addProtectedPackages(Ljava/util/List;)V

    .line 1078
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1079
    iget-object v2, p0, Lcom/kingroot/kinguser/axa;->aWO:Lcom/kingroot/kinguser/afm;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/afm;->fg(Ljava/lang/String;)V

    goto :goto_1

    .line 1082
    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/axa;I)I
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/kingroot/kinguser/axa;->aWR:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axa;Lcom/kingroot/common/utils/ui/ImageViewDot;)Lcom/kingroot/common/utils/ui/ImageViewDot;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kingroot/kinguser/axa;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axa;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kingroot/kinguser/axa;->aWP:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v0, -0x2

    .line 809
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 811
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 812
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 815
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 818
    :cond_0
    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 824
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 825
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 826
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 827
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 820
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/axa;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/kingroot/kinguser/axa;->TE()V

    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/axa;Z)Z
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/kingroot/kinguser/axa;->aWS:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axa;)Ljava/util/List;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWP:Ljava/util/List;

    return-object v0
.end method

.method private b(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    const/4 v0, -0x2

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41400000    # 12.0f

    .line 831
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 834
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/bgk;->c(Landroid/content/Context;F)I

    move-result v0

    .line 835
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/kingroot/kinguser/bgk;->c(Landroid/content/Context;F)I

    move-result v2

    .line 836
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/bgk;->c(Landroid/content/Context;F)I

    move-result v3

    .line 837
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/bgk;->c(Landroid/content/Context;F)I

    move-result v4

    .line 839
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 842
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 845
    :cond_0
    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v0

    .line 847
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private bc(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 905
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 906
    new-instance v1, Lcom/kingroot/kinguser/bid;

    invoke-direct {v1, p1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 907
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bid;->show()V

    .line 908
    const v2, 0x7f070065

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 909
    const v2, 0x7f070063

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 910
    const v2, 0x7f070062

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 911
    const v2, 0x7f070064

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 912
    new-instance v0, Lcom/kingroot/kinguser/axa$9;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axa$9;-><init>(Lcom/kingroot/kinguser/axa;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 918
    new-instance v0, Lcom/kingroot/kinguser/axa$10;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axa$10;-><init>(Lcom/kingroot/kinguser/axa;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 924
    return-void
.end method

.method private bd(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 928
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 929
    new-instance v1, Lcom/kingroot/kinguser/bid;

    invoke-direct {v1, p1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 930
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bid;->show()V

    .line 931
    const v2, 0x7f070069

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 932
    const v2, 0x7f07006a

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 933
    const v2, 0x7f070067

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 934
    const v2, 0x7f070068

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 936
    new-instance v0, Lcom/kingroot/kinguser/axa$11;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axa$11;-><init>(Lcom/kingroot/kinguser/axa;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 943
    new-instance v0, Lcom/kingroot/kinguser/axa$12;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axa$12;-><init>(Lcom/kingroot/kinguser/axa;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 950
    return-void
.end method

.method private be(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 954
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 955
    new-instance v1, Lcom/kingroot/kinguser/bid;

    invoke-direct {v1, p1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 956
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bid;->show()V

    .line 957
    const v2, 0x7f070069

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 958
    const v2, 0x7f070066

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 959
    const v2, 0x7f070067

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 960
    const v2, 0x7f070068

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 961
    new-instance v0, Lcom/kingroot/kinguser/axa$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axa$2;-><init>(Lcom/kingroot/kinguser/axa;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 974
    new-instance v0, Lcom/kingroot/kinguser/axa$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axa$3;-><init>(Lcom/kingroot/kinguser/axa;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 981
    return-void
.end method

.method private c(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 853
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axa;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/kingroot/kinguser/axa;->TD()V

    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axa;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private dp(Z)V
    .locals 6

    .prologue
    .line 508
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/axa$8;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/axa$8;-><init>(Lcom/kingroot/kinguser/axa;Z)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 570
    return-void
.end method

.method private dq(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 605
    if-eqz p1, :cond_2

    .line 606
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWC:Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWC:Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 648
    :cond_1
    :goto_0
    return-void

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWC:Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWC:Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWD:Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;

    if-eqz v0, :cond_4

    .line 621
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWD:Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 623
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 624
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 627
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    if-eqz v0, :cond_6

    .line 628
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWp:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 630
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    if-eqz v0, :cond_7

    .line 631
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWq:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 633
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    if-eqz v0, :cond_8

    .line 634
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWr:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 637
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 638
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWw:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 640
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWw:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWx:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 642
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWx:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWs:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWt:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 646
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWu:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private dr(Z)V
    .locals 5

    .prologue
    const v4, 0x7f02006f

    const/16 v3, 0x64

    const/4 v2, 0x4

    .line 756
    if-eqz p1, :cond_1

    .line 757
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->setCurPercentage(I)V

    .line 761
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWp:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->b(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 762
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWv:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 764
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->setCurPercentage(I)V

    .line 765
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWq:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->b(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 766
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWw:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->setCurPercentage(I)V

    .line 769
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWr:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->b(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 770
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWx:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 772
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWs:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 773
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWt:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWu:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f020065

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWD:Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWD:Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 780
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 784
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 785
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWw:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 787
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWw:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWx:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 789
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWx:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    if-eqz v0, :cond_4

    .line 793
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWp:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 795
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    if-eqz v0, :cond_5

    .line 796
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWq:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 798
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    if-eqz v0, :cond_6

    .line 799
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWr:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 802
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWs:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 803
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWt:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWu:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axa;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/kingroot/kinguser/axa;->TC()V

    return-void
.end method

.method private hp(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 653
    .line 654
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 678
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/bfn;->aaj()Lcom/kingroot/kinguser/bfn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bfn;->aal()Ljava/util/Set;

    move-result-object v2

    .line 680
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/aks;->et(I)V

    .line 681
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 682
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->be(Landroid/content/Context;)V

    .line 694
    :goto_1
    return-void

    .line 657
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DF()I

    move-result v0

    .line 658
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->eu(I)V

    .line 659
    add-int/lit8 v0, v0, 0x1

    .line 661
    goto :goto_0

    .line 665
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->getRebootStat()Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_0

    .line 667
    iget v0, v0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    goto :goto_0

    .line 686
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 692
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->bc(Landroid/content/Context;)V

    goto :goto_1

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hq(I)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 698
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWA:Lcom/kingroot/kinguser/bia;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bia;->setPercentage(I)V

    .line 699
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWC:Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWC:Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->setCurPercent(I)V

    .line 703
    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0x22

    if-gt p1, v0, :cond_2

    .line 704
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->setCurPercentage(I)V

    .line 705
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWp:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->b(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 706
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->acR()V

    .line 707
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->setVisibility(I)V

    .line 708
    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWs:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 710
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWv:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWv:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f02006f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 712
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 713
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 714
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 715
    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 716
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 717
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWE:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0, v7}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->setVisibility(I)V

    .line 752
    :cond_1
    :goto_0
    return-void

    .line 719
    :cond_2
    const/16 v0, 0x42

    if-gt p1, v0, :cond_3

    .line 720
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->setCurPercentage(I)V

    .line 721
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWq:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->b(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 722
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->acR()V

    .line 723
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->setVisibility(I)V

    .line 724
    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWt:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 726
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWw:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWw:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f02006f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 728
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 729
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 730
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 731
    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWw:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 732
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWw:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 733
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWF:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0, v7}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->setVisibility(I)V

    goto :goto_0

    .line 735
    :cond_3
    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->setCurPercentage(I)V

    .line 737
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWr:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->b(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 738
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->acR()V

    .line 739
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->setVisibility(I)V

    .line 740
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWu:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f020065

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWx:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWx:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f02006f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 744
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 745
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 746
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 747
    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWx:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 748
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWx:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 749
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWG:Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;

    invoke-virtual {v0, v7}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private hr(I)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x64

    const/16 v6, 0x29

    const/16 v5, 0x15

    const/16 v4, 0xb

    const/16 v3, 0x47

    .line 882
    iget-boolean v2, p0, Lcom/kingroot/kinguser/axa;->aWS:Z

    if-eqz v2, :cond_1

    .line 883
    const-wide/16 v0, 0x1e

    .line 900
    :cond_0
    :goto_0
    return-wide v0

    .line 886
    :cond_1
    if-lez p1, :cond_2

    if-lt p1, v4, :cond_0

    .line 888
    :cond_2
    if-lt p1, v4, :cond_3

    if-ge p1, v5, :cond_3

    .line 889
    const-wide/16 v0, 0x1f4

    goto :goto_0

    .line 890
    :cond_3
    if-lt p1, v5, :cond_4

    if-ge p1, v6, :cond_4

    .line 891
    const-wide/16 v0, 0x5dc

    goto :goto_0

    .line 892
    :cond_4
    if-lt p1, v6, :cond_5

    if-ge p1, v3, :cond_5

    .line 893
    const-wide/16 v0, 0xc8

    goto :goto_0

    .line 894
    :cond_5
    if-lt p1, v3, :cond_6

    const/16 v2, 0x51

    if-ge p1, v2, :cond_6

    .line 895
    const-wide/16 v0, 0xbb8

    goto :goto_0

    .line 896
    :cond_6
    if-lt p1, v3, :cond_7

    const/16 v2, 0x64

    if-le p1, v2, :cond_0

    .line 900
    :cond_7
    const-wide/16 v0, 0x32

    goto :goto_0
.end method

.method private jX(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1086
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 1088
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    const/4 v0, 0x1

    .line 1091
    :goto_0
    return v0

    .line 1090
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 340
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 342
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 505
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 344
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWH:Lcom/kingroot/kinguser/ber;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ber;->dI(Z)V

    .line 345
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWH:Lcom/kingroot/kinguser/ber;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ber;->dJ(Z)V

    .line 346
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axa;->aWT:Z

    .line 349
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axa;->aWS:Z

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->dq(Z)V

    .line 352
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWy:Lcom/kingroot/kinguser/bhr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhr;->acH()Lcom/kingroot/kinguser/bhy;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWz:Lcom/kingroot/kinguser/bhy;

    .line 353
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWz:Lcom/kingroot/kinguser/bhy;

    iget-object v2, p0, Lcom/kingroot/kinguser/axa;->aXb:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bhy;->d(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWz:Lcom/kingroot/kinguser/bhy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhy;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    .line 355
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/kingroot/kinguser/axa;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 357
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 358
    if-eqz v0, :cond_1

    .line 360
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->hp(I)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-static {}, Lcom/kingroot/kinguser/bhq;->acE()Lcom/kingroot/kinguser/bhq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bhq;->iR(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setShowDot(Z)V

    goto :goto_0

    .line 367
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingroot/kinguser/axa;->aWM:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/axa;->aWN:J

    .line 370
    iget v0, p0, Lcom/kingroot/kinguser/axa;->aWR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/axa;->aWR:I

    .line 372
    iget v0, p0, Lcom/kingroot/kinguser/axa;->aWR:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->hr(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/axa;->aWL:J

    .line 375
    iget-wide v2, p0, Lcom/kingroot/kinguser/axa;->aWN:J

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 377
    iput v1, p0, Lcom/kingroot/kinguser/axa;->aWR:I

    .line 378
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axa;->aWS:Z

    .line 379
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/aks;->bL(Z)V

    .line 380
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 381
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 382
    iput v1, v0, Landroid/os/Message;->what:I

    .line 383
    const-string v1, "from"

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 385
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 390
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/axa;->aWR:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->hq(I)V

    .line 392
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 393
    iput v6, v0, Landroid/os/Message;->what:I

    .line 394
    iget v1, p0, Lcom/kingroot/kinguser/axa;->aWR:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    .line 395
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axa;->aXa:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 396
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 398
    :cond_3
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingroot/kinguser/axa;->aWL:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 403
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0077

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 404
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axa;->aWT:Z

    .line 405
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWH:Lcom/kingroot/kinguser/ber;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ber;->dI(Z)V

    .line 406
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWH:Lcom/kingroot/kinguser/ber;

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/ber;->dJ(Z)V

    .line 409
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axa;->aWS:Z

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->dq(Z)V

    .line 412
    new-instance v0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWD:Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;

    .line 413
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWD:Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;

    iget-object v2, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/kingroot/kinguser/axa;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWy:Lcom/kingroot/kinguser/bhr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhr;->acJ()Lcom/kingroot/kinguser/bhz;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWB:Lcom/kingroot/kinguser/bhz;

    .line 415
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWB:Lcom/kingroot/kinguser/bhz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhz;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/kingroot/kinguser/axa;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 418
    invoke-static {}, Lcom/kingroot/kinguser/bfn;->aaj()Lcom/kingroot/kinguser/bfn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfn;->aal()Ljava/util/Set;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 421
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/aks;->et(I)V

    .line 422
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->bd(Landroid/content/Context;)V

    .line 423
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 427
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/aks;->et(I)V

    .line 428
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 430
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-static {}, Lcom/kingroot/kinguser/bhq;->acE()Lcom/kingroot/kinguser/bhq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bhq;->iR(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setShowDot(Z)V

    goto/16 :goto_0

    .line 445
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 446
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 450
    :goto_1
    if-eqz v0, :cond_5

    .line 451
    iput-boolean v6, p0, Lcom/kingroot/kinguser/axa;->aWS:Z

    .line 452
    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWH:Lcom/kingroot/kinguser/ber;

    invoke-virtual {v1, v6}, Lcom/kingroot/kinguser/ber;->dJ(Z)V

    .line 454
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->dr(Z)V

    .line 457
    new-instance v0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWD:Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;

    .line 458
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWD:Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 460
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWy:Lcom/kingroot/kinguser/bhr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhr;->acJ()Lcom/kingroot/kinguser/bhz;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWB:Lcom/kingroot/kinguser/bhz;

    .line 461
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWB:Lcom/kingroot/kinguser/bhz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhz;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    .line 462
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 464
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 466
    :cond_5
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axa;->aWS:Z

    .line 467
    iget-object v2, p0, Lcom/kingroot/kinguser/axa;->aWH:Lcom/kingroot/kinguser/ber;

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/ber;->dJ(Z)V

    .line 468
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->dr(Z)V

    .line 470
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWy:Lcom/kingroot/kinguser/bhr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhr;->acH()Lcom/kingroot/kinguser/bhy;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWz:Lcom/kingroot/kinguser/bhy;

    .line 471
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWz:Lcom/kingroot/kinguser/bhy;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aXb:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bhy;->d(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWz:Lcom/kingroot/kinguser/bhy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhy;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    .line 473
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/axa;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_0

    .line 480
    :pswitch_5
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWQ:Lcom/kingroot/kinguser/bif;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWQ:Lcom/kingroot/kinguser/bif;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bif;->dismiss()V

    goto/16 :goto_0

    .line 490
    :pswitch_6
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->bc(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 494
    :pswitch_7
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->be(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 499
    :pswitch_8
    invoke-direct {p0}, Lcom/kingroot/kinguser/axa;->TD()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_1

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected oG()Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 316
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 317
    const v1, 0x7f0300f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 318
    const v0, 0x7f0f028f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    .line 321
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWo:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0014

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 322
    const v0, 0x7f0f0294

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWp:Landroid/view/ViewGroup;

    .line 323
    const v0, 0x7f0f0295

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWq:Landroid/view/ViewGroup;

    .line 324
    const v0, 0x7f0f0296

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWr:Landroid/view/ViewGroup;

    .line 326
    const v0, 0x7f0f0290

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWU:Landroid/widget/Button;

    .line 327
    const v0, 0x7f0f0291

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWV:Landroid/widget/Button;

    .line 328
    const v0, 0x7f0f0292

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWW:Landroid/widget/Button;

    .line 329
    const v0, 0x7f0f0293

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWX:Landroid/widget/TextView;

    .line 330
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWU:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWV:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWW:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWX:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    return-object v1
.end method

.method protected oI()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 262
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_0

    .line 264
    const-string v2, "AntiInjectPage.is_auto_open"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 266
    :cond_0
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axa;->dp(Z)V

    .line 267
    invoke-direct {p0}, Lcom/kingroot/kinguser/axa;->TB()V

    .line 268
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 243
    new-instance v0, Lcom/kingroot/kinguser/axa$7;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 244
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070054

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/axa$7;-><init>(Lcom/kingroot/kinguser/axa;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axa;->aWH:Lcom/kingroot/kinguser/ber;

    .line 254
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWH:Lcom/kingroot/kinguser/ber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ber;->ar(Z)V

    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWH:Lcom/kingroot/kinguser/ber;

    return-object v0
.end method

.method protected onBackPressed()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axa;->aWT:Z

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 273
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->vd()V

    .line 284
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 285
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bN(Z)V

    .line 287
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 299
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 300
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 301
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-static {}, Lcom/kingroot/kinguser/bhq;->acE()Lcom/kingroot/kinguser/bhq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bhq;->iR(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setShowDot(Z)V

    .line 303
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStop()V

    .line 279
    return-void
.end method

.method public vd()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWQ:Lcom/kingroot/kinguser/bif;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWQ:Lcom/kingroot/kinguser/bif;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bif;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/axa;->aWQ:Lcom/kingroot/kinguser/bif;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bif;->dismiss()V

    .line 295
    :cond_0
    return-void
.end method
