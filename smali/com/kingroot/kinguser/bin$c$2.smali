.class Lcom/kingroot/kinguser/bin$c$2;
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
.field final synthetic bua:Lcom/kingroot/kinguser/bin$c;

.field final synthetic bub:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bin$c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$c$2;->bua:Lcom/kingroot/kinguser/bin$c;

    iput-object p2, p0, Lcom/kingroot/kinguser/bin$c$2;->bub:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 417
    .line 420
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kingroot/kinguser/bin$c$2;->bub:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 421
    const-string v1, "sessionId"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 422
    :try_start_1
    const-string v3, "eventName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 428
    :goto_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bin$c$2;->bua:Lcom/kingroot/kinguser/bin$c;

    iget-object v2, v2, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v2}, Lcom/kingroot/kinguser/bin;->j(Lcom/kingroot/kinguser/bin;)Lcom/kingroot/kinguser/bin$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/kingroot/kinguser/bin$c$2;->bua:Lcom/kingroot/kinguser/bin$c;

    iget-object v2, v2, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v2}, Lcom/kingroot/kinguser/bin;->j(Lcom/kingroot/kinguser/bin;)Lcom/kingroot/kinguser/bin$a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/kingroot/kinguser/bin$a;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void

    .line 423
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method
