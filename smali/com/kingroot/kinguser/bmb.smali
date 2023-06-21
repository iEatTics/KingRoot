.class public Lcom/kingroot/kinguser/bmb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bBc:Lcom/kingroot/kinguser/bmb;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bmb;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static declared-synchronized afF()Lcom/kingroot/kinguser/bmb;
    .locals 3

    .prologue
    .line 24
    const-class v1, Lcom/kingroot/kinguser/bmb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bmb;->bBc:Lcom/kingroot/kinguser/bmb;

    if-nez v0, :cond_1

    .line 25
    const-class v2, Lcom/kingroot/kinguser/bmb;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/bmb;->bBc:Lcom/kingroot/kinguser/bmb;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/kingroot/kinguser/bmb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bmb;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bmb;->bBc:Lcom/kingroot/kinguser/bmb;

    .line 29
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_1
    :try_start_2
    sget-object v0, Lcom/kingroot/kinguser/bmb;->bBc:Lcom/kingroot/kinguser/bmb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private afG()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 39
    const-string v1, "CTP_ReportData_Common"

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmb;->mContext:Landroid/content/Context;

    const-string v2, "CTP_ReportData_Common"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final aP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    const-string v1, "CTP_ReportData_Common"

    monitor-enter v1

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bmb;->afG()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final afH()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const-string v1, "CTP_ReportData_Common"

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bmb;->afG()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    const-string v1, "CTP_ReportData_Common"

    monitor-enter v1

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bmb;->afG()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
