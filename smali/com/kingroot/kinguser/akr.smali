.class public Lcom/kingroot/kinguser/akr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile avE:Lcom/kingroot/kinguser/akr;


# instance fields
.field private avA:Landroid/content/SharedPreferences;

.field private avB:Lcom/kingroot/kinguser/ako;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 37
    const-string v1, "ku_cc"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/akr;->avA:Landroid/content/SharedPreferences;

    .line 38
    new-instance v0, Lcom/kingroot/kinguser/ako;

    iget-object v1, p0, Lcom/kingroot/kinguser/akr;->avA:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ako;-><init>(Landroid/content/SharedPreferences$Editor;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/akr;->avB:Lcom/kingroot/kinguser/ako;

    .line 39
    return-void
.end method

.method public static BL()Lcom/kingroot/kinguser/akr;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/kingroot/kinguser/akr;->avE:Lcom/kingroot/kinguser/akr;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/kingroot/kinguser/akr;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/akr;->avE:Lcom/kingroot/kinguser/akr;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/kingroot/kinguser/akr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akr;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akr;->avE:Lcom/kingroot/kinguser/akr;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/akr;->avE:Lcom/kingroot/kinguser/akr;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public BM()Z
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/akr;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:4xx_20170213_12:13:59.890"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public BN()Z
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/akr;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:4xx_20170213_12:14:56.063"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public BO()Z
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/akr;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:505_20170213_12:17:29.129"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aV(Z)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/akr;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:4xx_20170213_12:13:59.890"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method

.method public aW(Z)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/akr;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:4xx_20170213_12:14:56.063"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public aX(Z)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/akr;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:4xx_20170213_12:15:15.644"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    return-void
.end method

.method public aY(Z)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/akr;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:4xx_20170213_12:15:31.017"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    return-void
.end method

.method public aZ(Z)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/akr;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:4xx_20170213_12:16:54.773"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    return-void
.end method

.method public ba(Z)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/akr;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:4xx_20170213_12:17:16.464"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void
.end method

.method public bb(Z)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/akr;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:505_20170213_12:17:29.129"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    return-void
.end method
