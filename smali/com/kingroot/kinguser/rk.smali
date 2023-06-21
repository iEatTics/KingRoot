.class public Lcom/kingroot/kinguser/rk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "cdpm6"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/rk;->FX:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 138
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 143
    if-eq v1, v2, :cond_0

    .line 144
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    sget-object v2, Lcom/kingroot/kinguser/rk;->FX:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v1

    const/4 v4, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 176
    goto :goto_0
.end method

.method public static aP(I)V
    .locals 3

    .prologue
    .line 226
    const-string v0, "-A"

    const-string v1, "OUTPUT"

    const-string v2, "DROP"

    invoke-static {p0, v0, v1, v2}, Lcom/kingroot/kinguser/rk;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    const-string v0, "-A"

    const-string v1, "INPUT"

    const-string v2, "DROP"

    invoke-static {p0, v0, v1, v2}, Lcom/kingroot/kinguser/rk;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    return-void
.end method

.method public static aQ(I)V
    .locals 3

    .prologue
    .line 235
    const-string v0, "-D"

    const-string v1, "OUTPUT"

    const-string v2, "DROP"

    invoke-static {p0, v0, v1, v2}, Lcom/kingroot/kinguser/rk;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 236
    const-string v0, "-D"

    const-string v1, "INPUT"

    const-string v2, "DROP"

    invoke-static {p0, v0, v1, v2}, Lcom/kingroot/kinguser/rk;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    return-void
.end method

.method private static aR(I)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 243
    .line 244
    if-gtz p0, :cond_1

    .line 266
    :cond_0
    return v0

    .line 248
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u0_a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit16 v2, p0, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    const-string v3, "iptables --list"

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 252
    iget-object v3, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 253
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 254
    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 255
    if-eqz v3, :cond_0

    array-length v1, v3

    if-lez v1, :cond_0

    .line 256
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 258
    const-string v6, "DROP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 256
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static iA()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/rk;->iB()V

    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/rk;->iC()V

    .line 42
    return-void
.end method

.method public static iB()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 84
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 85
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_3
    new-instance v5, Landroid/content/ComponentName;

    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v6

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 93
    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v4, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/vt;->lT()Lcom/kingroot/kinguser/vt;

    move-result-object v4

    const v5, 0x61578

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/vt;->bi(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static iC()V
    .locals 4

    .prologue
    .line 110
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_1

    .line 113
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lcom/kingroot/kinguser/rk;->aR(I)I

    move-result v2

    .line 114
    if-lez v2, :cond_0

    .line 115
    invoke-static {}, Lcom/kingroot/kinguser/vt;->lT()Lcom/kingroot/kinguser/vt;

    move-result-object v0

    const v3, 0x61581

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/vt;->bi(I)V

    .line 116
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 117
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Lcom/kingroot/kinguser/rk;->aQ(I)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "ACCEPT"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rk;->m(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Lcom/kingroot/kinguser/vt;->lT()Lcom/kingroot/kinguser/vt;

    move-result-object v0

    const v1, 0x61579

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vt;->bi(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_1
    :goto_1
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static m(ILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 184
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/tc;->jw()Lcom/kingroot/kinguser/tc;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Lcom/kingroot/kinguser/tc;->jx()I

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    new-instance v3, Lcom/kingroot/common/firewall/Rule;

    invoke-direct {v3}, Lcom/kingroot/common/firewall/Rule;-><init>()V

    .line 196
    iput p0, v3, Lcom/kingroot/common/firewall/Rule;->uid:I

    .line 197
    const/4 v4, 0x1

    iput v4, v3, Lcom/kingroot/common/firewall/Rule;->type:I

    .line 198
    iput-object p1, v3, Lcom/kingroot/common/firewall/Rule;->GZ:Ljava/lang/String;

    .line 199
    iput-object p1, v3, Lcom/kingroot/common/firewall/Rule;->Ha:Ljava/lang/String;

    .line 202
    invoke-virtual {v2}, Lcom/kingroot/kinguser/tc;->jy()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/tc;->setEnable(Z)V

    .line 205
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/tc;->a(Lcom/kingroot/common/firewall/Rule;)V

    :cond_2
    :goto_1
    move v0, v1

    .line 214
    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {v2}, Lcom/kingroot/kinguser/tc;->jz()Z

    move-result v4

    .line 209
    if-eqz v4, :cond_2

    .line 210
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/tc;->setEnable(Z)V

    .line 211
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/tc;->a(Lcom/kingroot/common/firewall/Rule;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 215
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static r(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/rk;->iA()V

    .line 50
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 51
    invoke-static {v0}, Lcom/kingroot/kinguser/rk;->a(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method
