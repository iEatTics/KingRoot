.class Loicq/wlogin_sdk/quicklogin/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;


# direct methods
.method constructor <init>(Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Loicq/wlogin_sdk/quicklogin/g;->d:Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;

    iput-object p2, p0, Loicq/wlogin_sdk/quicklogin/g;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Loicq/wlogin_sdk/quicklogin/g;->b:Ljava/lang/String;

    iput-object p4, p0, Loicq/wlogin_sdk/quicklogin/g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Loicq/wlogin_sdk/quicklogin/g;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Loicq/wlogin_sdk/quicklogin/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Loicq/wlogin_sdk/quicklogin/g;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Loicq/wlogin_sdk/quicklogin/g;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/quicklogin/g;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Loicq/wlogin_sdk/quicklogin/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Loicq/wlogin_sdk/quicklogin/g;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Loicq/wlogin_sdk/quicklogin/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
