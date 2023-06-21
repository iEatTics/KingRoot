.class public Lcom/kingroot/kinguser/root/mgr/SuNotifyService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final bfP:Lcom/kingroot/kinguser/bgy;


# instance fields
.field private bfO:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/kingroot/kinguser/bgy;

    const-string v1, "SuRequestHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bgy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/root/mgr/SuNotifyService;->bfP:Lcom/kingroot/kinguser/bgy;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/root/mgr/SuNotifyService$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/root/mgr/SuNotifyService$2;-><init>(Lcom/kingroot/kinguser/root/mgr/SuNotifyService;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/mgr/SuNotifyService;->bfO:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 2

    .prologue
    .line 97
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/kinguser/root/mgr/SuNotifyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "su_cmd"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    const-string v0, "su_cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 47
    instance-of v1, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 49
    sget-object v1, Lcom/kingroot/kinguser/root/mgr/SuNotifyService;->bfP:Lcom/kingroot/kinguser/bgy;

    new-instance v2, Lcom/kingroot/kinguser/root/mgr/SuNotifyService$1;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/root/mgr/SuNotifyService$1;-><init>(Lcom/kingroot/kinguser/root/mgr/SuNotifyService;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bgy;->post(Ljava/lang/Runnable;)Z

    .line 69
    :cond_0
    :goto_0
    invoke-virtual {p0, p3}, Lcom/kingroot/kinguser/root/mgr/SuNotifyService;->stopSelf(I)V

    .line 71
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 65
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/SuNotifyService;->bfO:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method
