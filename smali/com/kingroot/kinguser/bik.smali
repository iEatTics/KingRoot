.class public Lcom/kingroot/kinguser/bik;
.super Lcom/kingroot/kinguser/bih;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aux$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bik$a;
    }
.end annotation


# instance fields
.field private ahP:Landroid/widget/ImageView;

.field private apa:Lcom/kingroot/kinguser/bgf;

.field private bay:Lcom/kingroot/kinguser/aks;

.field private brB:Landroid/widget/Button;

.field private brC:Landroid/widget/TextView;

.field private brD:Landroid/widget/TextView;

.field private brE:Landroid/widget/TextView;

.field private brF:Landroid/widget/TextView;

.field private brG:Landroid/os/CountDownTimer;

.field private brH:Z

.field private brI:Z

.field private brJ:Landroid/widget/TextView;

.field private brK:I

.field private brL:I

.field private brM:Landroid/view/View$OnClickListener;

.field private brN:Landroid/view/View$OnClickListener;

.field private brO:Landroid/view/View$OnClickListener;

.field private brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

.field private bru:Landroid/view/View;

.field private brv:Landroid/view/View;

.field private brx:Landroid/widget/Button;

.field private brz:Landroid/widget/Button;

.field private btz:Lcom/kingroot/kinguser/bik$a;

.field private mAppName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bih;-><init>(Landroid/content/Context;)V

    .line 66
    iput v0, p0, Lcom/kingroot/kinguser/bik;->brL:I

    .line 95
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bik;->brH:Z

    .line 97
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bik;->brI:Z

    .line 104
    new-instance v0, Lcom/kingroot/kinguser/bik$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bik$1;-><init>(Lcom/kingroot/kinguser/bik;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brM:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v0, Lcom/kingroot/kinguser/bik$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bik$2;-><init>(Lcom/kingroot/kinguser/bik;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brN:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lcom/kingroot/kinguser/bik$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bik$3;-><init>(Lcom/kingroot/kinguser/bik;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brO:Landroid/view/View$OnClickListener;

    .line 217
    return-void
.end method

.method private TT()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 764
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->apa:Lcom/kingroot/kinguser/bgf;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->apa:Lcom/kingroot/kinguser/bgf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgf;->cancel()V

    .line 766
    iput-object v1, p0, Lcom/kingroot/kinguser/bik;->apa:Lcom/kingroot/kinguser/bgf;

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brG:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brG:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 770
    iput-object v1, p0, Lcom/kingroot/kinguser/bik;->brG:Landroid/os/CountDownTimer;

    .line 772
    :cond_1
    return-void
.end method

.method private We()V
    .locals 1

    .prologue
    .line 557
    invoke-static {}, Lcom/kingroot/kinguser/aih;->xI()Lcom/kingroot/kinguser/aih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aih;->xJ()V

    .line 558
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bik;I)I
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/kingroot/kinguser/bik;->brL:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bik;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brx:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bik;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bik;->brI:Z

    return p1
.end method

.method private acL()V
    .locals 12

    .prologue
    const/4 v0, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    .line 561
    iget-object v1, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    if-nez v1, :cond_0

    .line 613
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bik;->bay:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Cp()V

    .line 568
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v4, 0x186c2

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 570
    iput-boolean v10, p0, Lcom/kingroot/kinguser/bik;->brH:Z

    .line 574
    iget-boolean v1, p0, Lcom/kingroot/kinguser/bik;->brI:Z

    if-eqz v1, :cond_1

    .line 576
    iget v1, p0, Lcom/kingroot/kinguser/bik;->brL:I

    packed-switch v1, :pswitch_data_0

    move v4, v0

    move-wide v0, v2

    .line 593
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v5

    iget-object v6, p0, Lcom/kingroot/kinguser/bik;->mAppName:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v7, v7, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v0, v1}, Lcom/kingroot/kinguser/bbt;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v4

    .line 598
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v1

    iget-object v4, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v4, v4, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-virtual {v1, v4, v11, v10}, Lcom/kingroot/kinguser/bbt;->doActionForCallingUid(IIZ)V

    .line 600
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v4, 0x7f0703b3

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f07027c

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 602
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/kingroot/kinguser/bik;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v5, v5, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/kingroot/kinguser/bbt;->rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    new-instance v1, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v6, v6, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/bik;->mAppName:Ljava/lang/String;

    const/16 v8, 0x64

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/model/RootMgrLogInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;II)V

    .line 609
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bbo;->addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V

    .line 612
    iget-object v1, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/kingroot/kinguser/bik;->brI:Z

    if-nez v2, :cond_2

    :goto_3
    invoke-static {v1, v0, v11, v10}, Lcom/kingroot/kinguser/ady;->b(Ljava/lang/String;IIZ)V

    goto/16 :goto_0

    :pswitch_0
    move v4, v0

    move-wide v0, v2

    .line 580
    goto/16 :goto_1

    .line 583
    :pswitch_1
    const-wide/32 v0, 0x15180

    move v4, v9

    .line 585
    goto/16 :goto_1

    .line 588
    :pswitch_2
    const-wide/16 v0, 0x384

    move v4, v10

    .line 589
    goto/16 :goto_1

    .line 595
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v1

    iget-object v4, p0, Lcom/kingroot/kinguser/bik;->mAppName:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v5, v5, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/kingroot/kinguser/bbt;->addAskRule(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_2

    :cond_2
    move v10, v11

    .line 612
    goto :goto_3

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private acM()V
    .locals 11

    .prologue
    const/4 v9, 0x3

    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    .line 616
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->bay:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cp()V

    .line 622
    iput-boolean v10, p0, Lcom/kingroot/kinguser/bik;->brH:Z

    .line 626
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bik;->brI:Z

    if-eqz v0, :cond_1

    .line 628
    iget v0, p0, Lcom/kingroot/kinguser/bik;->brL:I

    packed-switch v0, :pswitch_data_0

    move-wide v0, v2

    move v4, v9

    .line 645
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v5

    iget-object v6, p0, Lcom/kingroot/kinguser/bik;->mAppName:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v7, v7, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v0, v1}, Lcom/kingroot/kinguser/bbt;->addDenyRule(Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v4

    .line 650
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v1

    iget-object v4, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v4, v4, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-virtual {v1, v4, v10, v10}, Lcom/kingroot/kinguser/bbt;->doActionForCallingUid(IIZ)V

    .line 652
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v4, 0x7f0703b4

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f07027c

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 654
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/kingroot/kinguser/bik;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v5, v5, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/kingroot/kinguser/bbt;->rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    new-instance v1, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v6, v6, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/bik;->mAppName:Ljava/lang/String;

    const/16 v8, 0x64

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/model/RootMgrLogInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;II)V

    .line 661
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bbo;->addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V

    .line 664
    iget-object v1, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/kingroot/kinguser/bik;->brI:Z

    if-nez v1, :cond_2

    move v1, v10

    :goto_3
    invoke-static {v2, v0, v10, v1}, Lcom/kingroot/kinguser/ady;->b(Ljava/lang/String;IIZ)V

    goto/16 :goto_0

    :pswitch_0
    move-wide v0, v2

    move v4, v9

    .line 632
    goto/16 :goto_1

    .line 635
    :pswitch_1
    const-wide/32 v0, 0x15180

    .line 636
    const/4 v4, 0x2

    .line 637
    goto/16 :goto_1

    .line 640
    :pswitch_2
    const-wide/16 v0, 0x384

    move v4, v10

    .line 641
    goto/16 :goto_1

    .line 647
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bik;->mAppName:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v4, v4, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/kingroot/kinguser/bbt;->addAskRule(Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v9

    goto/16 :goto_2

    .line 664
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 628
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bik;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brz:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bik;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bik;->iU(I)V

    return-void
.end method

.method private bV(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 756
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bik;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070257

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 760
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/avn;->f(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bik;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bik;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bik;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brB:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bik;I)F
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bik;->getDimension(I)F

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bik;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brC:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bik;)Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bik;)Lcom/kingroot/kinguser/bgf;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->apa:Lcom/kingroot/kinguser/bgf;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bik;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kingroot/kinguser/bik;->TT()V

    return-void
