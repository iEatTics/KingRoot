.class Lcom/kingroot/kinguser/bei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bea;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final blc:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bei;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bld:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/thread/StaticEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFile:Ljava/io/File;

.field private mProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_KJobManagerStatic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bei;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/kingroot/kinguser/bei$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bei$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bei;->blc:Lcom/kingroot/kinguser/alz;

    .line 61
    new-instance v0, Lcom/kingroot/kinguser/bei$3;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bei$3;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bei;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->aY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bei;->mProcessName:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "job_manager_static_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/bei;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bei;->mFile:Ljava/io/File;

    .line 44
    new-instance v0, Lcom/kingroot/kinguser/bei$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bei$2;-><init>(Lcom/kingroot/kinguser/bei;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    .line 76
    sget-object v0, Lcom/kingroot/kinguser/bei;->blc:Lcom/kingroot/kinguser/alz;

    new-instance v1, Lcom/kingroot/kinguser/bei$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bei$4;-><init>(Lcom/kingroot/kinguser/bei;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/alz;->a(Lcom/kingroot/kinguser/alz$a;)V

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/alz;->fn(I)V

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bei$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kingroot/kinguser/bei;-><init>()V

    return-void
.end method

.method public static Zq()Lcom/kingroot/kinguser/bei;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lcom/kingroot/kinguser/bei;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bei;

    return-object v0
.end method

.method static synthetic Zr()Lcom/kingroot/kinguser/alz;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kingroot/kinguser/bei;->blc:Lcom/kingroot/kinguser/alz;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bei;)Ljava/io/File;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->mFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bei;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lcom/kingroot/kinguser/bea$a;)Lcom/kingroot/kinguser/thread/StaticEntity;
    .locals 4

    .prologue
    .line 126
    iget-object v2, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bea$a;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/thread/StaticEntity;

    .line 129
    if-nez v0, :cond_0

    .line 130
    new-instance v1, Lcom/kingroot/kinguser/thread/StaticEntity;

    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->mProcessName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/thread/StaticEntity;-><init>(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bea$a;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    move-object v0, v1

    .line 134
    :cond_0
    monitor-exit v2

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public YZ()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    monitor-enter v4

    .line 216
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 217
    sget-object v2, Lcom/kingroot/kinguser/bei;->blc:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 219
    new-instance v7, Lcom/kingroot/kinguser/bei$5;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2}, Lcom/kingroot/kinguser/bei$5;-><init>(Lcom/kingroot/kinguser/bei;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v7}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 232
    invoke-static {}, Lcom/kingroot/kinguser/bea$a;->values()[Lcom/kingroot/kinguser/bea$a;

    move-result-object v8

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v9, :cond_0

    aget-object v10, v8, v3

    .line 238
    invoke-virtual {v7}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/kingroot/kinguser/bea$a;->ordinal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/thread/StaticEntity;

    .line 240
    if-nez v2, :cond_1

    .line 232
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 244
    :cond_1
    new-instance v11, Lcom/kingroot/kinguser/b;

    invoke-direct {v11}, Lcom/kingroot/kinguser/b;-><init>()V

    .line 245
    const v12, 0x18925

    iput v12, v11, Lcom/kingroot/kinguser/b;->featureId:I

    .line 246
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lcom/kingroot/kinguser/b;->strValues:Ljava/util/ArrayList;

    .line 248
    const/4 v12, 0x1

    new-array v12, v12, [[Ljava/lang/String;

    const/4 v13, 0x0

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    iget-object v0, v2, Lcom/kingroot/kinguser/thread/StaticEntity;->mProcessName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 249
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget v16, Lcom/kingroot/kinguser/bdz;->MW:I

    .line 250
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 251
    invoke-virtual {v10}, Lcom/kingroot/kinguser/bea$a;->ordinal()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 252
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v16

    invoke-static {v10}, Lcom/kingroot/kinguser/beh;->c(Lcom/kingroot/kinguser/bea$a;)Lcom/kingroot/kinguser/bec;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bec;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 253
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v16

    invoke-static {v10}, Lcom/kingroot/kinguser/beh;->c(Lcom/kingroot/kinguser/bea$a;)Lcom/kingroot/kinguser/bec;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/kingroot/kinguser/beg;->b(Lcom/kingroot/kinguser/bec;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v15

    const/4 v10, 0x5

    iget v15, v2, Lcom/kingroot/kinguser/thread/StaticEntity;->mMaxQueueSize:I

    .line 254
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v10, 0x6

    iget v15, v2, Lcom/kingroot/kinguser/thread/StaticEntity;->mAverageQueueSize:F

    .line 255
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v10, 0x7

    iget-wide v0, v2, Lcom/kingroot/kinguser/thread/StaticEntity;->mMaxJobWaitingTime:J

    move-wide/from16 v16, v0

    .line 256
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/16 v10, 0x8

    iget-wide v0, v2, Lcom/kingroot/kinguser/thread/StaticEntity;->mAverageJobWaitingTime:D

    move-wide/from16 v16, v0

    .line 257
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/16 v10, 0x9

    iget v15, v2, Lcom/kingroot/kinguser/thread/StaticEntity;->mJobFinishCount:I

    .line 258
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/16 v10, 0xa

    iget v2, v2, Lcom/kingroot/kinguser/thread/StaticEntity;->mCreateThreadCount:I

    .line 259
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v10

    aput-object v14, v12, v13

    .line 263
    invoke-static {v12}, Lcom/kingroot/kinguser/sw;->a([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "\\|"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 264
    iget-object v10, v11, Lcom/kingroot/kinguser/b;->strValues:Ljava/util/ArrayList;

    invoke-static {v10, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 265
    const/4 v2, 0x1

    iput v2, v11, Lcom/kingroot/kinguser/b;->count:I

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v2, v12

    iput v2, v11, Lcom/kingroot/kinguser/b;->timestamp:I

    .line 267
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 279
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 278
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v5
.end method

.method public Za()V
    .locals 2

    .prologue
    .line 287
    iget-object v1, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 290
    monitor-exit v1

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/kingroot/kinguser/bea$a;)V
    .locals 3

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bei;->d(Lcom/kingroot/kinguser/bea$a;)Lcom/kingroot/kinguser/thread/StaticEntity;

    move-result-object v0

    .line 181
    iget v2, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mJobFinishCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mJobFinishCount:I

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 186
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/kingroot/kinguser/bea$a;I)V
    .locals 8

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    monitor-enter v1

    .line 107
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bei;->d(Lcom/kingroot/kinguser/bea$a;)Lcom/kingroot/kinguser/thread/StaticEntity;

    move-result-object v0

    .line 109
    iget v2, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mMaxQueueSize:I

    if-le p2, v2, :cond_1

    .line 110
    iput p2, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mMaxQueueSize:I

    .line 114
    :cond_1
    iget-wide v2, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mTotalDataCountForAverageQueueSize:J

    long-to-float v2, v2

    iget v3, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mAverageQueueSize:F

    mul-float/2addr v2, v3

    int-to-float v3, p2

    add-float/2addr v2, v3

    iget-wide v4, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mTotalDataCountForAverageQueueSize:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mTotalDataCountForAverageQueueSize:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iput v2, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mAverageQueueSize:F

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 121
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/kingroot/kinguser/bea$a;J)V
    .locals 8

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    monitor-enter v1

    .line 152
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bei;->d(Lcom/kingroot/kinguser/bea$a;)Lcom/kingroot/kinguser/thread/StaticEntity;

    move-result-object v0

    .line 154
    iget-wide v2, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mMaxJobWaitingTime:J

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 155
    iput-wide p2, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mMaxJobWaitingTime:J

    .line 159
    :cond_1
    iget-wide v2, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mTotalDataCountForAverageJobWaitingTime:J

    long-to-double v2, v2

    iget-wide v4, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mAverageJobWaitingTime:D

    mul-double/2addr v2, v4

    long-to-double v4, p2

    add-double/2addr v2, v4

    iget-wide v4, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mTotalDataCountForAverageJobWaitingTime:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mTotalDataCountForAverageJobWaitingTime:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mAverageJobWaitingTime:D

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 166
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/kingroot/kinguser/bea$a;)V
    .locals 3

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    monitor-enter v1

    .line 198
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bei;->d(Lcom/kingroot/kinguser/bea$a;)Lcom/kingroot/kinguser/thread/StaticEntity;

    move-result-object v0

    .line 199
    iget v2, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mCreateThreadCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/kingroot/kinguser/thread/StaticEntity;->mCreateThreadCount:I

    .line 200
    iget-object v0, p0, Lcom/kingroot/kinguser/bei;->bld:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 204
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
