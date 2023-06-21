.class Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$1;
.super Lcom/kingroot/kinguser/advance/install/aidl/ISilentInstallManager$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$1;->this$0:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;

    invoke-direct {p0}, Lcom/kingroot/kinguser/advance/install/aidl/ISilentInstallManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;)V
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 233
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 234
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$1;->this$0:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->a(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;)Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method
