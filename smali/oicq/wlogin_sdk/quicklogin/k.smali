.class Loicq/wlogin_sdk/quicklogin/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Loicq/wlogin_sdk/quicklogin/j;


# direct methods
.method constructor <init>(Loicq/wlogin_sdk/quicklogin/j;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    iput-object p1, p0, Loicq/wlogin_sdk/quicklogin/k;->b:Loicq/wlogin_sdk/quicklogin/j;

    iput-object p2, p0, Loicq/wlogin_sdk/quicklogin/k;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewLoader;->sslErrorProcessed:Z

    iget-object v0, p0, Loicq/wlogin_sdk/quicklogin/k;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
