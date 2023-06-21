.class public final Lcom/kingroot/kinguser/bmf;
.super Lcom/kingroot/kinguser/bmq;
.source "SourceFile"


# static fields
.field private static bBw:Lcom/kingroot/kinguser/bmf;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/bmq;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/kingroot/kinguser/bmf;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static bB(Landroid/content/Context;)Lcom/kingroot/kinguser/bmf;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/kingroot/kinguser/bmf;->bBw:Lcom/kingroot/kinguser/bmf;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/kingroot/kinguser/bmf;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bmf;->bBw:Lcom/kingroot/kinguser/bmf;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/kingroot/kinguser/bmf;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bmf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/bmf;->bBw:Lcom/kingroot/kinguser/bmf;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bmf;->bBw:Lcom/kingroot/kinguser/bmf;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final afI()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-static {}, Lcom/kingroot/kinguser/blz;->afA()Lcom/kingroot/kinguser/blz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/blz;->afD()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 52
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 53
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/aq;

    .line 54
    if-eqz v0, :cond_0

    .line 55
    iget-boolean v4, v0, Lcom/kingx/cloudsdk/aq;->bj:Z

    if-nez v4, :cond_0

    .line 59
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "mod_%d_%d_auto_run_times"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Lcom/kingx/cloudsdk/aq;->aH:I

    .line 65
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x1

    iget v8, v0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 64
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 66
    iget-object v5, p0, Lcom/kingroot/kinguser/bmf;->mContext:Landroid/content/Context;

    const-string v6, "cloudsdk"

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 67
    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 68
    if-lez v6, :cond_1

    .line 52
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v7

    iget v0, v0, Lcom/kingx/cloudsdk/aq;->aH:I

    invoke-virtual {v7, v0, v2}, Lcloudsdk/CloudSdk;->loadModule(IZ)Lcloudsdk/ILoadResult;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Lcloudsdk/ILoadResult;->success()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 75
    invoke-interface {v0}, Lcloudsdk/ILoadResult;->getModule()Lcloudsdk/IModule;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    const/4 v7, 0x0

    invoke-interface {v0, v2, v7}, Lcloudsdk/IModule;->execute(ILandroid/os/Bundle;)Lcloudsdk/IActionResult;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Lcloudsdk/IActionResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v5, v6, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 90
    :cond_2
    return-void
.end method
