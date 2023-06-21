.class public Lcom/kingroot/kinguser/ze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile Wi:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static Wj:Ljava/lang/reflect/Method;

.field private static volatile Wk:I

.field private static Wl:I

.field private static final Wm:Ljava/lang/Object;

.field private static Wn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 14
    sput v0, Lcom/kingroot/kinguser/ze;->Wk:I

    .line 15
    sput v0, Lcom/kingroot/kinguser/ze;->Wl:I

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ze;->Wm:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/ze;->Wn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/ze;->pm()Ljava/lang/Class;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/ze;->pn()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 68
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 70
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 79
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    invoke-static {p0}, Lcom/kingroot/kinguser/ze;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method private static pm()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 18
    sget-object v0, Lcom/kingroot/kinguser/ze;->Wi:Ljava/lang/Class;

    .line 19
    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/kingroot/kinguser/ze;

    monitor-enter v1

    .line 21
    :try_start_0
    sget v2, Lcom/kingroot/kinguser/ze;->Wk:I

    if-lez v2, :cond_0

    .line 22
    sget-object v0, Lcom/kingroot/kinguser/ze;->Wi:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v0, :cond_0

    .line 25
    :try_start_1
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/kingroot/kinguser/ze;->Wi:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :goto_0
    :try_start_2
    sget v2, Lcom/kingroot/kinguser/ze;->Wk:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/kingroot/kinguser/ze;->Wk:I

    .line 34
    :cond_0
    monitor-exit v1

    .line 36
    :cond_1
    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 27
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static pn()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/ze;->pm()Ljava/lang/Class;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ze;->Wj:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 47
    const-class v1, Lcom/kingroot/kinguser/ze;

    monitor-enter v1

    .line 48
    :try_start_0
    sget v0, Lcom/kingroot/kinguser/ze;->Wl:I

    if-lez v0, :cond_1

    .line 49
    sget-object v0, Lcom/kingroot/kinguser/ze;->Wj:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 51
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/ze;->Wi:Ljava/lang/Class;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ze;->Wj:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_1
    :try_start_2
    sget v0, Lcom/kingroot/kinguser/ze;->Wl:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/kingroot/kinguser/ze;->Wl:I

    .line 59
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/ze;->Wj:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static po()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    sget-object v0, Lcom/kingroot/kinguser/ze;->Wn:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 99
    sget-object v1, Lcom/kingroot/kinguser/ze;->Wm:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ze;->Wn:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 101
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sput-object v0, Lcom/kingroot/kinguser/ze;->Wn:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/kingroot/kinguser/ze;->Wn:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "ro.build.description"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ze;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ze;->Wn:Ljava/lang/String;

    .line 105
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ze;->Wn:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 106
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/ze;->Wn:Ljava/lang/String;

    .line 109
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/ze;->Wn:Ljava/lang/String;

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
