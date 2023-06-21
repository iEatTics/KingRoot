.class public Lcom/kingroot/kinguser/avy;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/avy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aUA:Ljava/io/File;

.field private final aUB:Ljava/util/concurrent/atomic/AtomicLong;

.field private final aUw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final aUx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/avx;",
            ">;"
        }
    .end annotation
.end field

.field private final aUy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aUz:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->ask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DumpOpenListManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/avy;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/avy$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avy$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/avy;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 65
    const v0, 0x9e87

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avy;->aUw:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avy;->aUx:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/avy;->aUy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/kingroot/kinguser/avy;->aUB:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/avy$1;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kingroot/kinguser/avy;-><init>()V

    return-void
.end method

.method public static Sr()Lcom/kingroot/kinguser/avy;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/kingroot/kinguser/avy;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/avy;

    return-object v0
.end method

.method private Ss()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/avy;->aUy:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 72
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    invoke-direct {p0}, Lcom/kingroot/kinguser/avy;->St()V

    .line 75
    invoke-direct {p0}, Lcom/kingroot/kinguser/avy;->sb()V

    .line 76
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private St()V
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/io/File;

    const-string v2, "201711071520_010.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/avy;->aUz:Ljava/io/File;

    .line 82
    new-instance v1, Ljava/io/File;

    const-string v2, "201711071520_011.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/avy;->aUA:Ljava/io/File;

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUz:Ljava/io/File;

    invoke-static {v0}, Lcom/kingroot/kinguser/sq;->u(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/kingroot/kinguser/avy;->aUw:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/avy;->aUw:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 90
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUA:Ljava/io/File;

    invoke-static {v0}, Lcom/kingroot/kinguser/sq;->u(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/kingroot/kinguser/avy;->aUB:Ljava/util/concurrent/atomic/AtomicLong;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 100
    :cond_1
    return-void

    .line 90
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private Su()V
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/kingroot/kinguser/avy;->aUw:Ljava/util/HashMap;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUw:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/kingroot/kinguser/avy;->aUz:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/sq;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    iget-object v1, p0, Lcom/kingroot/kinguser/avy;->aUB:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v1

    .line 211
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUB:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/avy;->aUA:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/sq;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 212
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    return-void

    .line 209
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 212
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private clearCache()V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/kingroot/kinguser/avy;->aUw:Ljava/util/HashMap;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUw:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 176
    monitor-exit v1

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private jE(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/kingroot/kinguser/avy;->aUw:Ljava/util/HashMap;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUw:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    monitor-exit v1

    .line 185
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 185
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0
.end method

.method private sb()V
    .locals 11

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avy;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/avy;->Rx()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 112
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kingroot/kinguser/bq;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v6, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/kingroot/kinguser/bq;->kQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/kingroot/kinguser/bq;->kR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    iget-object v0, v6, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    const-string v1, "820601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, v6, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/avx;

    const-string v1, "820601"

    iget-object v2, v6, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    iget-object v3, v6, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    iget-object v4, v6, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    iget-object v5, v6, Lcom/kingroot/kinguser/bq;->kQ:Ljava/lang/String;

    iget-object v6, v6, Lcom/kingroot/kinguser/bq;->kR:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/avx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, v0, Lcom/kingroot/kinguser/avx;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 105
    :cond_1
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/avy;->aUx:Ljava/util/HashMap;

    monitor-enter v1

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUx:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUx:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 137
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUB:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUB:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 143
    invoke-direct {p0}, Lcom/kingroot/kinguser/avy;->clearCache()V

    .line 147
    :cond_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/avy;->Su()V

    .line 148
    return-void

    .line 137
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/avx;)V
    .locals 5

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/avx;->Sq()Ljava/lang/String;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/kingroot/kinguser/avy;->aUw:Ljava/util/HashMap;

    monitor-enter v2

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUw:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 196
    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUw:Ljava/util/HashMap;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :goto_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/avy;->Su()V

    .line 203
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 199
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public jD(Ljava/lang/String;)Lcom/kingroot/kinguser/avx;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Lcom/kingroot/kinguser/avy;->Ss()V

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/avy;->aUx:Ljava/util/HashMap;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avy;->aUx:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/avx;

    .line 158
    monitor-exit v2

    .line 160
    if-nez v0, :cond_2

    move-object v0, v1

    .line 161
    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 163
    :cond_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/avx;->Sq()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/avy;->jE(Ljava/lang/String;)I

    move-result v2

    .line 165
    iget v3, v0, Lcom/kingroot/kinguser/avx;->aUt:I

    if-lt v2, v3, :cond_0

    move-object v0, v1

    .line 166
    goto :goto_0
.end method

.method protected uy()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/kingroot/kinguser/avy;->sb()V

    .line 218
    return-void
.end method
