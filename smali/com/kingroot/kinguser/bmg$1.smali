.class final Lcom/kingroot/kinguser/bmg$1;
.super Lcom/kingroot/kinguser/bmq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bmg;->initialize(Landroid/content/Context;Lcloudsdk/SdkConfig;)Lcloudsdk/IActionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bBC:Lcloudsdk/SdkConfig;

.field private synthetic bBD:Lcom/kingroot/kinguser/bmg;

.field private synthetic bBl:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bmg;Landroid/content/Context;Lcloudsdk/SdkConfig;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kingroot/kinguser/bmg$1;->bBD:Lcom/kingroot/kinguser/bmg;

    iput-object p2, p0, Lcom/kingroot/kinguser/bmg$1;->bBl:Landroid/content/Context;

    iput-object p3, p0, Lcom/kingroot/kinguser/bmg$1;->bBC:Lcloudsdk/SdkConfig;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bmq;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg$1;->bBD:Lcom/kingroot/kinguser/bmg;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmg;->a(Lcom/kingroot/kinguser/bmg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg$1;->bBD:Lcom/kingroot/kinguser/bmg;

    iget-object v2, p0, Lcom/kingroot/kinguser/bmg$1;->bBl:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bmg;->a(Lcom/kingroot/kinguser/bmg;Landroid/content/Context;)Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg$1;->bBD:Lcom/kingroot/kinguser/bmg;

    iget-object v2, p0, Lcom/kingroot/kinguser/bmg$1;->bBC:Lcloudsdk/SdkConfig;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bmg;->a(Lcom/kingroot/kinguser/bmg;Lcloudsdk/SdkConfig;)Lcloudsdk/SdkConfig;

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg$1;->bBC:Lcloudsdk/SdkConfig;

    invoke-virtual {v0}, Lcloudsdk/SdkConfig;->isLogSwitchOn()Z

    move-result v0

    .line 77
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->jP(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bml;->c(ZLjava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg$1;->bBD:Lcom/kingroot/kinguser/bmg;

    const/16 v2, 0x1fa5

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bmg;->a(Lcom/kingroot/kinguser/bmg;I)V

    .line 83
    new-instance v0, Lcom/kingx/cloudsdk/ba;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/ba;-><init>()V

    .line 84
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/kingroot/kinguser/bmg$1;->bBD:Lcom/kingroot/kinguser/bmg;

    invoke-static {v3}, Lcom/kingroot/kinguser/bmg;->b(Lcom/kingroot/kinguser/bmg;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg$1;->bBl:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/blm;->c(Landroid/content/Context;)V

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg$1;->bBC:Lcloudsdk/SdkConfig;

    invoke-virtual {v0}, Lcloudsdk/SdkConfig;->isUseTestServer()Z

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/blo;->b(Z)V

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg$1;->bBD:Lcom/kingroot/kinguser/bmg;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmg;->b(Lcom/kingroot/kinguser/bmg;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v2, p0, Lcom/kingroot/kinguser/bmg$1;->bBD:Lcom/kingroot/kinguser/bmg;

    invoke-static {v2}, Lcom/kingroot/kinguser/bmg;->b(Lcom/kingroot/kinguser/bmg;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/bmu;->F(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg$1;->bBD:Lcom/kingroot/kinguser/bmg;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bmg;->a(Lcom/kingroot/kinguser/bmg;Z)Z

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg$1;->bBD:Lcom/kingroot/kinguser/bmg;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmg;->a(Lcom/kingroot/kinguser/bmg;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
