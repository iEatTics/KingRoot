.class public Lcom/kingroot/kinguser/bvd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bPp:Lcom/kingroot/kinguser/bvd;


# instance fields
.field private bPq:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvd;->bPq:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method private aZ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 143
    .line 145
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bty;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static aiu()Lcom/kingroot/kinguser/bvd;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/kingroot/kinguser/bvd;->bPp:Lcom/kingroot/kinguser/bvd;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/kingroot/kinguser/bvd;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bvd;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bvd;->bPp:Lcom/kingroot/kinguser/bvd;

    .line 33
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bvd;->bPp:Lcom/kingroot/kinguser/bvd;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;Lcom/kingroot/kinguser/buj;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 74
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v5, p0, Lcom/kingroot/kinguser/bvd;->bPq:Ljava/lang/Object;

    monitor-enter v5

    .line 78
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    .line 80
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bty;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 81
    iget-object v2, p3, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->adZ:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_5

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 83
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 85
    iget v6, p3, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOy:I

    if-lt v2, v6, :cond_1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "pkg has changed current="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " getdiffversion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p3, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOy:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 88
    const/16 v2, -0x1f73

    .line 77
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    const-string v5, "SoftUpdateEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mergeResult errcode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " errMsg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kingroot/kinguser/but;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-interface {p4, p2, v2, v0}, Lcom/kingroot/kinguser/buj;->onMergeResult(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    if-lez v2, :cond_0

    .line 131
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 136
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    const/4 v2, 0x2

    invoke-static {p3, v3, v2}, Lcom/kingroot/kinguser/bux;->a(Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;II)Lcom/kingroot/kinguser/bux;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/bvc;->b(Ljava/util/List;Lcom/kingroot/kinguser/bug;)V

    .line 140
    :cond_0
    return-void

    .line 91
    :cond_1
    :try_start_4
    new-instance v6, Lcom/kingroot/kinguser/btt;

    invoke-direct {v6}, Lcom/kingroot/kinguser/btt;-><init>()V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v0, p1, p2}, Lcom/kingroot/kinguser/btt;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 92
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 93
    if-eqz v0, :cond_2

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "mergePatchAddInstallApk TccDiff.bsPatch error errorcode="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    const/16 v2, -0x1f43

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    const-string v0, "mergePatchAddInstallApk new apk does not create"

    .line 100
    const/16 v2, -0x1f44

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    iget-object v0, p3, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->adZ:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/kingroot/kinguser/bvd;->aZ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    move v2, v3

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "merged bad apk fail:orgversioncode="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "needSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p3, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOB:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mergedSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    const/16 v2, -0x1f45

    .line 112
    goto/16 :goto_0

    .line 113
    :cond_5
    const-string v0, "mergePatchAddInstallApk orgpkg pkg does not exist"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    const/16 v2, -0x1f7c

    goto/16 :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "mergePatchAddInstallApk merge patch function exception:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    const/16 v2, -0x1f47

    .line 121
    goto/16 :goto_0

    .line 123
    :cond_6
    const-string v0, "mergePatchAddInstallApk fail patch doesnot exist"

    .line 124
    const/16 v2, -0x1f41

    goto/16 :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 132
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public b(Ljava/util/List;Lcom/kingroot/kinguser/btz;)V
    .locals 1
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
    .line 37
    new-instance v0, Lcom/kingroot/kinguser/bvd$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/bvd$1;-><init>(Lcom/kingroot/kinguser/bvd;Lcom/kingroot/kinguser/btz;)V

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/bve;->c(Ljava/util/List;Lcom/kingroot/kinguser/btz;)V

    .line 63
    return-void
.end method
