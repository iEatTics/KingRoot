.class Lcom/tencent/securemodule/impl/SecureService$3;
.super Lcom/kingroot/kinguser/ccw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/securemodule/impl/SecureService;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic bQT:Lcom/tencent/securemodule/impl/SecureService;

.field private c:I


# direct methods
.method constructor <init>(Lcom/tencent/securemodule/impl/SecureService;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/securemodule/impl/SecureService$3;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    iput-object p2, p0, Lcom/tencent/securemodule/impl/SecureService$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/ccw;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/securemodule/impl/SecureService$3;->c:I

    return-void
.end method

.method private b(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/securemodule/impl/SecureService$3;->c:I

    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/securemodule/impl/SecureService$3;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/tencent/securemodule/impl/SecureService$3;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService$3;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    invoke-static {v1}, Lcom/tencent/securemodule/impl/SecureService;->c(Lcom/tencent/securemodule/impl/SecureService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "2000030"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_scan_session"

    iget-object v2, p0, Lcom/tencent/securemodule/impl/SecureService$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_risk_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "key_unnkow_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService$3;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    invoke-virtual {v1, v0}, Lcom/tencent/securemodule/impl/SecureService;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService$3;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    invoke-static {v1}, Lcom/tencent/securemodule/impl/SecureService;->c(Lcom/tencent/securemodule/impl/SecureService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "2000031"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_scan_session"

    iget-object v2, p0, Lcom/tencent/securemodule/impl/SecureService$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_errcode"

    iget v2, p0, Lcom/tencent/securemodule/impl/SecureService$3;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/securemodule/impl/SecureService$3;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    invoke-virtual {v1, v0}, Lcom/tencent/securemodule/impl/SecureService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
