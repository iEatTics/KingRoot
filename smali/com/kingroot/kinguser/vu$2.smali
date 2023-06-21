.class Lcom/kingroot/kinguser/vu$2;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/vu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Lcom/kingroot/common/report/autostart/BootRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic LC:Lcom/kingroot/kinguser/vu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vu;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/kingroot/kinguser/vu$2;->LC:Lcom/kingroot/kinguser/vu;

    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vu$2;->li()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected li()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingroot/common/report/autostart/BootRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$2;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-string v2, "auto_start_statistic_manager_setting"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/vu;->a(Lcom/kingroot/kinguser/vu;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$2;->LC:Lcom/kingroot/kinguser/vu;

    iget-object v1, p0, Lcom/kingroot/kinguser/vu$2;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v1}, Lcom/kingroot/kinguser/vu;->a(Lcom/kingroot/kinguser/vu;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/vu;->a(Lcom/kingroot/kinguser/vu;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 150
    const/4 v1, 0x0

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/vu;->access$300()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/kingroot/kinguser/rv;->cE(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v2

    .line 154
    :try_start_0
    invoke-interface {v2}, Lcom/kingroot/kinguser/sk;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v2}, Lcom/kingroot/kinguser/sk;->jp()Ljava/lang/Object;

    move-result-object v0

    .line 156
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 157
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/kingroot/kinguser/vu$2;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v1}, Lcom/kingroot/kinguser/vu;->b(Lcom/kingroot/kinguser/vu;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "SA01"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 167
    iget-object v1, p0, Lcom/kingroot/kinguser/vu$2;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v1}, Lcom/kingroot/kinguser/vu;->b(Lcom/kingroot/kinguser/vu;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    :cond_0
    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/sk;->b(Ljava/lang/Object;)Z

    .line 170
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
