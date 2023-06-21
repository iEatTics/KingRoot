.class public Lcom/kingroot/kinguser/bin$d;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic btK:Lcom/kingroot/kinguser/bin;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bin;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 314
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->d(Lcom/kingroot/kinguser/bin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->d(Lcom/kingroot/kinguser/bin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->e(Lcom/kingroot/kinguser/bin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->f(Lcom/kingroot/kinguser/bin;)Lcom/kingroot/kinguser/ada;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v1}, Lcom/kingroot/kinguser/bin;->e(Lcom/kingroot/kinguser/bin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ada;->ey(Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bin$d$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bin$d$1;-><init>(Lcom/kingroot/kinguser/bin$d;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->b(Lcom/kingroot/kinguser/bek;)V

    .line 337
    return-void

    .line 323
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->g(Lcom/kingroot/kinguser/bin;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 325
    if-nez v0, :cond_2

    const-string v0, ""

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->f(Lcom/kingroot/kinguser/bin;)Lcom/kingroot/kinguser/ada;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v1}, Lcom/kingroot/kinguser/bin;->e(Lcom/kingroot/kinguser/bin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ada;->ey(Ljava/lang/String;)V

    goto :goto_1

    .line 315
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    iput-object p2, v0, Lcom/kingroot/kinguser/bin;->btB:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->d(Lcom/kingroot/kinguser/bin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    iget-object v1, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    iget-object v1, v1, Lcom/kingroot/kinguser/bin;->btB:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bin;->a(Lcom/kingroot/kinguser/bin;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bin;->a(Lcom/kingroot/kinguser/bin;Z)Z

    .line 300
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$d;->btK:Lcom/kingroot/kinguser/bin;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bin;->a(Lcom/kingroot/kinguser/bin;Z)Z

    .line 306
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 342
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
