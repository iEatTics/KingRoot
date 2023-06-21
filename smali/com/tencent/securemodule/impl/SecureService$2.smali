.class Lcom/tencent/securemodule/impl/SecureService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kingroot/kinguser/ccz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/securemodule/impl/SecureService;->a(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic bQT:Lcom/tencent/securemodule/impl/SecureService;


# direct methods
.method constructor <init>(Lcom/tencent/securemodule/impl/SecureService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/securemodule/impl/SecureService$2;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    iput-boolean p2, p0, Lcom/tencent/securemodule/impl/SecureService$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/securemodule/impl/SecureService$2;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/securemodule/impl/SecureService$2;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    const-string v1, "2000025"

    invoke-static {v0, v1, p1}, Lcom/tencent/securemodule/impl/SecureService;->a(Lcom/tencent/securemodule/impl/SecureService;Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/securemodule/impl/SecureService$2;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/securemodule/impl/SecureService$2;->bQT:Lcom/tencent/securemodule/impl/SecureService;

    const-string v1, "2000026"

    invoke-static {v0, v1, p1}, Lcom/tencent/securemodule/impl/SecureService;->a(Lcom/tencent/securemodule/impl/SecureService;Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
