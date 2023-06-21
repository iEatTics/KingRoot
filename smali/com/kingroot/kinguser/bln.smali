.class public Lcom/kingroot/kinguser/bln;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bzZ:Lcom/kingroot/kinguser/bln;


# instance fields
.field private bAa:Landroid/content/SharedPreferences;

.field private bAb:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    const-string v1, "ManagerSetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bln;->bAa:Landroid/content/SharedPreferences;

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/bln;->bAa:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bln;->bAb:Landroid/content/SharedPreferences$Editor;

    .line 35
    return-void
.end method

.method public static afn()Lcom/kingroot/kinguser/bln;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/kingroot/kinguser/bln;->bzZ:Lcom/kingroot/kinguser/bln;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/kingroot/kinguser/bln;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bln;->bzZ:Lcom/kingroot/kinguser/bln;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/kingroot/kinguser/bln;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bln;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bln;->bzZ:Lcom/kingroot/kinguser/bln;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bln;->bzZ:Lcom/kingroot/kinguser/bln;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final afo()J
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/bln;->bAa:Landroid/content/SharedPreferences;

    const-string v1, "PullPOrderTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final afp()J
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/bln;->bAa:Landroid/content/SharedPreferences;

    const-string v1, "LatestPluginGOFID"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/bln;->bAb:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PullPOrderTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    return-void
.end method

.method public final c(J)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/bln;->bAb:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LatestPluginGOFID"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    return-void
.end method
