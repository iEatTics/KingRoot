.class public Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aux$a;


# instance fields
.field private ahP:Landroid/widget/ImageView;

.field private apa:Lcom/kingroot/kinguser/bgf;

.field private bay:Lcom/kingroot/kinguser/aks;

.field private brA:Landroid/view/View;

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

.field private brs:Landroid/widget/Button;

.field private brt:Landroid/widget/Button;

.field private bru:Landroid/view/View;

.field private brv:Landroid/view/View;

.field private brw:Landroid/view/View;

.field private brx:Landroid/widget/Button;

.field private bry:Landroid/view/View;

.field private brz:Landroid/widget/Button;

.field private mAppName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    iput-boolean v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brH:Z

    .line 88
    iput-boolean v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brI:Z

    .line 96
    iput v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brL:I

    .line 98
    new-instance v0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$1;-><init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brM:Landroid/view/View$OnClickListener;

    .line 122
    new-instance v0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;-><init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brN:Landroid/view/View$OnClickListener;

    .line 146
    new-instance v0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;-><init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brO:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private TT()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 663
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->apa:Lcom/kingroot/kinguser/bgf;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->apa:Lcom/kingroot/kinguser/bgf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgf;->cancel()V

    .line 665
    iput-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->apa:Lcom/kingroot/kinguser/bgf;

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brG:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brG:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 669
    iput-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brG:Landroid/os/CountDownTimer;

    .line 671
    :cond_1
    return-void
.end method

