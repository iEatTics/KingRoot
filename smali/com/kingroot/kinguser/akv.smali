.class public Lcom/kingroot/kinguser/akv;
.super Lcom/kingroot/kinguser/akm;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/akv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/kingroot/kinguser/akv$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akv$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akv;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "KlPluginSettings"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/akm;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/akv$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kingroot/kinguser/akv;-><init>()V

    return-void
.end method

.method public static Gp()Lcom/kingroot/kinguser/akv;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/kingroot/kinguser/akv;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/akv;

    return-object v0
.end method


# virtual methods
.method public Gq()J
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/akv;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.0.4_20170222_11:07:17.242"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Gr()J
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/akv;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.0.4_20170222_11:07:18.242"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Gs()Z
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/akv;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.0.4_20170222_11:07:19.242"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Gt()J
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/akv;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.0.4_20170222_11:07:21.242"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Gu()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    .line 88
    const-string v6, "VER:5.0.4_20170222_11:07:20.242"

    monitor-enter v6

    .line 89
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akv;->Gt()J

    move-result-wide v8

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/akv;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.0.4_20170222_11:07:20.242"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 93
    const-wide/32 v4, 0x5265c00

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/akv;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.0.4_20170222_11:07:20.242"

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/akv;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.0.4_20170222_11:07:21.242"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/akv;->avB:Lcom/kingroot/kinguser/ako;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ako;->commit()Z

    .line 102
    :goto_0
    monitor-exit v6

    .line 103
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/akv;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.0.4_20170222_11:07:21.242"

    add-long v2, v8, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Gv()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public bM(J)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/akv;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.0.4_20170222_11:07:17.242"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public bN(J)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/akv;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.0.4_20170222_11:07:18.242"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method

.method public cv(Z)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/akv;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.0.4_20170222_11:07:19.242"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method
