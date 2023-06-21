.class Lcom/kingroot/kinguser/bin$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bin;->acY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btK:Lcom/kingroot/kinguser/bin;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bin;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$2;->btK:Lcom/kingroot/kinguser/bin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$2;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->b(Lcom/kingroot/kinguser/bin;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$2;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->b(Lcom/kingroot/kinguser/bin;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bin$2;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v2}, Lcom/kingroot/kinguser/bin;->c(Lcom/kingroot/kinguser/bin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 264
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 267
    :try_start_0
    const-string v2, "logType"

    invoke-static {}, Lcom/kingroot/kinguser/cgp;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "alert"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v0, "sessionId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebSession_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$2;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->b(Lcom/kingroot/kinguser/bin;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v2, "javascript:handleMessageFromTcs(\'sys:init\', \'%s\')"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_1
    :try_start_1
    const-string v0, "console"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 269
    :catch_0
    move-exception v0

    goto :goto_2
.end method
