.class Lcom/kingroot/kinguser/bnn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bwd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bnn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final bEo:Lcom/kingroot/kinguser/bwd;

.field private final bEw:Landroid/content/Context;

.field final synthetic bEx:Lcom/kingroot/kinguser/bnn;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bnn;Landroid/content/Context;Lcom/kingroot/kinguser/bwd;ZZ)V
    .locals 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/kingroot/kinguser/bnn$b;->bEx:Lcom/kingroot/kinguser/bnn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/kingroot/kinguser/bnn$b;->bEw:Landroid/content/Context;

    .line 138
    iput-object p3, p0, Lcom/kingroot/kinguser/bnn$b;->bEo:Lcom/kingroot/kinguser/bwd;

    .line 139
    iput-boolean p4, p0, Lcom/kingroot/kinguser/bnn$b;->c:Z

    .line 140
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, TokenListener()"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aP(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, TokenListener() onCancel"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aP(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$b;->bEo:Lcom/kingroot/kinguser/bwd;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bwd;->onCancel()V

    .line 200
    invoke-static {}, Lcom/kingroot/kinguser/bpy;->b()V

    .line 201
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 145
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, TokenListener() onComplete"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aP(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    check-cast p1, Lorg/json/JSONObject;

    .line 148
    :try_start_0
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    const-string v2, "openid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/kingroot/kinguser/bnn$b;->bEx:Lcom/kingroot/kinguser/bnn;

    invoke-static {v3}, Lcom/kingroot/kinguser/bnn;->a(Lcom/kingroot/kinguser/bnn;)Lcom/kingroot/kinguser/bno;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 158
    iget-object v3, p0, Lcom/kingroot/kinguser/bnn$b;->bEx:Lcom/kingroot/kinguser/bnn;

    invoke-static {v3}, Lcom/kingroot/kinguser/bnn;->b(Lcom/kingroot/kinguser/bnn;)Lcom/kingroot/kinguser/bno;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/kingroot/kinguser/bno;->aS(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$b;->bEx:Lcom/kingroot/kinguser/bnn;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnn;->c(Lcom/kingroot/kinguser/bnn;)Lcom/kingroot/kinguser/bno;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bno;->mH(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$b;->bEw:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/bnn$b;->bEx:Lcom/kingroot/kinguser/bnn;

    invoke-static {v1}, Lcom/kingroot/kinguser/bnn;->d(Lcom/kingroot/kinguser/bnn;)Lcom/kingroot/kinguser/bno;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bnm;->d(Landroid/content/Context;Lcom/kingroot/kinguser/bno;)V

    .line 165
    :cond_0
    const-string v0, "pf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    .line 168
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bnn$b;->bEw:Landroid/content/Context;

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 170
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pf"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    :cond_1
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bnn$b;->c:Z

    if-eqz v0, :cond_2

    .line 178
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$b;->bEo:Lcom/kingroot/kinguser/bwd;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/bwd;->onComplete(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$b;->bEx:Lcom/kingroot/kinguser/bnn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnn;->agk()V

    .line 186
    invoke-static {}, Lcom/kingroot/kinguser/bpy;->b()V

    .line 187
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "OpenUi, TokenListener() onComplete error"

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bpy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    .line 181
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 182
    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "OpenUi, TokenListener() onComplete error"

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bpy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onError(Lcom/kingroot/kinguser/bwf;)V
    .locals 2

    .prologue
    .line 191
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, TokenListener() onError"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aP(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$b;->bEo:Lcom/kingroot/kinguser/bwd;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/bwd;->onError(Lcom/kingroot/kinguser/bwf;)V

    .line 193
    invoke-static {}, Lcom/kingroot/kinguser/bpy;->b()V

    .line 194
    return-void
.end method
