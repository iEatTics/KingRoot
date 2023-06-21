.class public Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService;
.super Lcom/kingroot/kinguser/tp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;
    }
.end annotation


# static fields
.field private static afD:Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kingroot/kinguser/tp;-><init>()V

    return-void
.end method

.method public static uL()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService;->uM()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method private static uM()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService;->afD:Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService;->afD:Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;-><init>(Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$1;)V

    sput-object v0, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService;->afD:Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService;->afD:Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService;->uM()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;

    move-result-object v0

    return-object v0
.end method
