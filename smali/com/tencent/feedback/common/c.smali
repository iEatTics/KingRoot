.class public final Lcom/tencent/feedback/common/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static E:Lcom/tencent/feedback/common/c;

.field private static W:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static X:Ljava/lang/reflect/Method;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/feedback/proguard/p;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/lang/Boolean;

.field private final F:J

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:I

.field private J:I

.field private K:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final M:Ljava/lang/Object;

.field private final N:Ljava/lang/Object;

.field private final O:Ljava/lang/Object;

.field private final P:Ljava/lang/Object;

.field private final Q:Ljava/lang/Object;

.field private final R:Ljava/lang/Object;

.field private final S:Ljava/lang/Object;

.field private final T:Ljava/lang/Object;

.field private final U:Ljava/lang/Object;

.field private final V:Ljava/lang/Object;

.field private final a:Landroid/content/Context;

.field private final b:B

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:J

.field private v:J

.field private w:J

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/feedback/common/PlugInInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/tencent/feedback/common/c;->E:Lcom/tencent/feedback/common/c;

    .line 76
    sput-object v0, Lcom/tencent/feedback/common/c;->W:Ljava/lang/Class;

    .line 77
    sput-object v0, Lcom/tencent/feedback/common/c;->X:Ljava/lang/reflect/Method;

    .line 81
    :try_start_0
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    sput-object v0, Lcom/tencent/feedback/common/c;->W:Ljava/lang/Class;

    const-string v1, "putKeyValueToNative"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/feedback/common/c;->X:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v1, "eup"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "10000"

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->j:Ljava/lang/String;

    .line 31
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->k:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/feedback/common/c;->l:J

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->m:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->n:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->o:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->p:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->q:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->r:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->s:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->t:Ljava/lang/String;

    .line 43
    iput-wide v4, p0, Lcom/tencent/feedback/common/c;->u:J

    .line 44
    iput-wide v4, p0, Lcom/tencent/feedback/common/c;->v:J

    .line 45
    iput-wide v4, p0, Lcom/tencent/feedback/common/c;->w:J

    .line 46
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->x:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->y:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->z:Ljava/util/Map;

    .line 49
    iput-boolean v3, p0, Lcom/tencent/feedback/common/c;->A:Z

    .line 50
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->B:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->D:Ljava/lang/Boolean;

    .line 55
    iput-boolean v3, p0, Lcom/tencent/feedback/common/c;->G:Z

    .line 56
    iput-object v2, p0, Lcom/tencent/feedback/common/c;->H:Ljava/lang/String;

    .line 58
    iput v6, p0, Lcom/tencent/feedback/common/c;->I:I

    .line 59
    iput v6, p0, Lcom/tencent/feedback/common/c;->J:I

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->K:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->L:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->M:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->N:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->O:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->P:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->Q:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->R:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->S:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->T:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->U:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->V:Ljava/lang/Object;

    .line 103
    const-string v0, "rqdp{  init cominfo}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 104
    if-nez p1, :cond_1

    move-object v0, p1

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    .line 105
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/d;

    .line 107
    iput-byte v3, p0, Lcom/tencent/feedback/common/c;->b:B

    .line 108
    invoke-static {p1}, Lcom/tencent/feedback/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->c:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/tencent/feedback/common/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->d:Ljava/lang/String;

    .line 110
    const-string v0, "1.9.14"

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->e:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/tencent/feedback/common/d;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->f:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/tencent/feedback/common/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->g:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/feedback/common/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/feedback/common/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->h:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/feedback/common/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/common/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/feedback/common/c;->F:J

    .line 117
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->i:Ljava/lang/String;

    .line 118
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0
.end method

.method private declared-synchronized Q()Z
    .locals 1

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/common/c;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a()Lcom/tencent/feedback/common/c;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/tencent/feedback/common/c;->E:Lcom/tencent/feedback/common/c;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/feedback/common/c;
    .locals 2

    .prologue
    .line 125
    const-class v1, Lcom/tencent/feedback/common/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/c;->E:Lcom/tencent/feedback/common/c;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/tencent/feedback/common/c;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/common/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/feedback/common/c;->E:Lcom/tencent/feedback/common/c;

    .line 128
    :cond_0
    sget-object v0, Lcom/tencent/feedback/common/c;->E:Lcom/tencent/feedback/common/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 91
    sget-object v0, Lcom/tencent/feedback/common/c;->W:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/feedback/common/c;->X:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 98
    :goto_0
    return v0

    .line 95
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/c;->X:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/tencent/feedback/common/c;->W:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v2, "eup"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 98
    goto :goto_0
.end method

.method private declared-synchronized c(Z)V
    .locals 1

    .prologue
    .line 368
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/feedback/common/c;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/d;

    invoke-static {}, Lcom/tencent/feedback/common/d;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->B:Ljava/lang/String;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/feedback/proguard/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->C:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final D()Z
    .locals 2

    .prologue
    .line 452
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->U:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->D:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/i;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/feedback/common/i;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->D:Ljava/lang/Boolean;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final E()J
    .locals 2

    .prologue
    .line 461
    iget-wide v0, p0, Lcom/tencent/feedback/common/c;->F:J

    return-wide v0
.end method

