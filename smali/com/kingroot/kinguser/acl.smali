.class public Lcom/kingroot/kinguser/acl;
.super Lcom/kingroot/kinguser/tu;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cbw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/tu",
        "<",
        "Lcom/kingroot/common/utils/system/root/service/IKRootService;",
        ">;",
        "Lcom/kingroot/kinguser/cbw;"
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/acl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aaw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kingroot/kinguser/cbw$a;",
            "Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/kingroot/kinguser/acl$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/acl$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/acl;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingroot/kinguser/tu;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/acl;->aaw:Ljava/util/Map;

    .line 25
    return-void
.end method

.method public static rI()Lcom/kingroot/kinguser/acl;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/kingroot/kinguser/acl;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/acl;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/root/service/IKRootService;

    .line 201
    if-nez v0, :cond_0

    move-object v0, v1

    .line 208
    :goto_0
    return-object v0

    .line 204
    :cond_0
    iget-object v2, p1, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    iget-object v3, p1, Lcom/kingroot/common/utils/system/VTCommand;->mCmdValue:Ljava/lang/String;

    iget-wide v4, p1, Lcom/kingroot/common/utils/system/VTCommand;->mTimeout:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/kingroot/common/utils/system/root/service/IKRootService;->runRootCommandCustomTimeLimited(Ljava/lang/String;Ljava/lang/String;J)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 208
    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/cbw$a;)V
    .locals 2

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Lcom/kingroot/common/utils/system/root/service/KRootServiceProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/common/utils/system/root/service/KRootServiceProxy$2;-><init>(Lcom/kingroot/kinguser/acl;Lcom/kingroot/kinguser/cbw$a;)V

    .line 52
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/root/service/IKRootService;

    .line 53
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-interface {v0, v1}, Lcom/kingroot/common/utils/system/root/service/IKRootService;->registerCallBack(Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;)V

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/acl;->aaw:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public closeShell()V
    .locals 1

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/root/service/IKRootService;

    .line 97
    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-interface {v0}, Lcom/kingroot/common/utils/system/root/service/IKRootService;->closeShell()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/acl;->g(Landroid/os/IBinder;)Lcom/kingroot/common/utils/system/root/service/IKRootService;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/root/service/IKRootService;

    .line 216
    if-nez v0, :cond_0

    move-object v0, v1

    .line 226
    :goto_0
    return-object v0

    .line 222
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/kingroot/common/utils/system/root/service/IKRootService;->runRootCommandsTimeOut(Ljava/util/List;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 226
    goto :goto_0
.end method

.method protected g(Landroid/os/IBinder;)Lcom/kingroot/common/utils/system/root/service/IKRootService;
    .locals 1

    .prologue
    .line 256
    invoke-static {p1}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/utils/system/root/service/IKRootService;

    move-result-object v0

    return-object v0
.end method

.method public isRootPermition(Z)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/root/service/IKRootService;

    .line 116
    if-nez v0, :cond_0

    move v0, v1

    .line 123
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-interface {v0, p1}, Lcom/kingroot/common/utils/system/root/service/IKRootService;->isRootPermition(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    move v0, v1

    .line 123
    goto :goto_0
.end method

.method public isRootPermitionInBackupSu()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/root/service/IKRootService;

    .line 130
    if-nez v0, :cond_0

    move v0, v1

    .line 137
    :goto_0
    return v0

    .line 133
    :cond_0
    invoke-interface {v0}, Lcom/kingroot/common/utils/system/root/service/IKRootService;->isRootPermitionInBackupSu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    move v0, v1

    .line 137
    goto :goto_0
.end method

.method protected jU()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic jV()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acl;->rJ()Lcom/kingroot/common/utils/system/root/service/IKRootService;

    move-result-object v0

    return-object v0
.end method

.method protected jW()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/common/utils/system/root/service/KRootService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public q(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCommand;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/root/service/IKRootService;

    .line 233
    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 236
    :cond_0
    invoke-interface {v0, p1}, Lcom/kingroot/common/utils/system/root/service/IKRootService;->runRootVTCommands(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 240
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected rJ()Lcom/kingroot/common/utils/system/root/service/IKRootService;
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/kingroot/common/utils/system/root/service/KRootService;->rG()Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method public runRootCommands(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/root/service/IKRootService;

    .line 186
    if-nez v0, :cond_0

    move-object v0, v1

    .line 194
    :goto_0
    return-object v0

    .line 190
    :cond_0
    invoke-interface {v0, p1}, Lcom/kingroot/common/utils/system/root/service/IKRootService;->runRootCommands(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 194
    goto :goto_0
.end method
