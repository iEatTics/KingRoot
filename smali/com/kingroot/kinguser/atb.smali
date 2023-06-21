.class public Lcom/kingroot/kinguser/atb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile aNJ:Lcom/kingroot/kinguser/atb;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atb;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private M(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/atb;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_getViewPosition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    const-string v1, "position"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void

    .line 85
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static OR()Lcom/kingroot/kinguser/atb;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/kingroot/kinguser/atb;->aNJ:Lcom/kingroot/kinguser/atb;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/kingroot/kinguser/atb;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/atb;->aNJ:Lcom/kingroot/kinguser/atb;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/kingroot/kinguser/atb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/atb;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/atb;->aNJ:Lcom/kingroot/kinguser/atb;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/atb;->aNJ:Lcom/kingroot/kinguser/atb;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(IILjava/lang/String;Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;)V
    .locals 8

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;-><init>(Lcom/kingroot/kinguser/atb;IILjava/lang/String;Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;)V

    invoke-interface {v6, v7, p2, p1, v0}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/atb;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/atb;->M(ILjava/lang/String;)V

    return-void
.end method

.method private jc(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/atb;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_getViewPosition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    const-string v1, "position"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    .line 102
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener;)V
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$2;

    invoke-direct {v1, p0, p2}, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$2;-><init>(Lcom/kingroot/kinguser/atb;Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener;)V

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/ams;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;)V

    .line 155
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 71
    :goto_0
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/atb;->jc(Ljava/lang/String;)I

    move-result v0

    .line 70
    const/16 v1, 0x14

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/kingroot/kinguser/atb;->a(IILjava/lang/String;Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iU(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/atb;->iV(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/anf;->aA(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iV(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    const/4 v2, 0x0

    const/16 v3, 0x14

    new-instance v4, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$3;

    invoke-direct {v4, p0, v1, v0}, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$3;-><init>(Lcom/kingroot/kinguser/atb;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v2, v3, p1, v4}, Lcom/kingroot/kinguser/atb;->a(IILjava/lang/String;Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    const-wide/16 v2, 0xf

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :goto_0
    monitor-exit p0

    return-object v1

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized m(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 199
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    .line 200
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 201
    new-instance v2, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$4;-><init>(Lcom/kingroot/kinguser/atb;[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, v2}, Lcom/kingroot/kinguser/atb;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    const-wide/16 v2, 0xf

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    aget-object v0, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0
.end method
