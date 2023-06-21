.class Lcom/kingroot/kinguser/bin$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bin$c;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btZ:Ljava/lang/String;

.field final synthetic bua:Lcom/kingroot/kinguser/bin$c;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bin$c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$c$1;->bua:Lcom/kingroot/kinguser/bin$c;

    iput-object p2, p0, Lcom/kingroot/kinguser/bin$c$1;->btZ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 383
    .line 384
    const/4 v2, 0x0

    .line 388
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kingroot/kinguser/bin$c$1;->btZ:Ljava/lang/String;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 389
    const-string v1, "sessionId"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 390
    :try_start_1
    const-string v1, "callbackId"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 391
    const-string v1, "funcName"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 392
    :try_start_2
    const-string v5, "paramStr"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 398
    :goto_0
    iget-object v4, p0, Lcom/kingroot/kinguser/bin$c$1;->bua:Lcom/kingroot/kinguser/bin$c;

    iget-object v4, v4, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v4}, Lcom/kingroot/kinguser/bin;->j(Lcom/kingroot/kinguser/bin;)Lcom/kingroot/kinguser/bin$a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 399
    iget-object v4, p0, Lcom/kingroot/kinguser/bin$c$1;->bua:Lcom/kingroot/kinguser/bin$c;

    iget-object v4, v4, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v4}, Lcom/kingroot/kinguser/bin;->j(Lcom/kingroot/kinguser/bin;)Lcom/kingroot/kinguser/bin$a;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/kingroot/kinguser/bin$a;->d(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_0
    return-void

    .line 393
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v3, v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0
.end method
