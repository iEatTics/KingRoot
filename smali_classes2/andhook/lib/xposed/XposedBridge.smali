.class public final Landhook/lib/xposed/XposedBridge;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;,
        Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;
    }
.end annotation


# static fields
.field public static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String; = "AndHook"

.field private static final sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/reflect/Member;",
            "Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landhook/lib/xposed/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    sput-object v0, Landhook/lib/xposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landhook/lib/xposed/XposedBridge;->sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Landhook/lib/AndHook;->ensureNativeLibraryLoaded(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/Object;
    .locals 1

    .line 23
    sget-object v0, Landhook/lib/xposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public static getBackupSlot(Ljava/lang/reflect/Member;)I
    .locals 1

    .line 273
    sget-object v0, Landhook/lib/xposed/XposedBridge;->sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;

    if-eqz p0, :cond_0

    .line 274
    iget p0, p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static handleHookedMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 197
    check-cast p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;

    .line 199
    iget-object v0, p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->callbacks:Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v0}, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object v0

    .line 200
    array-length v1, v0

    if-nez v1, :cond_0

    .line 202
    iget p0, p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    invoke-static {p0, p1, p2}, Landhook/lib/xposed/XposedBridge;->invokeOriginalMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 205
    :cond_0
    new-instance v2, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;

    invoke-direct {v2}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;-><init>()V

    .line 206
    iget v3, p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    iput v3, v2, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->slot:I

    .line 207
    iget-object v3, p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->method:Ljava/lang/reflect/Member;

    iput-object v3, v2, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 208
    iput-object p1, v2, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 209
    iput-object p2, v2, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 215
    :cond_1
    :try_start_0
    aget-object v3, v0, p2

    check-cast v3, Landhook/lib/xposed/XC_MethodHook;

    invoke-virtual {v3, v2}, Landhook/lib/xposed/XC_MethodHook;->beforeHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iget-boolean v3, v2, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-eqz v3, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 217
    invoke-static {v3}, Landhook/lib/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 220
    invoke-virtual {v2, v3}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 221
    iput-boolean p1, v2, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    :cond_2
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v1, :cond_1

    .line 233
    :goto_0
    iget-boolean p1, v2, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-nez p1, :cond_3

    .line 235
    :try_start_1
    iget p0, p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    iget-object p1, v2, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v1, v2, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Landhook/lib/xposed/XposedBridge;->invokeOriginalMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 237
    invoke-virtual {v2, p0}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    add-int/lit8 p2, p2, -0x1

    .line 244
    :cond_4
    invoke-virtual {v2}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 245
    invoke-virtual {v2}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    .line 248
    :try_start_2
    aget-object v1, v0, p2

    check-cast v1, Landhook/lib/xposed/XC_MethodHook;

    invoke-virtual {v1, v2}, Landhook/lib/xposed/XC_MethodHook;->afterHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 250
    invoke-static {v1}, Landhook/lib/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    if-nez p1, :cond_5

    .line 254
    invoke-virtual {v2, p0}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 256
    :cond_5
    invoke-virtual {v2, p1}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_4

    .line 261
    invoke-virtual {v2}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result p0

    if-nez p0, :cond_6

    .line 264
    invoke-virtual {v2}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 262
    :cond_6
    invoke-virtual {v2}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static hookAllConstructors(Ljava/lang/Class;Landhook/lib/xposed/XC_MethodHook;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landhook/lib/xposed/XC_MethodHook;",
            ")",
            "Ljava/util/HashSet<",
            "Landhook/lib/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 186
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 187
    invoke-static {v3, p1}, Landhook/lib/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Landhook/lib/xposed/XC_MethodHook;)Landhook/lib/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static hookAllMethods(Ljava/lang/Class;Landhook/lib/xposed/XC_MethodHook;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landhook/lib/xposed/XC_MethodHook;",
            ")",
            "Ljava/util/HashSet<",
            "Landhook/lib/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 149
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 150
    invoke-static {v3, p1}, Landhook/lib/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Landhook/lib/xposed/XC_MethodHook;)Landhook/lib/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Landhook/lib/xposed/XC_MethodHook;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Landhook/lib/xposed/XC_MethodHook;",
            ")",
            "Ljava/util/HashSet<",
            "Landhook/lib/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 169
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 170
    invoke-interface {v3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    invoke-static {v3, p2}, Landhook/lib/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Landhook/lib/xposed/XC_MethodHook;)Landhook/lib/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static hookMethod(Ljava/lang/reflect/Member;Landhook/lib/xposed/XC_MethodHook;)Landhook/lib/xposed/XC_MethodHook$Unhook;
    .locals 3

    .line 78
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only methods and constructors can be hooked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 84
    sget-object v0, Landhook/lib/xposed/XposedBridge;->sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;

    if-nez v0, :cond_5

    .line 86
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 89
    :cond_2
    new-instance v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;

    invoke-static {p0}, Landhook/lib/AndHook;->backup(Ljava/lang/reflect/Member;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;-><init>(Ljava/lang/reflect/Member;ILandhook/lib/xposed/XposedBridge$1;)V

    .line 90
    iget v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 93
    iget-object v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->callbacks:Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v1, p1}, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->add(Ljava/lang/Object;)Z

    .line 94
    iget v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    invoke-static {p0, v0, v1}, Landhook/lib/AndHook;->hook(Ljava/lang/reflect/Member;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    sget-object v1, Landhook/lib/xposed/XposedBridge;->sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to hook methods: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to backup methods: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_5
    iget-object v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->method:Ljava/lang/reflect/Member;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 103
    iget-object p0, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->callbacks:Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {p0, p1}, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_1
    new-instance p0, Landhook/lib/xposed/XC_MethodHook$Unhook;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->method:Ljava/lang/reflect/Member;

    iget v0, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    invoke-direct {p0, p1, v1, v0}, Landhook/lib/xposed/XC_MethodHook$Unhook;-><init>(Landhook/lib/xposed/XC_MethodHook;Ljava/lang/reflect/Member;I)V

    return-object p0

    .line 101
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected same methods within difference CL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot hook abstract methods: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static invokeOriginalMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 299
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 290
    invoke-static {p0}, Landhook/lib/xposed/XposedBridge;->getBackupSlot(Ljava/lang/reflect/Member;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 292
    invoke-static {p0, p1, p2}, Landhook/lib/xposed/XposedBridge;->invokeOriginalMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AndHook"

    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
    .locals 1

    .line 60
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AndHook"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static unhookMethod(Ljava/lang/reflect/Member;Landhook/lib/xposed/XC_MethodHook;)V
    .locals 1

    .line 117
    sget-object v0, Landhook/lib/xposed/XposedBridge;->sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;

    if-eqz p0, :cond_0

    .line 119
    iget-object p0, p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->callbacks:Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {p0, p1}, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static unhookMethod(Ljava/lang/reflect/Member;I)Z
    .locals 1

    .line 129
    invoke-static {p1, p0}, Landhook/lib/AndHook;->restore(ILjava/lang/reflect/Member;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    sget-object v0, Landhook/lib/xposed/XposedBridge;->sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return p1
.end method
