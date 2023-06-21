.class public Lcom/kingroot/kinguser/ayb$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ayb;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ayb;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kingroot/kinguser/ayb$a;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 102
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$a;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->a(Lcom/kingroot/kinguser/ayb;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$a;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->a(Lcom/kingroot/kinguser/ayb;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$a;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->b(Lcom/kingroot/kinguser/ayb;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$a;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->b(Lcom/kingroot/kinguser/ayb;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/ayb$a$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ayb$a$1;-><init>(Lcom/kingroot/kinguser/ayb$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 134
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