.method public final F()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/tencent/feedback/common/c;->G:Z

    return v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized I()I
    .locals 1

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/feedback/common/c;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized J()I
    .locals 1

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/feedback/common/c;->J:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized K()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->K:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 518
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/feedback/common/c;->K:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized L()I
    .locals 1

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->K:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized M()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->K:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized N()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->L:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    .line 572
    const/4 v0, 0x0

    .line 575
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/feedback/common/c;->L:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized O()I
    .locals 1

    .prologue
    .line 595
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->L:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized P()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->L:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/feedback/common/c;->I:I

    .line 491
    if-eq v0, p1, :cond_0

    .line 492
    iput p1, p0, Lcom/tencent/feedback/common/c;->I:I

    .line 493
    const-string v1, "user scene tag %d changed to tag %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Lcom/tencent/feedback/common/c;->I:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :cond_0
    monitor-exit p0

    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/feedback/common/c;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "10000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/tencent/feedback/common/c;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 538
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    :goto_1
    if-eqz v0, :cond_3

    .line 539
    :cond_0
    const-string v0, "key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :goto_2
    monitor-exit p0

    return-void

    :cond_1
    move v2, v1

    .line 538
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 543
    :cond_3
    :try_start_1
    invoke-static {p1, p2}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 544
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->K:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/feedback/proguard/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/c;->C:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->U:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->D:Ljava/lang/Boolean;

    .line 448
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 393
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v0, v1

    .line 402
    :goto_0
    monitor-exit p0

    return v0

    .line 397
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->z:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 398
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/feedback/common/c;->z:Ljava/util/Map;

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->z:Ljava/util/Map;

    new-instance v2, Lcom/tencent/feedback/common/PlugInInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/tencent/feedback/common/PlugInInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v1, "add %s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()B
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->m:Ljava/lang/String;

    .line 187
    if-eqz p1, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/feedback/common/c;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_0
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/tencent/feedback/common/c;->G:Z

    .line 466
    return-void
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->N:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/c;->p:Ljava/lang/String;

    .line 237
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 253
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->O:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/c;->q:Ljava/lang/String;

    .line 255
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 411
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->z:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 415
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->B:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public final declared-synchronized h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/c;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    monitor-exit p0

    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/common/c;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/feedback/common/c;->p()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 182
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->m:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/tencent/feedback/common/c;->H:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public final declared-synchronized j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/c;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    monitor-exit p0

    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()J
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/feedback/common/c;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 522
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    .line 523
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    const/4 v0, 0x0

    .line 526
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    move v0, v1

    .line 522
    goto :goto_0

    .line 526
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->K:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->M:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/feedback/common/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->n:Ljava/lang/String;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->n:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized l(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 530
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    .line 531
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    const/4 v0, 0x0

    .line 534
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    move v0, v1

    .line 530
    goto :goto_0

    .line 534
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->K:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->N:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/feedback/common/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->p:Ljava/lang/String;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->p:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized m(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 587
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    .line 588
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    const/4 v0, 0x0

    .line 591
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    move v0, v1

    .line 587
    goto :goto_0

    .line 591
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->L:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->N:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->O:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->q:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/common/c;->q:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->q:Ljava/lang/String;

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->q:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/tencent/feedback/common/c;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    const-string v0, ""

    .line 267
    :goto_0
    return-object v0

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->P:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/d;

    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->o:Ljava/lang/String;

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->o:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/tencent/feedback/common/c;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const-string v0, ""

    .line 280
    :goto_0
    return-object v0

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->Q:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/d;

    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->r:Ljava/lang/String;

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->r:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/tencent/feedback/common/c;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const-string v0, ""

    .line 293
    :goto_0
    return-object v0

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->R:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/d;

    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->s:Ljava/lang/String;

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->s:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/tencent/feedback/common/c;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const-string v0, ""

    .line 306
    :goto_0
    return-object v0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->S:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->t:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/d;

    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->t:Ljava/lang/String;

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->t:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final t()J
    .locals 6

    .prologue
    .line 312
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->T:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-wide v2, p0, Lcom/tencent/feedback/common/c;->u:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/d;

    invoke-static {}, Lcom/tencent/feedback/common/d;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/feedback/common/c;->u:J

    .line 317
    :cond_0
    iget-wide v2, p0, Lcom/tencent/feedback/common/c;->u:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final u()J
    .locals 6

    .prologue
    .line 322
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->T:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-wide v2, p0, Lcom/tencent/feedback/common/c;->v:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/d;

    invoke-static {}, Lcom/tencent/feedback/common/d;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/feedback/common/c;->v:J

    .line 326
    :cond_0
    iget-wide v2, p0, Lcom/tencent/feedback/common/c;->v:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final v()J
    .locals 6

    .prologue
    .line 331
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->T:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-wide v2, p0, Lcom/tencent/feedback/common/c;->w:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/feedback/common/d;->i()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/feedback/common/c;->w:J

    .line 335
    :cond_0
    iget-wide v2, p0, Lcom/tencent/feedback/common/c;->w:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/d;

    invoke-static {}, Lcom/tencent/feedback/common/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->x:Ljava/lang/String;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->x:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->V:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/feedback/common/d;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c;->y:Ljava/lang/String;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->y:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized y()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/feedback/common/PlugInInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->z:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/feedback/common/PlugInInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c;->z:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/common/c;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 378
    :cond_0
    const/4 v0, 0x0

    .line 382
    :goto_0
    monitor-exit p0

    return-object v0

    .line 380
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/feedback/common/c;->z:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 381
    iget-object v1, p0, Lcom/tencent/feedback/common/c;->z:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
