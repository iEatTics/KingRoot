.class final Lcom/kingroot/kinguser/bqm$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bqm;->a(Lcom/kingroot/kinguser/bno;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/kingroot/kinguser/bwc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic bIC:Lcom/kingroot/kinguser/bno;

.field final synthetic bID:Landroid/os/Bundle;

.field final synthetic bIE:Lcom/kingroot/kinguser/bwc;

.field final synthetic c:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bno;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/kingroot/kinguser/bwc;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/kingroot/kinguser/bqm$1;->bIC:Lcom/kingroot/kinguser/bno;

    iput-object p2, p0, Lcom/kingroot/kinguser/bqm$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/kingroot/kinguser/bqm$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingroot/kinguser/bqm$1;->bID:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/kingroot/kinguser/bqm$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bqm$1;->bIC:Lcom/kingroot/kinguser/bno;

    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/bqm$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/bqm$1;->bID:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/kingroot/kinguser/bqm$1;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bqm;->a(Lcom/kingroot/kinguser/bno;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bwc;->d(Lorg/json/JSONObject;)V

    .line 332
    const-string v0, "openSDK_LOG.HttpUtils"

    const-string v1, "OpenApi onComplete"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/kingroot/kinguser/bqm$b; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/kingroot/kinguser/bqm$a; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bwc;->a(Ljava/net/MalformedURLException;)V

    .line 337
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync MalformedURLException"

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bpy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 339
    :catch_1
    move-exception v0

    .line 340
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bwc;->a(Lorg/apache/http/conn/ConnectTimeoutException;)V

    .line 342
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync onConnectTimeoutException"

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bpy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 344
    :catch_2
    move-exception v0

    .line 345
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bwc;->a(Ljava/net/SocketTimeoutException;)V

    .line 347
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync onSocketTimeoutException"

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bpy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 349
    :catch_3
    move-exception v0

    .line 350
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bwc;->a(Lcom/kingroot/kinguser/bqm$b;)V

    .line 352
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync onNetworkUnavailableException"

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bpy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 354
    :catch_4
    move-exception v0

    .line 355
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bwc;->a(Lcom/kingroot/kinguser/bqm$a;)V

    .line 357
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync onHttpStatusException"

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bpy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 359
    :catch_5
    move-exception v0

    .line 360
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bwc;->b(Ljava/io/IOException;)V

    .line 362
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync IOException"

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bpy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 364
    :catch_6
    move-exception v0

    .line 365
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bwc;->a(Lorg/json/JSONException;)V

    .line 367
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync JSONException"

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bpy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 369
    :catch_7
    move-exception v0

    .line 370
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/kingroot/kinguser/bqm$1;->bIE:Lcom/kingroot/kinguser/bwc;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bwc;->g(Ljava/lang/Exception;)V

    .line 372
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync onUnknowException"

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bpy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
