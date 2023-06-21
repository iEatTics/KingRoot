.class Lcom/tencent/securemodule/impl/SecureService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/securemodule/impl/SecureService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bQS:Landroid/content/Intent;

.field final synthetic bQT:Lcom/tencent/securemodule/impl/SecureService;


# direct methods
.method constructor <init>(Lcom/tencent/securemodule/impl/SecureService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    iput-object p2, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQS:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "2000010"

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQS:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQS:Landroid/content/Intent;

    const-string v1, "key_scan_session"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQS:Landroid/content/Intent;

    const-string v2, "key_scan_pkgnames"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQS:Landroid/content/Intent;

    const-string v3, "key_scan_apkpaths"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    invoke-static {v3, v0, v1, v2}, Lcom/tencent/securemodule/impl/SecureService;->a(Lcom/tencent/securemodule/impl/SecureService;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    invoke-static {v0}, Lcom/tencent/securemodule/impl/SecureService;->a(Lcom/tencent/securemodule/impl/SecureService;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    invoke-virtual {v0}, Lcom/tencent/securemodule/impl/SecureService;->stopSelf()V

    iget-object v0, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    invoke-static {v0}, Lcom/tencent/securemodule/impl/SecureService;->b(Lcom/tencent/securemodule/impl/SecureService;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "2000011"

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQS:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQS:Landroid/content/Intent;

    const-string v1, "key_with_download_listener"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQS:Landroid/content/Intent;

    const-string v2, "key_auto_install"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    const-string v3, "http://fwd.3g.qq.com:8080/forward.jsp?bid=882"

    invoke-static {v2, v3, v0, v1}, Lcom/tencent/securemodule/impl/SecureService;->a(Lcom/tencent/securemodule/impl/SecureService;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    invoke-virtual {v0}, Lcom/tencent/securemodule/impl/SecureService;->stopSelf()V

    iget-object v0, p0, Lcom/tencent/securemodule/impl/SecureService$1;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    invoke-static {v0}, Lcom/tencent/securemodule/impl/SecureService;->b(Lcom/tencent/securemodule/impl/SecureService;)V

    goto :goto_1
.end method
