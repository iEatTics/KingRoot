.class Lcom/kingroot/kinguser/axo$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axo;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/kingroot/kinguser/axo$2;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/model/RootMgrAppModel;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/kingroot/kinguser/arv;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/model/RootMgrAppModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/kingroot/kinguser/arv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/model/RootMgrAppModel;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;",
            "Lcom/kingroot/kinguser/arv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 782
    if-eqz p3, :cond_0

    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p9, p2}, Lcom/kingroot/kinguser/arv;->getRiskType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/avu;->hi(I)Ljava/lang/String;

    move-result-object v0

    .line 784
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    const/4 v1, 0x1

    iput v1, p1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    .line 786
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070387

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->riskDescription:Ljava/lang/String;

    .line 882
    :goto_0
    return-void

    .line 792
    :cond_0
    const/4 v1, 0x0

    .line 793
    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 794
    if-eqz v0, :cond_3

    .line 796
    iget-object v2, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 797
    if-nez v2, :cond_1

    .line 798
    invoke-static {p2}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 799
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 800
    const/4 v1, 0x1

    move v2, v1

    move-object v1, v3

    .line 805
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 806
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 807
    const/4 v2, 0x1

    iput v2, p1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    .line 808
    const-string v2, "zh_CN"

    invoke-static {}, Lcom/kingroot/kinguser/zb;->pi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 809
    const v2, 0x7f070387

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->riskDescription:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->riskDescription:Ljava/lang/String;

    goto :goto_0

    .line 811
    :cond_2
    const v0, 0x7f070387

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f070266

    .line 812
    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 811
    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->riskDescription:Ljava/lang/String;

    goto :goto_0

    .line 819
    :cond_3
    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 820
    if-eqz v0, :cond_5

    .line 822
    iget-object v2, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 823
    if-nez v2, :cond_d

    .line 824
    if-nez v1, :cond_4

    .line 825
    invoke-static {p2}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 827
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v0, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 828
    const/4 v0, 0x1

    .line 833
    :goto_2
    if-eqz v0, :cond_5

    .line 834
    const/4 v0, 0x2

    iput v0, p1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    goto/16 :goto_0

    .line 840
    :cond_5
    invoke-interface {p8, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 841
    if-eqz v0, :cond_7

    .line 843
    iget-object v2, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 844
    if-nez v2, :cond_c

    .line 845
    if-nez v1, :cond_6

    .line 846
    invoke-static {p2}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 848
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v0, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 849
    const/4 v0, 0x1

    .line 854
    :goto_3
    if-eqz v0, :cond_7

    .line 855
    const/4 v0, 0x0

    iput v0, p1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    goto/16 :goto_0

    .line 861
    :cond_7
    if-nez p3, :cond_8

    .line 862
    const/4 v0, 0x0

    iput v0, p1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    goto/16 :goto_0

    .line 867
    :cond_8
    invoke-static {p2}, Lcom/kingroot/kinguser/auw;->jn(Ljava/lang/String;)I

    move-result v0

    .line 868
    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 870
    :cond_9
    const/4 v0, 0x0

    iput v0, p1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    goto/16 :goto_0

    .line 875
    :cond_a
    invoke-interface {p5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 876
    const/4 v0, 0x0

    iput v0, p1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    goto/16 :goto_0

    .line 881
    :cond_b
    const/4 v0, 0x3

    iput v0, p1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto :goto_3

    :cond_d
    move v0, v2

    goto :goto_2

    :cond_e
    move-object v1, v3

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 664
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 666
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->getAllAppsInfo()Ljava/util/List;

    move-result-object v1

    .line 669
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Eq()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    .line 672
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v9

    .line 673
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 674
    if-eqz v3, :cond_0

    .line 675
    invoke-virtual {v9}, Lcom/kingroot/kinguser/arv;->getAllRiskApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 680
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 681
    const-string v0, "com.android.kinguser.console"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    if-eqz v3, :cond_1

    .line 683
    invoke-virtual {v9}, Lcom/kingroot/kinguser/arv;->getAllUnknownApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 687
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/awc;->SB()Lcom/kingroot/kinguser/awc;

    move-result-object v2

    .line 688
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 689
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/awc;->hn(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 690
    iget-object v8, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 669
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 694
    :cond_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 695
    invoke-virtual {v2}, Lcom/kingroot/kinguser/awc;->SC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 696
    iget-object v10, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 700
    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 701
    invoke-virtual {v2}, Lcom/kingroot/kinguser/awc;->SD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 702
    iget-object v10, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 705
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 706
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 707
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 708
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    .line 710
    if-eqz v1, :cond_6

    iget-object v0, v1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    if-eqz v0, :cond_6

    .line 713
    iget-object v0, v1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 719
    invoke-static {v2}, Lcom/kingroot/kinguser/aff;->fd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, p0

    .line 724
    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/axo$2;->a(Lcom/kingroot/kinguser/model/RootMgrAppModel;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/kingroot/kinguser/arv;)V

    .line 735
    iget v0, v1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    if-nez v0, :cond_7

    .line 736
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 737
    :cond_7
    const/4 v0, 0x1

    iget v2, v1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    if-ne v0, v2, :cond_8

    .line 738
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 739
    :cond_8
    const/4 v0, 0x2

    iget v2, v1, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    if-ne v0, v2, :cond_6

    .line 740
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 745
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 746
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 747
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$2;->this$0:Lcom/kingroot/kinguser/axo;

    const-wide/32 v2, 0x7f070280

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/axo;->V(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 748
    new-instance v0, Lcom/kingroot/kinguser/yn$b;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/yn$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    .line 750
    new-instance v4, Lcom/kingroot/kinguser/yn$b;

    invoke-direct {v4, v0, v2}, Lcom/kingroot/kinguser/yn$b;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 753
    :cond_a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 754
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$2;->this$0:Lcom/kingroot/kinguser/axo;

    const-wide/32 v2, 0x7f07027f

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/axo;->V(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 755
    new-instance v0, Lcom/kingroot/kinguser/yn$b;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/yn$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    .line 757
    new-instance v4, Lcom/kingroot/kinguser/yn$b;

    invoke-direct {v4, v0, v2}, Lcom/kingroot/kinguser/yn$b;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 760
    :cond_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 761
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$2;->this$0:Lcom/kingroot/kinguser/axo;

    const-wide/32 v2, 0x7f070281

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/axo;->V(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 762
    new-instance v0, Lcom/kingroot/kinguser/yn$b;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/yn$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    .line 764
    new-instance v4, Lcom/kingroot/kinguser/yn$b;

    invoke-direct {v4, v0, v2}, Lcom/kingroot/kinguser/yn$b;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 769
    :cond_c
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$2;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/axo;->j(Ljava/lang/Object;)V

    .line 770
    return-void
.end method
