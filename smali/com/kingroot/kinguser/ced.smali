.class public final Lcom/kingroot/kinguser/ced;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bXQ:Lcom/kingroot/kinguser/ced;


# instance fields
.field private bXR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/cdw;",
            ">;",
            "Lcom/kingroot/kinguser/cdw;",
            ">;"
        }
    .end annotation
.end field

.field private bXS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/cdw;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Lcom/kingroot/kinguser/cdw;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/ced;->bXQ:Lcom/kingroot/kinguser/ced;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ced;->bXR:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ced;->bXS:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ced;->mLock:Ljava/lang/Object;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ced;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static akV()Lcom/kingroot/kinguser/ced;
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/kingroot/kinguser/ced;->bXQ:Lcom/kingroot/kinguser/ced;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lcom/kingroot/kinguser/ced;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ced;->bXQ:Lcom/kingroot/kinguser/ced;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    .line 37
    new-instance v2, Lcom/kingroot/kinguser/ced;

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/ced;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/kingroot/kinguser/ced;->bXQ:Lcom/kingroot/kinguser/ced;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ced;->bXQ:Lcom/kingroot/kinguser/ced;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static j(Ljava/lang/Class;)Lcom/kingroot/kinguser/cec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/kingroot/kinguser/cec;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/ced;->akV()Lcom/kingroot/kinguser/ced;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ced;->k(Ljava/lang/Class;)Lcom/kingroot/kinguser/cec;

    move-result-object v0

    return-object v0
.end method

.method private k(Ljava/lang/Class;)Lcom/kingroot/kinguser/cec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/kingroot/kinguser/cec;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the param of getManager can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/ced;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ced;->bXR:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cec;

    .line 68
    if-nez v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/kingroot/kinguser/ced;->bXS:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 70
    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    if-nez v0, :cond_2

    .line 77
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cec;

    .line 78
    iget-object v1, p0, Lcom/kingroot/kinguser/ced;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cec;->I(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cec;->aka()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 81
    iget-object v1, p0, Lcom/kingroot/kinguser/ced;->bXR:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    return-object v0

    .line 82
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cec;->aka()I

    move-result v1

    if-nez v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/kingroot/kinguser/ced;->bXS:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
