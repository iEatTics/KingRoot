.class public Lcom/kingroot/kinguser/bve;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;Lcom/kingroot/kinguser/btz;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;",
            "Lcom/kingroot/kinguser/btz;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    const-string v1, "WupUtil--"

    const-string v2, "fetchMySoftwareListDiffInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/bve;->cs(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 112
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/kingroot/kinguser/btz;->onFetchDiffResult(Ljava/util/List;Z)V

    .line 166
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v2

    .line 117
    new-instance v3, Lcom/kingroot/kinguser/bve$2;

    invoke-direct {v3, p1, p0, v0}, Lcom/kingroot/kinguser/bve$2;-><init>(Lcom/kingroot/kinguser/btz;Ljava/util/List;Ljava/util/List;)V

    .line 116
    invoke-virtual {v2, v1, v3}, Lcom/kingroot/kinguser/bvc;->a(Ljava/util/List;Lcom/kingroot/kinguser/buf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    const-string v1, "WupUtil--"

    const-string v2, "fetchMySoftwareListInfo--end[exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-interface {p1, v0, v4}, Lcom/kingroot/kinguser/btz;->onFetchDiffResult(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public static c(Ljava/util/List;Lcom/kingroot/kinguser/btz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;",
            "Lcom/kingroot/kinguser/btz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/buo;->co(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v2

    .line 48
    new-instance v3, Lcom/kingroot/kinguser/bve$1;

    invoke-direct {v3, p1, p0, v0}, Lcom/kingroot/kinguser/bve$1;-><init>(Lcom/kingroot/kinguser/btz;Ljava/util/List;Ljava/util/List;)V

    .line 47
    invoke-virtual {v2, v1, v3}, Lcom/kingroot/kinguser/bvc;->a(Ljava/util/List;Lcom/kingroot/kinguser/buf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    const-string v1, "WupUtil--"

    const-string v2, "fetchMySoftwareListInfo--end[exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/kingroot/kinguser/btz;->onFetchResult(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private static cs(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 173
    const-string v0, "WupUtil--"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lzt fetchMySoftwareListInfo allAppList.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start getPkgMd5Change:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    .line 177
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 178
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bty;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 180
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    .line 211
    const-string v0, "WupUtil--"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lzt fetchMySoftwareListInfo getPkgMd5Change end spend:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-object v3

    .line 181
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 183
    :try_start_0
    iget-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    .line 184
    iget-object v7, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->apkPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 186
    iget-object v7, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->apkPath:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/kingroot/kinguser/btr;->aY(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 187
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 189
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mUpdateUseMd5:Ljava/lang/String;

    .line 191
    iget-object v7, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 192
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 193
    if-eqz v7, :cond_1

    array-length v8, v7

    if-lez v8, :cond_1

    .line 195
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/kingroot/kinguser/buu;->Z([B)Ljava/lang/String;

    move-result-object v7

    .line 196
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 198
    invoke-static {v0}, Lcom/kingroot/kinguser/buo;->e(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    move-result-object v8

    .line 199
    iput-object v7, v8, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->uid:Ljava/lang/String;

    .line 200
    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mUpdateUseMd5:Ljava/lang/String;

    iput-object v0, v8, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->apkFileMd5:Ljava/lang/String;

    .line 201
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 180
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 206
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 208
    const-string v1, "WupUtil--"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fetchMySoftwareListInfo--getmdt fail:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
