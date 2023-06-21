.class public Lcom/kingroot/kinguser/agx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/agx$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;)Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;
    .locals 7

    .prologue
    const v6, 0x7f07034d

    const/4 v5, 0x2

    .line 49
    new-instance v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    invoke-direct {v2}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;-><init>()V

    .line 51
    iget v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->and:I

    .line 52
    iget v3, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->ane:I

    .line 59
    const/16 v1, 0x7d0

    if-ne v3, v1, :cond_2

    .line 60
    iget-wide v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->ang:J

    iput-wide v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mTime:J

    .line 61
    iput v3, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->ane:I

    .line 62
    const-string v0, "com.android.shell"

    iput-object v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070345

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apJ:Ljava/lang/String;

    .line 65
    iput v5, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I

    .line 101
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anf:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/kingroot/kinguser/zh;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anf:Ljava/lang/String;

    iput-object v1, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apL:Ljava/lang/String;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 107
    iget-object v3, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anf:Ljava/lang/String;

    iput-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 108
    iget-object v3, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anf:Ljava/lang/String;

    iput-object v3, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 109
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anH:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apK:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anf:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anJ:Ljava/lang/String;

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aaz;->ea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anI:Ljava/lang/String;

    .line 121
    :cond_0
    iget-object v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apK:Ljava/lang/String;

    .line 125
    :cond_1
    return-object v2

    .line 69
    :cond_2
    invoke-static {v0, v2}, Lcom/kingroot/kinguser/agx;->a(ILcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/kingroot/kinguser/agx;->ag(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v0, v2}, Lcom/kingroot/kinguser/agx;->a(Ljava/util/List;Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    :goto_1
    iget-wide v4, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->ang:J

    iput-wide v4, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mTime:J

    .line 87
    iput v3, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->ane:I

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    const-string v0, "unknown"

    iput-object v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apJ:Ljava/lang/String;

    goto/16 :goto_0

    .line 83
    :cond_3
    iput v5, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I

    move-object v0, v1

    goto :goto_1

    .line 95
    :cond_4
    iput-object v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    .line 96
    invoke-static {v0}, Lcom/kingroot/kinguser/bgh;->jf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apJ:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/List;Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 224
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 225
    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v0}, Lcom/kingroot/kinguser/agx;->di(I)Lcom/kingroot/kinguser/agx$a;

    move-result-object v3

    .line 226
    if-eqz v3, :cond_0

    .line 231
    iget-object v0, p1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, v3, Lcom/kingroot/kinguser/agx$a;->anm:Ljava/lang/String;

    iput-object v0, p1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anK:Ljava/lang/String;

    .line 237
    :cond_1
    :try_start_0
    iget-object v0, v3, Lcom/kingroot/kinguser/agx$a;->ano:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/agx;->dg(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 238
    const/4 v1, 0x5

    :try_start_1
    iput v1, p1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, v3, Lcom/kingroot/kinguser/agx$a;->anm:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/agx;->fE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    const/4 v1, 0x3

    iput v1, p1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, v3, Lcom/kingroot/kinguser/agx$a;->ann:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/agx;->fE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    const/4 v1, 0x4

    iput v1, p1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 259
    :goto_2
    return-object v0

    .line 249
    :catch_0
    move-exception v1

    .line 251
    :goto_3
    const/4 v1, 0x0

    iput v1, p1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 257
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 259
    goto :goto_2

    .line 249
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method

.method private static a(ILcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    const/16 v0, 0x14

    .line 135
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    .line 137
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/agx;->dh(I)Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v0

    .line 140
    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_1
    return-object v2

    .line 145
    :cond_1
    iget p0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->ppid:I

    .line 148
    iget-object v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anL:Ljava/lang/String;

    .line 152
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static ag(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 164
    .line 166
    invoke-static {p0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-object v1

    .line 170
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 171
    if-eqz v0, :cond_2

    .line 177
    :try_start_0
    iget-object v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    const-string v4, "k_shell/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    iget-object v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 179
    array-length v3, v0

    if-lt v3, v5, :cond_2

    .line 180
    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 181
    invoke-static {v0}, Lcom/kingroot/kinguser/agx;->dh(I)Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_7

    .line 183
    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    invoke-static {v0}, Lcom/kingroot/kinguser/agx;->dg(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 185
    goto :goto_0

    .line 187
    :cond_3
    iget-object v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    const-string v4, "daemonsu:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    iget-object v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    array-length v3, v0

    if-ne v3, v5, :cond_4

    .line 190
    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 191
    invoke-static {v0}, Lcom/kingroot/kinguser/agx;->dg(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 193
    :cond_4
    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 194
    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 195
    invoke-static {v0}, Lcom/kingroot/kinguser/agx;->dh(I)Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    invoke-static {v0}, Lcom/kingroot/kinguser/agx;->dg(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 201
    :cond_5
    iget-object v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    const-string v4, "k_worker/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    const-string v4, "kworker/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    :cond_6
    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v0}, Lcom/kingroot/kinguser/agx;->di(I)Lcom/kingroot/kinguser/agx$a;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    iget-object v3, v0, Lcom/kingroot/kinguser/agx$a;->anm:Ljava/lang/String;

    invoke-static {v3}, Lcom/kingroot/kinguser/agv;->fC(Ljava/lang/String;)Lcom/kingroot/kinguser/agv;

    move-result-object v3

    .line 205
    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/kingroot/kinguser/agx$a;->anm:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/agw;->a(Ljava/lang/String;Lcom/kingroot/kinguser/agv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 211
    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method private static dg(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 285
    const/16 v1, 0x2710

    if-ge p0, v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/zh;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 290
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 293
    const/4 v0, 0x0

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method private static dh(I)Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 325
    invoke-static {p0}, Lcom/kingroot/common/utils/system/ProcessUtils;->cd(I)Ljava/lang/String;

    move-result-object v4

    .line 326
    const-string v1, "cat /proc/%d/status"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/agx;->fF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 332
    array-length v6, v5

    move v2, v0

    move v1, v3

    move v0, v3

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v7, v5, v2

    .line 333
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 335
    :try_start_0
    array-length v8, v7

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 336
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 337
    const-string v9, "PPid"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 338
    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 352
    :cond_0
    :goto_1
    if-eq v1, v3, :cond_3

    if-eq v0, v3, :cond_3

    .line 357
    :cond_1
    new-instance v2, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    invoke-direct {v2, p0, v1, v4, v0}, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;-><init>(IILjava/lang/String;I)V

    return-object v2

    .line 339
    :cond_2
    :try_start_1
    const-string v9, "Uid"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 340
    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 342
    array-length v8, v7

    if-lt v8, v10, :cond_0

    .line 343
    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 332
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private static di(I)Lcom/kingroot/kinguser/agx$a;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 361
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v2, Lcom/kingroot/kinguser/aas;->XZ:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/agx;->fF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-object v0

    .line 368
    :cond_1
    const/16 v2, 0xa

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 370
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 372
    array-length v1, v2

    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    .line 376
    new-instance v1, Lcom/kingroot/kinguser/agx$a;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/agx$a;-><init>(Lcom/kingroot/kinguser/agx$1;)V

    .line 377
    aget-object v0, v2, v6

    iput-object v0, v1, Lcom/kingroot/kinguser/agx$a;->anl:Ljava/lang/String;

    .line 378
    aget-object v0, v2, v5

    const-string v3, "???"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    iput-object v0, v1, Lcom/kingroot/kinguser/agx$a;->anm:Ljava/lang/String;

    .line 379
    aget-object v0, v2, v7

    const-string v3, "???"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_2
    iput-object v0, v1, Lcom/kingroot/kinguser/agx$a;->ann:Ljava/lang/String;

    .line 381
    const/4 v0, 0x3

    :try_start_0
    aget-object v0, v2, v0

    const-string v3, "???"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "0"

    :goto_3
    iput-object v0, v1, Lcom/kingroot/kinguser/agx$a;->ano:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object v0, v1

    .line 386
    goto :goto_0

    .line 378
    :cond_2
    aget-object v0, v2, v5

    goto :goto_1

    .line 379
    :cond_3
    aget-object v0, v2, v7

    goto :goto_2

    .line 381
    :cond_4
    const/4 v0, 0x3

    :try_start_1
    aget-object v0, v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 382
    :catch_0
    move-exception v0

    goto :goto_4
.end method

.method private static fE(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-object v0

    .line 268
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "\\w+(\\.\\w+)+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 274
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static fF(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 321
    :goto_0
    return-object v0

    .line 302
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :try_start_0
    const-class v0, Lcom/kingroot/kinguser/hm;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hm;

    .line 309
    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/hm;->runCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 311
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hd;

    .line 314
    invoke-interface {v0}, Lcom/kingroot/kinguser/hd;->aW()I

    move-result v2

    if-nez v2, :cond_1

    .line 315
    invoke-interface {v0}, Lcom/kingroot/kinguser/hd;->aV()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    .line 321
    goto :goto_0
.end method
