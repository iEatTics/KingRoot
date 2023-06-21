.class public Lcom/kingroot/kinguser/bin$c;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic btK:Lcom/kingroot/kinguser/bin;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bin;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 371
    if-nez p3, :cond_1

    .line 372
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    const-string v1, "#js_invoke#"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    const-string v1, "#js_invoke#"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    iget-object v2, p0, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v2}, Lcom/kingroot/kinguser/bin;->i(Lcom/kingroot/kinguser/bin;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 379
    iget-object v2, p0, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v2}, Lcom/kingroot/kinguser/bin;->i(Lcom/kingroot/kinguser/bin;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/bin$c$1;

    invoke-direct {v3, p0, v1}, Lcom/kingroot/kinguser/bin$c$1;-><init>(Lcom/kingroot/kinguser/bin$c;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 405
    :cond_2
    if-eqz p4, :cond_0

    .line 406
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    goto :goto_0

    .line 409
    :cond_3
    const-string v1, "#js_on#"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 410
    const-string v1, "#js_on#"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    iget-object v2, p0, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v2}, Lcom/kingroot/kinguser/bin;->i(Lcom/kingroot/kinguser/bin;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 413
    iget-object v2, p0, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v2}, Lcom/kingroot/kinguser/bin;->i(Lcom/kingroot/kinguser/bin;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/bin$c$2;

    invoke-direct {v3, p0, v1}, Lcom/kingroot/kinguser/bin$c$2;-><init>(Lcom/kingroot/kinguser/bin$c;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    :cond_4
    if-eqz p4, :cond_0

    .line 436
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    goto :goto_0

    .line 440
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 349
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->h(Lcom/kingroot/kinguser/bin;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 354
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 355
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->h(Lcom/kingroot/kinguser/bin;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 359
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->g(Lcom/kingroot/kinguser/bin;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->e(Lcom/kingroot/kinguser/bin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-static {v0, p2}, Lcom/kingroot/kinguser/bin;->b(Lcom/kingroot/kinguser/bin;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->f(Lcom/kingroot/kinguser/bin;)Lcom/kingroot/kinguser/ada;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bin$c;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v1}, Lcom/kingroot/kinguser/bin;->e(Lcom/kingroot/kinguser/bin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ada;->ey(Ljava/lang/String;)V

    .line 365
    :cond_2
    return-void
.end method
