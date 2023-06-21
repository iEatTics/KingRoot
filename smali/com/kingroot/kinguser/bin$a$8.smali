.class Lcom/kingroot/kinguser/bin$a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bin$a;->k(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTp:Ljava/lang/String;

.field final synthetic btN:Lcom/kingroot/kinguser/bin$a;

.field final synthetic btP:Ljava/lang/String;

.field final synthetic btQ:I

.field final synthetic btW:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$a$8;->btN:Lcom/kingroot/kinguser/bin$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/bin$a$8;->aTp:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/bin$a$8;->btW:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingroot/kinguser/bin$a$8;->btP:Ljava/lang/String;

    iput p5, p0, Lcom/kingroot/kinguser/bin$a$8;->btQ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 807
    .line 809
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$8;->aTp:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bio;->lO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 811
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/kingroot/kinguser/bin$a$8;->aTp:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 812
    const-string v3, "key"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 817
    :goto_0
    invoke-static {v0}, Lcom/kingroot/kinguser/bio;->lO(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 820
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$8;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/bin$a$8;->btP:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/bin$a$8;->btQ:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/bin$a$8;->btW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", argument key must be set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bin$a;->a(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;ILjava/lang/String;)V

    .line 897
    :goto_1
    return-void

    .line 813
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 826
    :cond_0
    const-string v3, "imei"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 827
    const/4 v2, 0x0

    .line 829
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$8;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aay;->al(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move v5, v2

    move-object v2, v1

    move v1, v5

    .line 880
    :goto_2
    if-eqz v2, :cond_8

    .line 882
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$8;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v3, p0, Lcom/kingroot/kinguser/bin$a$8;->btP:Ljava/lang/String;

    iget v4, p0, Lcom/kingroot/kinguser/bin$a$8;->btQ:I

    invoke-static {v0, v3, v4, v2}, Lcom/kingroot/kinguser/bin$a;->a(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;ILjava/lang/String;)V

    .line 890
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 891
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kingroot/kinguser/bin$a$8;->btN:Lcom/kingroot/kinguser/bin$a;

    invoke-static {v3}, Lcom/kingroot/kinguser/bin$a;->b(Lcom/kingroot/kinguser/bin$a;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "getInfo"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 830
    :catch_1
    move-exception v0

    .line 831
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v5, v2

    move-object v2, v0

    move-object v0, v1

    move v1, v5

    .line 832
    goto :goto_2

    .line 833
    :cond_1
    const-string v3, "guid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 834
    const/4 v2, 0x1

    .line 836
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ux;->getSharkGuid()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move v5, v2

    move-object v2, v1

    move v1, v5

    .line 839
    goto :goto_2

    .line 837
    :catch_2
    move-exception v0

    .line 838
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v5, v2

    move-object v2, v0

    move-object v0, v1

    move v1, v5

    .line 839
    goto :goto_2

    .line 840
    :cond_2
    const-string v3, "lc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 841
    const/4 v0, 0x3

    .line 843
    :try_start_3
    const-string v2, "30F06D5DF23EAE66"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v5, v0

    move-object v0, v2

    move-object v2, v1

    move v1, v5

    .line 846
    goto :goto_2

    .line 844
    :catch_3
    move-exception v2

    .line 845
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 846
    goto/16 :goto_2

    .line 847
    :cond_3
    const-string v3, "android_os_build_model"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 848
    const/4 v0, 0x4

    .line 850
    :try_start_4
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move v5, v0

    move-object v0, v2

    move-object v2, v1

    move v1, v5

    .line 853
    goto/16 :goto_2

    .line 851
    :catch_4
    move-exception v2

    .line 852
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 853
    goto/16 :goto_2

    .line 854
    :cond_4
    const-string v3, "android_os_build_brand"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 857
    :try_start_5
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move v5, v2

    move-object v2, v1

    move v1, v5

    .line 860
    goto/16 :goto_2

    .line 858
    :catch_5
    move-exception v0

    .line 859
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v5, v2

    move-object v2, v0

    move-object v0, v1

    move v1, v5

    .line 860
    goto/16 :goto_2

    .line 861
    :cond_5
    const-string v3, "android_os_build_version_release"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 862
    const/4 v0, 0x5

    .line 864
    :try_start_6
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move v5, v0

    move-object v0, v2

    move-object v2, v1

    move v1, v5

    .line 867
    goto/16 :goto_2

    .line 865
    :catch_6
    move-exception v2

    .line 866
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 867
    goto/16 :goto_2

    .line 868
    :cond_6
    const-string v3, "imsi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 871
    :try_start_7
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$8;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/cgt;->ag(Landroid/content/Context;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v0

    move v5, v2

    move-object v2, v1

    move v1, v5

    .line 874
    goto/16 :goto_2

    .line 872
    :catch_7
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v5, v2

    move-object v2, v0

    move-object v0, v1

    move v1, v5

    .line 874
    goto/16 :goto_2

    .line 876
    :cond_7
    const/16 v2, 0x63

    .line 877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v5, v2

    move-object v2, v0

    move-object v0, v1

    move v1, v5

    goto/16 :goto_2

    .line 885
    :cond_8
    if-nez v0, :cond_9

    const-string v0, ""

    .line 886
    :cond_9
    iget-object v2, p0, Lcom/kingroot/kinguser/bin$a$8;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v3, p0, Lcom/kingroot/kinguser/bin$a$8;->btP:Ljava/lang/String;

    iget v4, p0, Lcom/kingroot/kinguser/bin$a$8;->btQ:I

    invoke-static {v2, v3, v4, v0}, Lcom/kingroot/kinguser/bin$a;->a(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method