.end method

.method private getDimension(I)F
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bik;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bik;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/bik;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kingroot/kinguser/bik;->acL()V

    return-void
.end method

.method static synthetic i(Lcom/kingroot/kinguser/bik;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kingroot/kinguser/bik;->acM()V

    return-void
.end method

.method private iU(I)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bik;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07027d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 178
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/kingroot/kinguser/bik;->brE:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/kingroot/kinguser/bik;->brE:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method static synthetic j(Lcom/kingroot/kinguser/bik;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/kingroot/kinguser/bik;->brK:I

    return v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bik$a;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/kingroot/kinguser/bik;->btz:Lcom/kingroot/kinguser/bik$a;

    .line 749
    return-void
.end method

.method public a(Ljava/lang/String;ZI)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 187
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bik;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    if-eqz p2, :cond_0

    iget-object v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    if-ltz p3, :cond_0

    const/16 v0, 0x64

    if-gt p3, v0, :cond_0

    .line 190
    new-instance v0, Lcom/kingroot/kinguser/bik$4;

    invoke-direct {v0, p0, p3}, Lcom/kingroot/kinguser/bik$4;-><init>(Lcom/kingroot/kinguser/bik;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 201
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/avv;->Sj()Lcom/kingroot/kinguser/avv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/avv;->di(Z)V

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/avm;->RK()Lcom/kingroot/kinguser/avm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/avm;->RP()V

    .line 205
    return-void
.end method

.method protected acQ()Landroid/view/View;
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03005c

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bik;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->mContentView:Landroid/view/View;

    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->btz:Lcom/kingroot/kinguser/bik$a;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->btz:Lcom/kingroot/kinguser/bik$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bik$a;->vA()V

    .line 686
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/kingroot/kinguser/bih;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public i(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 209
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 13

    .prologue
    const-wide/16 v6, -0x1

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 347
    invoke-super {p0}, Lcom/kingroot/kinguser/bih;->onAttachedToWindow()V

    .line 349
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bik;->dismiss()V

    .line 542
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->mAppName:Ljava/lang/String;

    .line 357
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x186c1

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 359
    iput-boolean v10, p0, Lcom/kingroot/kinguser/bik;->brH:Z

    .line 360
    iput-boolean v10, p0, Lcom/kingroot/kinguser/bik;->brI:Z

    .line 363
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/kingroot/kinguser/bbt;->setSuRequestPromptLive(Z)V

    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/auw;->jn(Ljava/lang/String;)I

    move-result v0

    .line 368
    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 369
    iput v10, p0, Lcom/kingroot/kinguser/bik;->brK:I

    .line 370
    const-wide/16 v2, 0x2710

    .line 379
    :goto_1
    const v0, 0x3000000a

    const-string v4, "wk_su"

    invoke-static {v2, v3, v0, v4, v10}, Lcom/kingroot/kinguser/zk;->a(JILjava/lang/String;Z)Landroid/os/PowerManager$WakeLock;

    .line 381
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brE:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRr:I

    if-nez v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v4, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRv:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v4, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRw:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v4, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRx:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_9

    .line 385
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/aux;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/kingroot/kinguser/aux;-><init>(Landroid/content/Context;)V

    .line 386
    iget-object v4, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v4, v4, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v4, p0}, Lcom/kingroot/kinguser/aux;->a(Ljava/lang/String;Lcom/kingroot/kinguser/aux$a;)V

    .line 393
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    const/16 v4, 0x7d0

    if-ne v0, v4, :cond_a

    .line 394
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v4, 0x7f070274

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->mAppName:Ljava/lang/String;

    .line 401
    :cond_3
    :goto_3
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v4, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v4, v4, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/zh;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 404
    :goto_4
    if-eqz v0, :cond_b

    .line 405
    iget-object v4, p0, Lcom/kingroot/kinguser/bik;->ahP:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    :goto_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brD:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kingroot/kinguser/bik;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->riskType:I

    invoke-static {v0}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brJ:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brJ:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f07027a

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v7, v7, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRu:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    :goto_6
    invoke-static {}, Lcom/kingroot/kinguser/avm;->RK()Lcom/kingroot/kinguser/avm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/avm;->RL()Ljava/util/HashMap;

    move-result-object v0

    .line 425
    iget-object v4, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v4, v4, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/avn;

    .line 426
    if-nez v0, :cond_d

    .line 427
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brF:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bik;->bV(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :goto_7
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brv:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brx:Landroid/widget/Button;

    const v4, 0x7f02024a

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 436
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brz:Landroid/widget/Button;

    const v4, 0x7f02024a

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 437
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brB:Landroid/widget/Button;

    const v4, 0x7f02020a

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 438
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brC:Landroid/widget/TextView;

    const v4, 0x7f07025b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 439
    const v0, 0x7f020092

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bik;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 440
    const v4, 0x7f0a00e9

    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/bik;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 441
    invoke-virtual {v0, v10, v10, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 442
    iget-object v4, p0, Lcom/kingroot/kinguser/bik;->brC:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 443
    iput v10, p0, Lcom/kingroot/kinguser/bik;->brL:I

    .line 445
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRr:I

    if-ne v0, v12, :cond_4

    .line 446
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->bru:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 449
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->acj:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bik$6;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bik$6;-><init>(Lcom/kingroot/kinguser/bik;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->aci:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bik$7;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bik$7;-><init>(Lcom/kingroot/kinguser/bik;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    new-instance v0, Lcom/kingroot/kinguser/bik$8;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bik$8;-><init>(Lcom/kingroot/kinguser/bik;JJ)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->apa:Lcom/kingroot/kinguser/bgf;

    .line 509
    new-instance v0, Lcom/kingroot/kinguser/bik$9;

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bik$9;-><init>(Lcom/kingroot/kinguser/bik;JJ)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brG:Landroid/os/CountDownTimer;

    .line 528
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brG:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_5

    .line 529
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brG:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 532
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->apa:Lcom/kingroot/kinguser/bgf;

    if-eqz v0, :cond_6

    .line 533
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->apa:Lcom/kingroot/kinguser/bgf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgf;->abz()Lcom/kingroot/kinguser/bgf;

    .line 536
    :cond_6
    invoke-direct {p0}, Lcom/kingroot/kinguser/bik;->We()V

    .line 539
    invoke-static {}, Lcom/kingroot/kinguser/aeb;->tV()Lcom/kingroot/kinguser/aeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeb;->tW()V

    .line 541
    invoke-static {p0}, Lcom/kingroot/kinguser/acp;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 371
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->riskType:I

    invoke-static {v0}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 372
    iput v10, p0, Lcom/kingroot/kinguser/bik;->brK:I

    .line 373
    const-wide/16 v2, 0x3e8

    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->bay:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BR()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    goto/16 :goto_1

    .line 375
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->bay:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BS()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bik;->brK:I

    .line 376
    const-wide/16 v2, 0x3e8

    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->bay:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BR()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    goto/16 :goto_1

    .line 388
    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v4, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRv:J

    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v6, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRw:J

    add-long/2addr v4, v6

    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v6, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRx:J

    add-long/2addr v4, v6

    .line 389
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v6, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRv:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    div-long v4, v6, v4

    long-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bik;->iU(I)V

    goto/16 :goto_2

    .line 395
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    const/16 v4, 0x2710

    if-ge v0, v4, :cond_3

    .line 396
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v4, 0x7f07027e

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->mAppName:Ljava/lang/String;

    goto/16 :goto_3

    .line 402
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_4

    .line 408
    :cond_b
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->ahP:Landroid/widget/ImageView;

    const v4, 0x7f02010f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 420
    :cond_c
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brJ:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 429
    :cond_d
    iget-object v4, p0, Lcom/kingroot/kinguser/bik;->brF:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/kingroot/kinguser/avn;->aTQ:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bik;->bV(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 229
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bih;->onCreate(Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/bik;->setCanceledOnTouchOutside(Z)V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->aci:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0055

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->aci:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070258

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->acj:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0053

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->acj:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070253

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->bay:Lcom/kingroot/kinguser/aks;

    .line 241
    const v0, 0x7f0f0153

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070259

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brD:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f0f0158

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brE:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f0f0155

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brF:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->ahP:Landroid/widget/ImageView;

    .line 253
    const v0, 0x7f0f0156

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->bru:Landroid/view/View;

    .line 254
    const v0, 0x7f0f0159

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brv:Landroid/view/View;

    .line 255
    const v0, 0x7f0f015a

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 256
    const v0, 0x7f0f015b

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brx:Landroid/widget/Button;

    .line 257
    const v0, 0x7f0f015c

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 258
    const v0, 0x7f0f015d

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brz:Landroid/widget/Button;

    .line 259
    const v0, 0x7f0f015e

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 260
    const v0, 0x7f0f015f

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brB:Landroid/widget/Button;

    .line 261
    const v0, 0x7f0f0157

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brC:Landroid/widget/TextView;

    .line 263
    const v0, 0x7f0f0154

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bik;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brJ:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brM:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brx:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kingroot/kinguser/bik;->brM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brN:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brz:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kingroot/kinguser/bik;->brN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brO:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brB:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kingroot/kinguser/bik;->brO:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->bru:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/bik$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bik$5;-><init>(Lcom/kingroot/kinguser/bik;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f020188

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_0

    .line 309
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0a00f1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 310
    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bik;->brJ:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 314
    invoke-static {p0}, Lcom/kingroot/kinguser/acp;->add(Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bik;->brH:Z

    if-nez v0, :cond_0

    .line 329
    iget v0, p0, Lcom/kingroot/kinguser/bik;->brK:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 330
    invoke-direct {p0}, Lcom/kingroot/kinguser/bik;->acL()V

    .line 336
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 337
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbt;->setSuRequestPromptLive(Z)V

    .line 338
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->triggerSuRequestPrompt()V

    .line 340
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bik;->dismiss()V

    .line 341
    invoke-super {p0}, Lcom/kingroot/kinguser/bih;->onDetachedFromWindow()V

    .line 342
    return-void

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bik;->acM()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 694
    packed-switch p1, :pswitch_data_0

    .line 705
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 699
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/bih;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 694
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 710
    packed-switch p1, :pswitch_data_0

    .line 721
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 715
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/bih;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 710
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/kingroot/kinguser/bik;->TT()V

    .line 550
    const-string v0, "wk_su"

    invoke-static {v0}, Lcom/kingroot/kinguser/zk;->dw(Ljava/lang/String;)V

    .line 552
    invoke-super {p0}, Lcom/kingroot/kinguser/bih;->onStop()V

    .line 553
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/kingroot/kinguser/bik;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    if-eqz v0, :cond_0

    .line 671
    :try_start_0
    invoke-super {p0}, Lcom/kingroot/kinguser/bih;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    goto :goto_0
.end method
