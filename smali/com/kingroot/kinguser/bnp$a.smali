.class Lcom/kingroot/kinguser/bnp$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bnp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic bEK:Lcom/kingroot/kinguser/bnp;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/bnp;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bnp;Lcom/kingroot/kinguser/bnp$1;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bnp$a;-><init>(Lcom/kingroot/kinguser/bnp;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 419
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 420
    const-string v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->onPageFinished, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->g(Lcom/kingroot/kinguser/bnp;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->e(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bql;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->e(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bql;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bql;->setVisibility(I)V

    .line 428
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->n(Lcom/kingroot/kinguser/bnp;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->p(Lcom/kingroot/kinguser/bnp;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 398
    const-string v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->onPageStarted, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 401
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->g(Lcom/kingroot/kinguser/bnp;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bnp;->a(Lcom/kingroot/kinguser/bnp;J)J

    .line 406
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->i(Lcom/kingroot/kinguser/bnp;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->n(Lcom/kingroot/kinguser/bnp;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->p(Lcom/kingroot/kinguser/bnp;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bnp;->i(Lcom/kingroot/kinguser/bnp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/bnp;->c(Lcom/kingroot/kinguser/bnp;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    new-instance v0, Lcom/kingroot/kinguser/bnp$d;

    iget-object v1, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bnp;->i(Lcom/kingroot/kinguser/bnp;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bnp$d;-><init>(Lcom/kingroot/kinguser/bnp;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v1}, Lcom/kingroot/kinguser/bnp;->p(Lcom/kingroot/kinguser/bnp;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v1, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v1}, Lcom/kingroot/kinguser/bnp;->n(Lcom/kingroot/kinguser/bnp;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 415
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 362
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->onReceivedError, errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->a(Lcom/kingroot/kinguser/bnp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bqt;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->f(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bnp$b;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bwf;

    const/16 v2, 0x2329

    const-string v3, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-direct {v1, v2, v3, p4}, Lcom/kingroot/kinguser/bwf;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bnp$b;->onError(Lcom/kingroot/kinguser/bwf;)V

    .line 367
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnp;->dismiss()V

    .line 394
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->i(Lcom/kingroot/kinguser/bnp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 372
    if-nez v0, :cond_2

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bnp;->j(Lcom/kingroot/kinguser/bnp;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 375
    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bnp;->k(Lcom/kingroot/kinguser/bnp;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bnp;->l(Lcom/kingroot/kinguser/bnp;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->m(Lcom/kingroot/kinguser/bnp;)I

    .line 379
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->n(Lcom/kingroot/kinguser/bnp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bnp$a$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bnp$a$1;-><init>(Lcom/kingroot/kinguser/bnp$a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->e(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bql;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v1}, Lcom/kingroot/kinguser/bnp;->o(Lcom/kingroot/kinguser/bnp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bql;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->f(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bnp$b;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bwf;

    invoke-direct {v1, p2, p3, p4}, Lcom/kingroot/kinguser/bwf;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bnp$b;->onError(Lcom/kingroot/kinguser/bwf;)V

    .line 393
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnp;->dismiss()V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 439
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->f(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bnp$b;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bwf;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    const-string v3, "\u8bf7\u6c42\u4e0d\u5408\u6cd5\uff0c\u8bf7\u68c0\u67e5\u624b\u673a\u5b89\u5168\u8bbe\u7f6e\uff0c\u5982\u7cfb\u7edf\u65f6\u95f4\u3001\u4ee3\u7406\u7b49\u3002"

    const-string v4, "ssl error"

    invoke-direct {v1, v2, v3, v4}, Lcom/kingroot/kinguser/bwf;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bnp$b;->onError(Lcom/kingroot/kinguser/bwf;)V

    .line 441
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnp;->dismiss()V

    .line 442
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 272
    const-string v2, "openSDK_LOG.AuthDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->Redirect URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bpy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "auth://browser"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 274
    invoke-static {p2}, Lcom/kingroot/kinguser/bqt;->mT(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 277
    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    iget-object v3, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v3}, Lcom/kingroot/kinguser/bnp;->b(Lcom/kingroot/kinguser/bnp;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bnp;->a(Lcom/kingroot/kinguser/bnp;Z)Z

    .line 279
    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bnp;->c(Lcom/kingroot/kinguser/bnp;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    move v0, v1

    .line 356
    :goto_1
    return v0

    .line 281
    :cond_1
    const-string v2, "fail_cb"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    const-string v3, "fail_cb"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/kingroot/kinguser/bnp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_2
    const-string v2, "fall_to_wv"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 286
    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->d(Lcom/kingroot/kinguser/bnp;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_3

    const-string v0, "&"

    :goto_2
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/bnp;->a(Lcom/kingroot/kinguser/bnp;Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    const-string v2, "browser_error=1"

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bnp;->a(Lcom/kingroot/kinguser/bnp;Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->e(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bql;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bnp;->d(Lcom/kingroot/kinguser/bnp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bql;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_3
    const-string v0, "?"

    goto :goto_2

    .line 292
    :cond_4
    const-string v2, "redir"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_0

    .line 294
    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bnp;->e(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bql;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bql;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_5
    const-string v2, "auth://tauth.qq.com/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 300
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->f(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bnp$b;

    move-result-object v0

    invoke-static {p2}, Lcom/kingroot/kinguser/bqt;->mT(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bnp$b;->onComplete(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnp;->dismiss()V

    move v0, v1

    .line 302
    goto :goto_1

    .line 303
    :cond_6
    const-string v2, "auth://cancel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->f(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bnp$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnp$b;->onCancel()V

    .line 305
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnp;->dismiss()V

    move v0, v1

    .line 306
    goto/16 :goto_1

    .line 307
    :cond_7
    const-string v2, "auth://close"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnp;->dismiss()V

    move v0, v1

    .line 310
    goto/16 :goto_1

    .line 311
    :cond_8
    const-string v2, "download://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 314
    :try_start_0
    const-string v0, "download://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 315
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 316
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->a(Lcom/kingroot/kinguser/bnp;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v0, v1

    .line 321
    goto/16 :goto_1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    const-string v2, "openSDK_LOG.AuthDialog"

    const-string v3, "-->start download activity exception, e: "

    invoke-static {v2, v3, v0}, Lcom/kingroot/kinguser/bpy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 322
    :cond_9
    const-string v2, "auth://progress"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 325
    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    .line 328
    goto/16 :goto_1

    .line 329
    :cond_a
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 330
    if-nez v0, :cond_c

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->g(Lcom/kingroot/kinguser/bnp;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->e(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bql;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bql;->setVisibility(I)V

    :cond_b
    :goto_4
    move v0, v1

    .line 338
    goto/16 :goto_1

    .line 334
    :cond_c
    if-ne v0, v1, :cond_b

    .line 336
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->g(Lcom/kingroot/kinguser/bnp;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 339
    :catch_1
    move-exception v0

    move v0, v1

    .line 340
    goto/16 :goto_1

    .line 342
    :cond_d
    const-string v2, "auth://onLoginSubmit"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 344
    :try_start_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 347
    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/bnp;->b(Lcom/kingroot/kinguser/bnp;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_e
    :goto_5
    move v0, v1

    .line 350
    goto/16 :goto_1

    .line 351
    :cond_f
    iget-object v2, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bnp;->h(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bqy;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/bnp$a;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v3}, Lcom/kingroot/kinguser/bnp;->e(Lcom/kingroot/kinguser/bnp;)Lcom/kingroot/kinguser/bql;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/kingroot/kinguser/bqy;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    .line 352
    goto/16 :goto_1

    .line 355
    :cond_10
    const-string v1, "openSDK_LOG.AuthDialog"

    const-string v2, "-->Redirect URL: return false"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 348
    :catch_2
    move-exception v0

    goto :goto_5
.end method
