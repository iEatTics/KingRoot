.class public Lcom/kingroot/kinguser/agl;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/agl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final amS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final amT:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/kingroot/kinguser/agl$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/agl$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/agl;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    const v0, 0x9e54

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/agl;->amS:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agl;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/agl;->refresh()V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/agl$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kingroot/kinguser/agl;-><init>()V

    return-void
.end method

.method private refresh()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v3, p0, Lcom/kingroot/kinguser/agl;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agl;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    monitor-exit v3

    .line 113
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agl;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 78
    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    new-instance v6, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;

    invoke-direct {v6}, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;-><init>()V

    .line 83
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->type:I

    .line 84
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    iput-object v1, v6, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    .line 85
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    iput-object v1, v6, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->appName:Ljava/lang/String;

    .line 86
    const-string v1, "2"

    iget-object v7, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v6, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->apw:Z

    .line 87
    const-string v1, "1"

    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kQ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->apx:Z

    .line 89
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 86
    goto :goto_2

    .line 105
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/kingroot/kinguser/agl;->amS:Ljava/util/List;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/agl;->amS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/agl;->amS:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/agl;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 108
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public static vO()Lcom/kingroot/kinguser/agl;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/kingroot/kinguser/agl;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agl;

    return-object v0
.end method


# virtual methods
.method protected uy()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/kingroot/kinguser/agl;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agl;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-direct {p0}, Lcom/kingroot/kinguser/agl;->refresh()V

    .line 62
    return-void

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public vP()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/kingroot/kinguser/agl;->refresh()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/kingroot/kinguser/agl;->amS:Ljava/util/List;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/agl;->amS:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    monitor-exit v1

    .line 123
    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
