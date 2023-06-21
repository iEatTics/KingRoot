.class Loicq/wlogin_sdk/quicklogin/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Loicq/wlogin_sdk/quicklogin/d;


# direct methods
.method constructor <init>(Loicq/wlogin_sdk/quicklogin/d;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    iput-object p1, p0, Loicq/wlogin_sdk/quicklogin/f;->b:Loicq/wlogin_sdk/quicklogin/d;

    iput-object p2, p0, Loicq/wlogin_sdk/quicklogin/f;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Loicq/wlogin_sdk/quicklogin/f;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method
