.class public Lcom/kingroot/common/ipc/KIpcService;
.super Lcom/kingroot/kinguser/tp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/ipc/KIpcService$KIpcStub;
    }
.end annotation


# static fields
.field private static final Jb:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/up;",
            ">;"
        }
    .end annotation
.end field

.field private static final Jc:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/common/ipc/KIpcService$KIpcStub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/kingroot/common/ipc/KIpcService;->Jb:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    new-instance v0, Lcom/kingroot/common/ipc/KIpcService$1;

    invoke-direct {v0}, Lcom/kingroot/common/ipc/KIpcService$1;-><init>()V

    sput-object v0, Lcom/kingroot/common/ipc/KIpcService;->Jc:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kingroot/kinguser/tp;-><init>()V

    return-void
.end method

.method private static cX(Ljava/lang/String;)Lcom/kingroot/kinguser/up;
    .locals 6

    .prologue
    .line 110
    sget-object v1, Lcom/kingroot/common/ipc/KIpcService;->Jb:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/up;

    .line 111
    if-nez v1, :cond_1

    .line 113
    :try_start_0
    sget-object v3, Lcom/kingroot/common/ipc/KIpcService;->Jb:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :try_start_1
    sget-object v2, Lcom/kingroot/common/ipc/KIpcService;->Jb:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/kingroot/kinguser/up;

    move-object v1, v0

    .line 115
    if-nez v1, :cond_0

    .line 116
    const-class v2, Lcom/kingroot/kinguser/up;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/kingroot/kinguser/up;

    move-object v1, v0

    .line 117
    sget-object v2, Lcom/kingroot/common/ipc/KIpcService;->Jb:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :cond_1
    :goto_0
    return-object v1

    .line 119
    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 121
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_0

    .line 125
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_0

    .line 123
    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_0

    .line 121
    :catch_5
    move-exception v2

    goto :goto_0

    .line 119
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic cY(Ljava/lang/String;)Lcom/kingroot/kinguser/up;
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/kingroot/common/ipc/KIpcService;->cX(Ljava/lang/String;)Lcom/kingroot/kinguser/up;

    move-result-object v0

    return-object v0
.end method

.method public static kK()Lcom/kingroot/common/ipc/IKIpc;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/kingroot/common/ipc/KIpcService;->Jc:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/ipc/IKIpc;

    return-object v0
.end method


# virtual methods
.method protected I(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->I(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->a(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method protected jR()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/kingroot/kinguser/tp;->jR()V

    .line 50
    return-void
.end method

.method protected onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/kingroot/common/ipc/KIpcService;->Jc:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/kingroot/kinguser/tp;->onDestroy()V

    .line 60
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/kingroot/kinguser/tp;->onStop()V

    .line 55
    return-void
.end method
