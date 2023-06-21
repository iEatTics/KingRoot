.class public Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;
    }
.end annotation


# instance fields
.field private Hf:Landroid/os/IBinder;

.field private final TAG:Ljava/lang/String;

.field private anB:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    const-string v0, "commonsilent_install_service"

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->TAG:Ljava/lang/String;

    .line 229
    new-instance v0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$1;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->Hf:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;)Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->anB:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Au()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    sget-object v1, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 221
    const-string v1, "silent_install_log_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->a(Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->fK(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private fK(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->Hf:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 202
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "si_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 205
    new-instance v1, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;-><init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService;->anB:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;

    .line 206
    return-void
.end method