.method private We()V
    .locals 1

    .prologue
    .line 511
    invoke-static {}, Lcom/kingroot/kinguser/aih;->xI()Lcom/kingroot/kinguser/aih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aih;->xJ()V

    .line 512
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brL:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brx:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brI:Z

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

    .line 515
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    if-nez v1, :cond_0

    .line 567
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bay:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Cp()V

    .line 522
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v4, 0x186c2

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 524
    iput-boolean v10, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brH:Z

    .line 528
    iget-boolean v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brI:Z

    if-eqz v1, :cond_1

    .line 530
    iget v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brL:I

    packed-switch v1, :pswitch_data_0

    move v4, v0

    move-wide v0, v2

    .line 547
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v5

    iget-object v6, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->mAppName:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v7, v7, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v0, v1}, Lcom/kingroot/kinguser/bbt;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v4

    .line 552
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v1

    iget-object v4, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v4, v4, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-virtual {v1, v4, v11, v10}, Lcom/kingroot/kinguser/bbt;->doActionForCallingUid(IIZ)V

    .line 554
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v4, 0x7f0703b3

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f07027c

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v5, v5, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/kingroot/kinguser/bbt;->rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    new-instance v1, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v6, v6, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->mAppName:Ljava/lang/String;

    const/16 v8, 0x64

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/model/RootMgrLogInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;II)V

    .line 563
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bbo;->addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V

    .line 566
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brI:Z

    if-nez v2, :cond_2

    :goto_3
    invoke-static {v1, v0, v11, v10}, Lcom/kingroot/kinguser/ady;->b(Ljava/lang/String;IIZ)V

    goto/16 :goto_0

    :pswitch_0
    move v4, v0

    move-wide v0, v2

    .line 534
    goto/16 :goto_1

    .line 537
    :pswitch_1
    const-wide/32 v0, 0x15180

    move v4, v9

    .line 539
    goto/16 :goto_1

    .line 542
    :pswitch_2
    const-wide/16 v0, 0x384

    move v4, v10

    .line 543
    goto/16 :goto_1

    .line 549
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v1

    iget-object v4, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->mAppName:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v5, v5, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/kingroot/kinguser/bbt;->addAskRule(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_2

    :cond_2
    move v10, v11

    .line 566
    goto :goto_3

    .line 530
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

    .line 570
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bay:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cp()V

    .line 576
    iput-boolean v10, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brH:Z

    .line 580
    iget-boolean v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brI:Z

    if-eqz v0, :cond_1

    .line 582
    iget v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brL:I

    packed-switch v0, :pswitch_data_0

    move-wide v0, v2

    move v4, v9

    .line 599
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v5

    iget-object v6, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->mAppName:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v7, v7, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v0, v1}, Lcom/kingroot/kinguser/bbt;->addDenyRule(Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v4

    .line 604
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v1

    iget-object v4, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v4, v4, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-virtual {v1, v4, v10, v10}, Lcom/kingroot/kinguser/bbt;->doActionForCallingUid(IIZ)V

    .line 606
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v4, 0x7f0703b4

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f07027c

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 608
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v5, v5, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/kingroot/kinguser/bbt;->rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    new-instance v1, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v6, v6, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->mAppName:Ljava/lang/String;

    const/16 v8, 0x64

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/model/RootMgrLogInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;II)V

    .line 615
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bbo;->addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V

    .line 618
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brI:Z

    if-nez v1, :cond_2

    move v1, v10

    :goto_3
    invoke-static {v2, v0, v10, v1}, Lcom/kingroot/kinguser/ady;->b(Ljava/lang/String;IIZ)V

    goto/16 :goto_0

    :pswitch_0
    move-wide v0, v2

    move v4, v9

    .line 586
    goto/16 :goto_1

    .line 589
    :pswitch_1
    const-wide/32 v0, 0x15180

    .line 590
    const/4 v4, 0x2

    .line 591
    goto/16 :goto_1

    .line 594
    :pswitch_2
    const-wide/16 v0, 0x384

    move v4, v10

    .line 595
    goto/16 :goto_1

    .line 601
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->mAppName:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v4, v4, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/kingroot/kinguser/bbt;->addAskRule(Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v9

    goto/16 :goto_2

    .line 618
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->iT(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brz:Landroid/widget/Button;

    return-object v0
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
    .line 655
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 656
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070257

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 659
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/avn;->f(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)F
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->getDimension(I)F

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brB:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brC:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->iU(I)V

    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Lcom/kingroot/kinguser/bgf;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->apa:Lcom/kingroot/kinguser/bgf;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->TT()V

    return-void
.end method

.method private getDimension(I)F
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->acL()V

    return-void
.end method

.method static synthetic i(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->acM()V

    return-void
.end method

.method private iT(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private iU(I)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 625
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07027d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 624
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brE:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brE:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    return-void
.end method

.method static synthetic j(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brK:I

    return v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brs:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brt:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ZI)V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 634
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    if-eqz p2, :cond_0

    iget-object v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    if-ltz p3, :cond_0

    const/16 v0, 0x64

    if-gt p3, v0, :cond_0

    .line 637
    new-instance v0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$9;

    invoke-direct {v0, p0, p3}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$9;-><init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 648
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/avv;->Sj()Lcom/kingroot/kinguser/avv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/avv;->di(Z)V

    .line 651
    invoke-static {}, Lcom/kingroot/kinguser/avm;->RK()Lcom/kingroot/kinguser/avm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/avm;->RP()V

    .line 652
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 305
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

    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->finish()V

    .line 507
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->mAppName:Ljava/lang/String;

    .line 324
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x186c1

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 326
    iput-boolean v10, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brH:Z

    .line 327
    iput-boolean v10, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brI:Z

    .line 330
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/kingroot/kinguser/bbt;->setSuRequestPromptLive(Z)V

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/auw;->jn(Ljava/lang/String;)I

    move-result v0

    .line 335
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 336
    iput v10, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brK:I

    .line 337
    const-wide/16 v2, 0x2710

    .line 347
    :goto_1
    const v0, 0x3000000a

    const-string v4, "wk_su"

    invoke-static {v2, v3, v0, v4, v10}, Lcom/kingroot/kinguser/zk;->a(JILjava/lang/String;Z)Landroid/os/PowerManager$WakeLock;

    .line 351
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brE:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRr:I

    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v4, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRv:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v4, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRw:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v4, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRx:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    .line 355
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/aux;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/kingroot/kinguser/aux;-><init>(Landroid/content/Context;)V

    .line 356
    iget-object v4, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v4, v4, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v4, p0}, Lcom/kingroot/kinguser/aux;->a(Ljava/lang/String;Lcom/kingroot/kinguser/aux$a;)V

    .line 363
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    const/16 v4, 0x7d0

    if-ne v0, v4, :cond_9

    .line 364
    const v0, 0x7f070274

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->mAppName:Ljava/lang/String;

    .line 371
    :cond_3
    :goto_3
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v4, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v4, v4, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/zh;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 373
    :goto_4
    if-eqz v0, :cond_a

    .line 374
    iget-object v4, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->ahP:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    :goto_5
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brD:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->riskType:I

    invoke-static {v0}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 384
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brJ:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brJ:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f07027a

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v7, v7, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRu:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :goto_6
    invoke-static {}, Lcom/kingroot/kinguser/avm;->RK()Lcom/kingroot/kinguser/avm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/avm;->RL()Ljava/util/HashMap;

    move-result-object v0

    .line 393
    iget-object v4, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v4, v4, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/avn;

    .line 394
    if-nez v0, :cond_c

    .line 395
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brF:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bV(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_7
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brv:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brx:Landroid/widget/Button;

    const v4, 0x7f02024a

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 403
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brz:Landroid/widget/Button;

    const v4, 0x7f02024a

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 404
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brB:Landroid/widget/Button;

    const v4, 0x7f02020a

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 405
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brC:Landroid/widget/TextView;

    const v4, 0x7f07025b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 406
    const v0, 0x7f020092

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->iT(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 407
    const v4, 0x7f0a00e9

    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 408
    invoke-virtual {v0, v10, v10, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 409
    iget-object v4, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brC:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 410
    iput v10, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brL:I

    .line 413
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRr:I

    if-ne v0, v12, :cond_4

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bru:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brs:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$5;-><init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brt:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$6;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$6;-><init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    new-instance v0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;-><init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;JJ)V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->apa:Lcom/kingroot/kinguser/bgf;

    .line 480
    new-instance v0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$8;

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$8;-><init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;JJ)V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brG:Landroid/os/CountDownTimer;

    .line 495
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brG:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 497
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->apa:Lcom/kingroot/kinguser/bgf;

    if-eqz v0, :cond_5

    .line 498
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->apa:Lcom/kingroot/kinguser/bgf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgf;->abz()Lcom/kingroot/kinguser/bgf;

    .line 501
    :cond_5
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->We()V

    .line 504
    invoke-static {}, Lcom/kingroot/kinguser/aeb;->tV()Lcom/kingroot/kinguser/aeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeb;->tW()V

    .line 506
    invoke-static {p0}, Lcom/kingroot/kinguser/acp;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 338
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->riskType:I

    invoke-static {v0}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 339
    iput v10, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brK:I

    .line 340
    const-wide/16 v2, 0x3e8

    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bay:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BR()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    goto/16 :goto_1

    .line 342
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bay:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BS()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brK:I

    .line 343
    const-wide/16 v2, 0x3e8

    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bay:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BR()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    goto/16 :goto_1

    .line 358
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v4, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRv:J

    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v6, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRw:J

    add-long/2addr v4, v6

    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v6, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRx:J

    add-long/2addr v4, v6

    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-wide v6, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRv:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    div-long v4, v6, v4

    long-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->iU(I)V

    goto/16 :goto_2

    .line 365
    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    const/16 v4, 0x2710

    if-ge v0, v4, :cond_3

    .line 366
    const v0, 0x7f07027e

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->mAppName:Ljava/lang/String;

    goto/16 :goto_3

    .line 372
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_4

    .line 376
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->ahP:Landroid/widget/ImageView;

    const v4, 0x7f02010f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 388
    :cond_b
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brJ:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 397
    :cond_c
    iget-object v4, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brF:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/kingroot/kinguser/avn;->aTQ:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bV(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 172
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    const-string v1, "REQ_MODEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 182
    :cond_0
    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->setContentView(I)V

    .line 184
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brt:Landroid/widget/Button;

    .line 185
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brs:Landroid/widget/Button;

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brt:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0055

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brt:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070258

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brs:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0053

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brs:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070253

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bay:Lcom/kingroot/kinguser/aks;

    .line 193
    const v0, 0x7f0f0153

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070259

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brD:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0f0158

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brE:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f0f0155

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brF:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->ahP:Landroid/widget/ImageView;

    .line 206
    const v0, 0x7f0f0156

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bru:Landroid/view/View;

    .line 207
    const v0, 0x7f0f0159

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brv:Landroid/view/View;

    .line 208
    const v0, 0x7f0f015a

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brw:Landroid/view/View;

    .line 209
    const v0, 0x7f0f015b

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brx:Landroid/widget/Button;

    .line 210
    const v0, 0x7f0f015c

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bry:Landroid/view/View;

    .line 211
    const v0, 0x7f0f015d

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brz:Landroid/widget/Button;

    .line 212
    const v0, 0x7f0f015e

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brA:Landroid/view/View;

    .line 213
    const v0, 0x7f0f015f

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brB:Landroid/widget/Button;

    .line 214
    const v0, 0x7f0f0157

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brC:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0f0154

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brJ:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brw:Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brx:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brM:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bry:Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brz:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brA:Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brO:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brB:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brO:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bru:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;-><init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f020188

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_1

    .line 262
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0a00f1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 263
    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brJ:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 266
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->TT()V

    .line 281
    const-string v0, "wk_su"

    invoke-static {v0}, Lcom/kingroot/kinguser/zk;->dw(Ljava/lang/String;)V

    .line 283
    iget-boolean v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brH:Z

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->bay:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BS()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->acL()V

    .line 291
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->brr:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 292
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbt;->setSuRequestPromptLive(Z)V

    .line 293
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->triggerSuRequestPrompt()V

    .line 296
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->finish()V

    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 299
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jF()V

    .line 300
    return-void

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->acM()V

    goto :goto_0
.end method
