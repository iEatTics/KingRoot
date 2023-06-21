.class public Lcom/kingroot/kinguser/bbp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bfp:Lcom/kingroot/kinguser/bbp;

.field private static final bfq:Ljava/lang/Object;


# instance fields
.field private final bfA:Ljava/lang/Object;

.field private final bfB:Ljava/lang/Object;

.field private bfk:Z

.field private bfr:Z

.field private bfs:Lcom/kingroot/kinguser/aky;

.field private bft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/model/RootMgrLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bfu:I

.field private bfv:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/root/log/ILogsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private bfw:Lcom/kingroot/kinguser/bed;

.field private bfx:I

.field private bfy:J

.field private final bfz:Ljava/lang/Object;

.field private final mBroadcastLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bbp;->bfq:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bbp;->bfk:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbp;->mBroadcastLock:Ljava/lang/Object;

    .line 153
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/bbp$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/bbp$1;-><init>(Lcom/kingroot/kinguser/bbp;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfw:Lcom/kingroot/kinguser/bed;

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/bbp;->bfx:I

    .line 283
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/bbp;->bfy:J

    .line 284
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfz:Ljava/lang/Object;

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfA:Ljava/lang/Object;

    .line 286
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfB:Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BV()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/bbp;->bfu:I

    .line 60
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BT()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bbp;->bfr:Z

    .line 62
    new-instance v0, Lcom/kingroot/kinguser/aky;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aky;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfs:Lcom/kingroot/kinguser/aky;

    .line 64
    sget-object v1, Lcom/kingroot/kinguser/bbp;->bfq:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfs:Lcom/kingroot/kinguser/aky;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aky;->getLogs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bbp;->bft:Ljava/util/List;

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfv:Landroid/os/RemoteCallbackList;

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static Ww()Lcom/kingroot/kinguser/bbp;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/kingroot/kinguser/bbp;->bfp:Lcom/kingroot/kinguser/bbp;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/kingroot/kinguser/bbp;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bbp;->bfp:Lcom/kingroot/kinguser/bbp;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/kingroot/kinguser/bbp;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bbp;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bbp;->bfp:Lcom/kingroot/kinguser/bbp;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bbp;->bfp:Lcom/kingroot/kinguser/bbp;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private Wx()V
    .locals 4

    .prologue
    .line 131
    sget-object v2, Lcom/kingroot/kinguser/bbp;->bfq:Ljava/lang/Object;

    monitor-enter v2

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 133
    :goto_0
    iget v0, p0, Lcom/kingroot/kinguser/bbp;->bfu:I

    if-lt v1, v0, :cond_0

    .line 134
    iget-object v3, p0, Lcom/kingroot/kinguser/bbp;->bfs:Lcom/kingroot/kinguser/aky;

    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/aky;->b(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)I

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 136
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_0
    monitor-exit v2

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private Wy()Z
    .locals 12

    .prologue
    const/4 v4, 0x1

    .line 164
    const/4 v5, 0x0

    .line 168
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 169
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Ljava/util/Date;-><init>(III)V

    .line 170
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->BU()I

    move-result v2

    .line 173
    if-ne v2, v4, :cond_1

    .line 174
    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    move-wide v2, v0

    .line 182
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v6, 0xea60

    add-long/2addr v6, v0

    .line 184
    sget-object v8, Lcom/kingroot/kinguser/bbp;->bfq:Ljava/lang/Object;

    monitor-enter v8

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v5

    move v5, v0

    :goto_1
    if-ltz v5, :cond_3

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bft:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    .line 187
    iget-wide v10, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mTime:J

    cmp-long v9, v10, v6

    if-gtz v9, :cond_0

    iget-wide v10, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mTime:J

    cmp-long v9, v10, v2

    if-gez v9, :cond_4

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bbp;->bfs:Lcom/kingroot/kinguser/aky;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aky;->b(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)I

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bft:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v4

    .line 185
    :goto_2
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    .line 175
    :cond_1
    if-nez v2, :cond_2

    .line 176
    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    .line 178
    :cond_2
    const-wide v2, 0x9a7ec800L

    sub-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    .line 193
    :cond_3
    monitor-exit v8

    .line 195
    return v1

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private Wz()V
    .locals 3

    .prologue
    .line 268
    iget-object v2, p0, Lcom/kingroot/kinguser/bbp;->mBroadcastLock:Ljava/lang/Object;

    monitor-enter v2

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfv:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 270
    :goto_0
    if-lez v0, :cond_0

    .line 271
    add-int/lit8 v1, v0, -0x1

    .line 273
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfv:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/log/ILogsChangeListener;

    invoke-interface {v0}, Lcom/kingroot/kinguser/root/log/ILogsChangeListener;->onLogsChangeListener()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 274
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 276
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfv:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 277
    monitor-exit v2

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bbp;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbp;->Wy()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bbp;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbp;->Wz()V

    return-void
.end method


# virtual methods
.method public addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V
    .locals 6

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bbp;->bfr:Z

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/bbp;->bfq:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfs:Lcom/kingroot/kinguser/aky;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aky;->a(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)J

    move-result-wide v2

    .line 103
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 104
    invoke-virtual {p1, v2, v3}, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->bX(J)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bft:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v2, p0, Lcom/kingroot/kinguser/bbp;->bfz:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    iget v0, p0, Lcom/kingroot/kinguser/bbp;->bfx:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bbp;->bfx:I

    .line 115
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    :try_start_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbp;->Wx()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbp;->Wz()V

    .line 124
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 113
    :cond_2
    :try_start_4
    iget v0, p0, Lcom/kingroot/kinguser/bbp;->bfx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bbp;->bfx:I

    goto :goto_1

    .line 115
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    :catch_0
    move-exception v0

    .line 121
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public addLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfv:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 250
    return-void
.end method

.method public clearAllLogs()I
    .locals 3

    .prologue
    .line 206
    sget-object v1, Lcom/kingroot/kinguser/bbp;->bfq:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfs:Lcom/kingroot/kinguser/aky;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aky;->GI()I

    move-result v0

    .line 208
    iget-object v2, p0, Lcom/kingroot/kinguser/bbp;->bft:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/kinguser/bbp;->bfk:Z

    .line 211
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbp;->Wz()V

    .line 212
    return v0

    .line 209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearTimeOutLogs()V
    .locals 3

    .prologue
    .line 146
    sget-object v1, Lcom/kingroot/kinguser/bbp;->bfq:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bbp;->bfr:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bbp;->bfw:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 150
    :cond_0
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLogs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/model/RootMgrLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    sget-object v2, Lcom/kingroot/kinguser/bbp;->bfq:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bbp;->bfk:Z

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    return-object v1
.end method

.method public getTodayRequestAllowAppList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 321
    iget-object v3, p0, Lcom/kingroot/kinguser/bbp;->bfB:Ljava/lang/Object;

    monitor-enter v3

    .line 322
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 323
    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 324
    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 325
    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 326
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 328
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbo;->getLogs()Ljava/util/List;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    .line 330
    iget-wide v8, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mTime:J

    cmp-long v7, v8, v4

    if-ltz v7, :cond_0

    iget v7, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 331
    iget-object v0, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->adZ:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 337
    return-object v1
.end method

.method public getTodayRequestAppCount()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 289
    iget-object v1, p0, Lcom/kingroot/kinguser/bbp;->bfA:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 291
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 292
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 293
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 294
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 297
    iget-wide v4, p0, Lcom/kingroot/kinguser/bbp;->bfy:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/kingroot/kinguser/bbp;->bfy:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/bbp;->bfx:I

    .line 300
    :cond_0
    iput-wide v2, p0, Lcom/kingroot/kinguser/bbp;->bfy:J

    .line 302
    iget v0, p0, Lcom/kingroot/kinguser/bbp;->bfx:I

    if-ne v0, v8, :cond_2

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bbp;->bfx:I

    .line 304
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbo;->getLogs()Ljava/util/List;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    .line 306
    iget-wide v6, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mTime:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_1

    .line 307
    iget-object v5, p0, Lcom/kingroot/kinguser/bbp;->bfz:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    :try_start_1
    iget v0, p0, Lcom/kingroot/kinguser/bbp;->bfx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bbp;->bfx:I

    .line 309
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 315
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 314
    :cond_2
    :try_start_3
    iget v0, p0, Lcom/kingroot/kinguser/bbp;->bfx:I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v0
.end method

.method public hasExistLogs()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bbp;->bfk:Z

    return v0
.end method

.method public removeLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp;->bfv:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 260
    return-void
.end method

.method public setLogAble(Z)V
    .locals 0

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bbp;->bfr:Z

    .line 238
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbp;->Wz()V

    .line 239
    return-void
.end method

.method public setLogLimit(I)V
    .locals 3

    .prologue
    .line 223
    sget-object v1, Lcom/kingroot/kinguser/bbp;->bfq:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    iput p1, p0, Lcom/kingroot/kinguser/bbp;->bfu:I

    .line 225
    iget v0, p0, Lcom/kingroot/kinguser/bbp;->bfu:I

    iget-object v2, p0, Lcom/kingroot/kinguser/bbp;->bft:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbp;->Wx()V

    .line 227
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbp;->Wz()V

    .line 229
    :cond_0
    monitor-exit v1

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
