.class public Lcom/kingroot/kinguser/bas;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bg(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcloudsdk/ext/kr/RootInitConfig;

    invoke-direct {v0}, Lcloudsdk/ext/kr/RootInitConfig;-><init>()V

    .line 52
    invoke-virtual {v0, v3}, Lcloudsdk/ext/kr/RootInitConfig;->setLogSwitchOn(Z)V

    .line 54
    invoke-virtual {v0, v3}, Lcloudsdk/ext/kr/RootInitConfig;->setUseTestServer(Z)V

    .line 55
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootInitConfig;->setChannel(Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kingroot/kinguser/abu;->ZP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/abu;->ZO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/abu;->ZQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/usr/ikm/ikmsu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootInitConfig;->setKdPath(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v3}, Lcloudsdk/ext/kr/RootInitConfig;->setWillKinguserSdkCleanApp(Z)V

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/avs;->RY()Lcom/kingroot/kinguser/avs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/avs;->Rx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootInitConfig;->setKinguserSdkCleanListPath(Ljava/lang/String;)V

    .line 67
    const/16 v1, 0x280

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootInitConfig;->setKinguserBuildNo(I)V

    .line 69
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/bbw;->WU()Lcom/kingroot/kinguser/bbw;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lcloudsdk/ext/kr/RootSdk;->initialize(Landroid/content/Context;Lcloudsdk/ext/kr/RootInitConfig;Lcloudsdk/shell/IRootShell;)Z

    move-result v0

    return v0
.end method

.method public static g(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/ait;->a(Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcloudsdk/ext/kr/RootSdk;->cleanRoot(Ljava/util/ArrayList;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
