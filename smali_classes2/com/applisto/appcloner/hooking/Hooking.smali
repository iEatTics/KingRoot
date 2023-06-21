.class public Lcom/applisto/appcloner/hooking/Hooking;
.super Ljava/lang/Object;
.source "Hooking.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sHookExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sHookingInited:Z

.field private static sUseSandHook:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/applisto/appcloner/hooking/Hooking;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static addHookClass(Ljava/lang/Class;)V
    .locals 6

    .line 114
    sget-object v0, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHookClass; hookWrapperClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_0
    invoke-static {}, Lcom/applisto/appcloner/hooking/Hooking;->useSandHook()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Class;

    aput-object p0, v0, v2

    .line 119
    invoke-static {v0}, Lcom/swift/sandhook/SandHook;->addHookClass([Ljava/lang/Class;)V

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 122
    invoke-static {v0, p0}, Lcom/swift/sandhook/wrapper/HookWrapper;->getTargetHookClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 126
    invoke-static {v3}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 128
    invoke-static {v0, v3, p0}, Lcom/swift/sandhook/wrapper/HookWrapper;->getHookMethods(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    .line 130
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    .line 131
    iget-object v3, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 132
    invoke-static {v3}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 135
    iget-object v3, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    check-cast v3, Ljava/lang/reflect/Method;

    .line 136
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 138
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    const-class v3, Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Class;

    .line 141
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    .line 142
    iget-object v4, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hook:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hook:Ljava/lang/reflect/Method;

    .line 143
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 144
    iput-object v3, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hook:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 146
    :try_start_2
    sget-object v4, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 151
    :cond_1
    :goto_1
    sget-object v3, Lcom/applisto/appcloner/hooking/Hooking;->sHookExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_2

    .line 152
    sget-object v3, Lcom/applisto/appcloner/hooking/Hooking;->sHookExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/applisto/appcloner/hooking/Hooking$2;

    invoke-direct {v4, v0}, Lcom/applisto/appcloner/hooking/Hooking$2;-><init>(Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 160
    :cond_2
    iget-object v3, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    iget-object v0, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hook:Ljava/lang/reflect/Method;

    invoke-static {v3, v0}, Landhook/lib/HookHelper;->hook(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 124
    :cond_3
    new-instance v0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find target hook class for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    .line 165
    sget-object v0, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHookClass; t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public static varargs callInstanceOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 184
    invoke-static {}, Lcom/applisto/appcloner/hooking/Hooking;->useSandHook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p0, p1, p2}, Lcom/swift/sandhook/SandHook;->callOriginByBackup(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 189
    :cond_0
    invoke-static {p1, p2}, Landhook/lib/HookHelper;->invokeObjectOrigin(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs callStaticOrigin(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/applisto/appcloner/hooking/Hooking;->useSandHook()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p0, v1, p1}, Lcom/swift/sandhook/SandHook;->callOriginByBackup(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 177
    :cond_0
    invoke-static {v1, p1}, Landhook/lib/HookHelper;->invokeObjectOrigin(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getAbis()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 73
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initHooking(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/applisto/appcloner/hooking/Hooking;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-boolean v1, Lcom/applisto/appcloner/hooking/Hooking;->sHookingInited:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 82
    sput-boolean v1, Lcom/applisto/appcloner/hooking/Hooking;->sHookingInited:Z

    .line 84
    invoke-static {}, Lcom/applisto/appcloner/hooking/Hooking;->useSandHook()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 87
    :try_start_1
    sget-object v2, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    const-string v3, "initHooking; SandHook"

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/swift/sandhook/SandHookConfig;->SELF_PACKAGE_NAME:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/swift/sandhook/SandHook;->disableVMInline()Z

    .line 90
    sget-object v2, Lcom/swift/sandhook/SandHookConfig;->SELF_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/swift/sandhook/SandHook;->tryDisableProfile(Ljava/lang/String;)Z

    .line 91
    invoke-static {v1}, Lcom/swift/sandhook/SandHook;->disableDex2oatInline(Z)Z

    .line 92
    sget v2, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 93
    invoke-static {}, Lcom/swift/sandhook/SandHook;->passApiCheck()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    .line 97
    :try_start_2
    sget-object v3, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/applisto/appcloner/hooking/Hooking;->sUseSandHook:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 104
    :cond_1
    :try_start_3
    sget-object v1, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    const-string v2, "initHooking; AndHook"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/swift/sandhook/SandHookConfig;->SELF_PACKAGE_NAME:Ljava/lang/String;

    const/4 p0, 0x0

    .line 106
    invoke-static {p0}, Landhook/lib/AndHook;->ensureNativeLibraryLoaded(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 108
    :try_start_4
    sget-object v1, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 111
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized useSandHook()Z
    .locals 8

    const-class v0, Lcom/applisto/appcloner/hooking/Hooking;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/applisto/appcloner/hooking/Hooking;->sUseSandHook:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/applisto/appcloner/hooking/Hooking;->sUseSandHook:Ljava/lang/Boolean;

    .line 44
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    .line 45
    invoke-static {}, Lcom/applisto/appcloner/hooking/Hooking;->getAbis()Ljava/util/List;

    move-result-object v2

    .line 46
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "x86"

    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    const-string v3, "x86_64"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 48
    :goto_2
    sget-object v5, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "useSandHook; primaryAbi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", x86: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 49
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/applisto/appcloner/hooking/Hooking;->sUseSandHook:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/applisto/appcloner/hooking/Hooking;->sHookExecutor:Ljava/util/concurrent/ExecutorService;

    .line 54
    sget-object v1, Lcom/applisto/appcloner/hooking/Hooking;->sHookExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/applisto/appcloner/hooking/Hooking$1;

    invoke-direct {v2}, Lcom/applisto/appcloner/hooking/Hooking$1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 66
    :cond_4
    sget-object v1, Lcom/applisto/appcloner/hooking/Hooking;->sUseSandHook:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
