.class public Lcom/kingroot/kinguser/wb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static Q(J)V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/wb;->na()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "S01"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method

.method public static R(J)V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/kingroot/kinguser/wb;->na()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "S07"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method public static S(J)V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/wb;->na()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "S04"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method

.method public static U(Z)V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/wb;->na()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "S02"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public static V(Z)V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/wb;->na()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "S05"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    return-void
.end method

.method public static W(Z)V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/wb;->na()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "S06"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    return-void
.end method

.method private static na()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "kingcommon_setting"

    .line 28
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    return-object v0
.end method

.method public static nb()J
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/wb;->na()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "S01"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nc()I
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/wb;->na()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "S03"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static nd()Z
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/wb;->na()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    const-string v1, "S02"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ne()Z
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/wb;->na()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "S05"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static nf()J
    .locals 4

    .prologue
    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/wb;->na()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "S07"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ng()Z
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/wb;->na()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    const-string v1, "S06"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
