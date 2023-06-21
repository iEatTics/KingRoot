.class public Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;
.super Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/utils/system/root/service/KRootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KRootServiceImpl"
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBroadcastLock:Ljava/lang/Object;

.field private final mRootCallBackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mRootResultCallBack:Lcom/kingroot/kinguser/cbw$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl$2;

    invoke-direct {v0}, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl$2;-><init>()V

    sput-object v0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;-><init>()V

    .line 48
    const-string v0, "common_RootService_KRootServiceImpl"

    iput-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->mBroadcastLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->mRootCallBackList:Landroid/os/RemoteCallbackList;

    .line 53
    new-instance v0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl$1;-><init>(Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;)V

    iput-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->mRootResultCallBack:Lcom/kingroot/kinguser/cbw$a;

    .line 81
    invoke-static {}, Lcom/kingroot/kinguser/acm;->rL()Lcom/kingroot/kinguser/acm;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->mRootResultCallBack:Lcom/kingroot/kinguser/cbw$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/acm;->a(Lcom/kingroot/kinguser/cbw$a;)V

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/common/utils/system/root/service/KRootService$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->mBroadcastLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->mRootCallBackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public static getInstance()Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;

    return-object v0
.end method


# virtual methods
.method public closeShell()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/kingroot/kinguser/acm;->rL()Lcom/kingroot/kinguser/acm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acm;->closeShell()V

    .line 110
    return-void
.end method

.method public isRootPermition(Z)Z
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/acm;->rL()Lcom/kingroot/kinguser/acm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/acm;->isRootPermition(Z)Z

    move-result v0

    return v0
.end method

.method public isRootPermitionInBackupSu()Z
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/acm;->rL()Lcom/kingroot/kinguser/acm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acm;->isRootPermitionInBackupSu()Z

    move-result v0

    return v0
.end method

.method public registerCallBack(Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;)V
    .locals 1

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->mRootCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 96
    :cond_0
    return-void
.end method

.method public registerRootHolder(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/kingroot/kinguser/acm;->rL()Lcom/kingroot/kinguser/acm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/acm;->registerRootHolder(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public runRootCommand(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/acm;->rL()Lcom/kingroot/kinguser/acm;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/acm;->runRootCommand(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    return-object v0
.end method

.method public runRootCommandCustomTimeLimited(Ljava/lang/String;Ljava/lang/String;J)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/acm;->rL()Lcom/kingroot/kinguser/acm;

    move-result-object v0

    new-instance v1, Lcom/kingroot/common/utils/system/VTCommand;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/acm;->c(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/KmVTCmdResult;

    move-result-object v0

    return-object v0
.end method

.method public runRootCommands(Ljava/util/List;)Ljava/util/List;
    .locals 1
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
    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/acm;->rL()Lcom/kingroot/kinguser/acm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/acm;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public runRootCommandsTimeOut(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
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
    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/acm;->rL()Lcom/kingroot/kinguser/acm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/acm;->e(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public runRootVTCommands(Ljava/util/List;)Ljava/util/List;
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
    .line 149
    invoke-static {}, Lcom/kingroot/kinguser/acm;->rL()Lcom/kingroot/kinguser/acm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/acm;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public unregisterCallBack(Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;)V
    .locals 1

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->mRootCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 104
    :cond_0
    return-void
.end method
