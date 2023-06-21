.class public Lcom/kingroot/kinguser/uf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Hh:Lcom/kingroot/kinguser/wo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/kingroot/kinguser/uf$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/uf$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/uf;->Hh:Lcom/kingroot/kinguser/wo;

    return-void
.end method

.method public static J(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v1, Lcom/kingroot/kinguser/uf;->Hh:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/wo;->I(Ljava/util/List;)Z

    .line 61
    return-void
.end method

.method private static K(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 68
    const-wide/16 v2, 0x7d0

    move v0, v1

    .line 72
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_3

    .line 74
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    invoke-static {}, Lcom/kingroot/common/framework/task/KTaskSysService;->kv()Lcom/kingroot/kinguser/ud;

    move-result-object v4

    .line 81
    invoke-static {p0}, Lcom/kingroot/kinguser/uf;->L(Landroid/content/Context;)Z

    move-result v5

    .line 83
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/kingroot/kinguser/ud;->ku()I

    move-result v4

    if-gtz v4, :cond_1

    .line 84
    :cond_0
    invoke-static {}, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->isRunning()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/wo;->nB()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v0, v1

    .line 86
    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 91
    goto :goto_0

    .line 93
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/uf;->kx()V

    .line 94
    return-void

    .line 75
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static L(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-static {}, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->kz()Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 152
    if-eqz v2, :cond_0

    .line 156
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 157
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 156
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    :cond_3
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string v6, ":task"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 161
    if-eqz v5, :cond_2

    .line 164
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/tn;->cT(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 165
    if-lez v4, :cond_2

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic M(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0}, Lcom/kingroot/kinguser/uf;->K(Landroid/content/Context;)V

    return-void
.end method

.method private static kx()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/kingroot/common/framework/task/KTaskSysService;->kv()Lcom/kingroot/kinguser/ud;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/kingroot/kinguser/uf$2;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/uf$2;-><init>(Lcom/kingroot/kinguser/ud;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method
