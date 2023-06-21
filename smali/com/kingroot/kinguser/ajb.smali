.class public Lcom/kingroot/kinguser/ajb;
.super Lcom/kingroot/kinguser/tu;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aje;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/tu",
        "<",
        "Lcom/kingroot/kinguser/common/check/ICheckExecuteService;",
        ">;",
        "Lcom/kingroot/kinguser/aje;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ajb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final asX:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/kingroot/kinguser/ajb$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajb$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ajb;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kingroot/kinguser/tu;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ajb;->asX:Ljava/lang/Object;

    return-void
.end method

.method public static yT()Lcom/kingroot/kinguser/ajb;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/kingroot/kinguser/ajb;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ajb;

    return-object v0
.end method

.method public static yV()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ajf;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0xded

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 117
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-static {}, Lcom/kingroot/kinguser/ajj;->zl()Ljava/lang/String;

    move-result-object v10

    .line 121
    if-eqz v10, :cond_1

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/abf;->qP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    const-string v9, "u:object_r:system_file:s0"

    sget-object v11, Lcom/kingroot/kinguser/abu;->ZV:Ljava/lang/String;

    move v2, v1

    move v5, v4

    move v8, v1

    invoke-direct/range {v0 .. v11}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;-><init>(IIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v2, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;-><init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    const-string v9, "u:object_r:system_file:s0"

    sget-object v11, Lcom/kingroot/kinguser/abu;->ZW:Ljava/lang/String;

    move v2, v1

    move v5, v4

    move v8, v1

    invoke-direct/range {v0 .. v11}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;-><init>(IIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v1, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;-><init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    return-object v12
.end method


# virtual methods
.method public checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ajb;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/common/check/ICheckExecuteService;

    .line 43
    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/kingroot/kinguser/common/check/ICheckExecuteService;->checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkSync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/kingroot/kinguser/common/check/ISuCheckListener;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ajf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lcom/kingroot/kinguser/ajb;->asX:Ljava/lang/Object;

    monitor-enter v2

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ajb;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/common/check/ICheckExecuteService;

    .line 74
    if-nez v0, :cond_0

    .line 75
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 78
    :cond_0
    :try_start_1
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/common/check/ICheckExecuteService;->checkSync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;Ljava/util/List;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 79
    :catch_0
    move-exception v0

    .line 82
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ajb;->k(Landroid/os/IBinder;)Lcom/kingroot/kinguser/common/check/ICheckExecuteService;

    move-result-object v0

    return-object v0
.end method

.method public delayCheckAgain()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ajb;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/common/check/ICheckExecuteService;

    .line 57
    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/kingroot/kinguser/common/check/ICheckExecuteService;->delayCheckAgain()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected jU()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic jV()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ajb;->yU()Lcom/kingroot/kinguser/common/check/ICheckExecuteService;

    move-result-object v0

    return-object v0
.end method

.method protected jW()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/common/check/KCheckExecutorService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected k(Landroid/os/IBinder;)Lcom/kingroot/kinguser/common/check/ICheckExecuteService;
    .locals 1

    .prologue
    .line 108
    invoke-static {p1}, Lcom/kingroot/kinguser/common/check/ICheckExecuteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/common/check/ICheckExecuteService;

    move-result-object v0

    return-object v0
.end method

.method protected yU()Lcom/kingroot/kinguser/common/check/ICheckExecuteService;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/kingroot/kinguser/common/check/KCheckExecutorService;->zk()Lcom/kingroot/kinguser/common/check/ICheckExecuteService;

    move-result-object v0

    return-object v0
.end method
