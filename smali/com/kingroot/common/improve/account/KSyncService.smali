.class public Lcom/kingroot/common/improve/account/KSyncService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/improve/account/KSyncService$a;
    }
.end annotation


# static fields
.field private static final IA:Ljava/lang/Object;

.field private static IB:Lcom/kingroot/common/improve/account/KSyncService$a;

.field private static It:Lcom/kingroot/kinguser/wo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/common/improve/account/KSyncService;->IA:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/common/improve/account/KSyncService;->IB:Lcom/kingroot/common/improve/account/KSyncService$a;

    .line 39
    new-instance v0, Lcom/kingroot/common/improve/account/KSyncService$1;

    invoke-direct {v0}, Lcom/kingroot/common/improve/account/KSyncService$1;-><init>()V

    sput-object v0, Lcom/kingroot/common/improve/account/KSyncService;->It:Lcom/kingroot/kinguser/wo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 65
    :cond_0
    sget-object v0, Lcom/kingroot/common/improve/account/KSyncService;->IB:Lcom/kingroot/common/improve/account/KSyncService$a;

    invoke-virtual {v0}, Lcom/kingroot/common/improve/account/KSyncService$a;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 31
    sget-object v1, Lcom/kingroot/common/improve/account/KSyncService;->IA:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/kingroot/common/improve/account/KSyncService;->IB:Lcom/kingroot/common/improve/account/KSyncService$a;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/kingroot/common/improve/account/KSyncService$a;

    invoke-virtual {p0}, Lcom/kingroot/common/improve/account/KSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Lcom/kingroot/common/improve/account/KSyncService$a;-><init>(Lcom/kingroot/common/improve/account/KSyncService;Landroid/content/Context;Z)V

    sput-object v0, Lcom/kingroot/common/improve/account/KSyncService;->IB:Lcom/kingroot/common/improve/account/KSyncService$a;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sget-object v0, Lcom/kingroot/common/improve/account/KSyncService;->It:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wo;->ny()Z

    .line 37
    return-void

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 72
    return-void
.end method
