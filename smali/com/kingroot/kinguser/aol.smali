.class public abstract Lcom/kingroot/kinguser/aol;
.super Lcom/kingroot/kinguser/aok;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/aok",
        "<",
        "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
        "Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;",
        ">;",
        "Lcom/kingroot/kinguser/aor;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aGg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final aGh:Ljava/lang/Object;

.field private aGi:Lcom/kingroot/kinguser/aot;

.field private aGj:Ljava/lang/String;

.field private aGk:Ljava/lang/String;

.field private aGl:Z

.field private aGm:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_BaseAppDistCloudEngine"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aol;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kingroot/kinguser/aok;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aol;->aGg:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aol;->aGh:Ljava/lang/Object;

    .line 54
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aol;->Ke()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aol;->aGj:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aol;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aol;->aGk:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aol;->aGl:Z

    .line 62
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/aol$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/aol$1;-><init>(Lcom/kingroot/kinguser/aol;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aol;->aGm:Lcom/kingroot/kinguser/bed;

    .line 59
    invoke-static {}, Lcom/kingroot/kinguser/aot;->Kw()Lcom/kingroot/kinguser/aot;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aol;->aGi:Lcom/kingroot/kinguser/aot;

    .line 60
    return-void
.end method

.method private declared-synchronized Kb()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aol;->aGk:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aol;->hG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rv;->cE(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Lcom/kingroot/kinguser/sk;->jp()Ljava/lang/Object;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :try_start_1
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 272
    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aol;)Lcom/kingroot/kinguser/aot;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/aol;->aGi:Lcom/kingroot/kinguser/aot;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aol;Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aol;->a(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)V
    .locals 4

    .prologue
    .line 226
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    iget v0, p1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->ignoreCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/apu;->b(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/aol;->aGi:Lcom/kingroot/kinguser/aot;

    invoke-static {p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->a(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aot;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/aol;->aGi:Lcom/kingroot/kinguser/aot;

    new-instance v1, Lcom/kingroot/kinguser/distribution/base/AbsKAppDistCloudEngine$4;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/distribution/base/AbsKAppDistCloudEngine$4;-><init>(Lcom/kingroot/kinguser/aol;Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)V

    .line 244
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aot;->a(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aol;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/aol;->aGg:Ljava/util/Map;

    return-object v0
.end method

.method private hG(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/aol;->Kf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 286
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 289
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    return-object v0
.end method


# virtual methods
.method public JX()Ljava/util/List;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v2, p0, Lcom/kingroot/kinguser/aol;->aGh:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 115
    sget-object v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->aGp:Lcom/kingroot/kinguser/aom$a;

    const/4 v1, 0x0

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/kingroot/kinguser/aol;->aGj:Ljava/lang/String;

    .line 116
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/kingroot/kinguser/aol;->a(Lcom/kingroot/kinguser/aom$a;IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 117
    if-eqz v4, :cond_6

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 121
    iget-object v6, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->partnerId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 125
    :cond_0
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->aGp:Lcom/kingroot/kinguser/aom$a;

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aol;->a(Lcom/kingroot/kinguser/aom$a;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 127
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 128
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    .line 134
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;

    .line 136
    if-eqz v1, :cond_1

    .line 139
    iget-object v7, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->picUrls:Ljava/util/List;

    iput-object v7, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->picUrls:Ljava/util/List;

    .line 140
    iget-object v7, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->describe:Ljava/lang/String;

    iput-object v7, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->detailDescribe:Ljava/lang/String;

    .line 141
    iget-object v7, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->logoUrl:Ljava/lang/String;

    iput-object v7, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->bigIconUrl:Ljava/lang/String;

    .line 142
    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->functionDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->functionDesc:Ljava/lang/String;

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aol;->JZ()Ljava/util/Map;

    move-result-object v5

    .line 149
    new-instance v6, Ljava/util/ArrayList;

    .line 150
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 152
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    .line 153
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 154
    if-eqz v1, :cond_3

    .line 156
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->b(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)V

    .line 158
    invoke-interface {v6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 164
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 165
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->Kl()V

    goto :goto_3

    .line 168
    :cond_5
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 169
    invoke-interface {v5, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aol;->Ka()V

    .line 174
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public declared-synchronized JY()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aol;->JZ()Ljava/util/Map;

    move-result-object v1

    .line 206
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 207
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 206
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-object v0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized JZ()Ljava/util/Map;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aol;->aGg:Ljava/util/Map;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/aol;->aGl:Z

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/aol;->aGg:Ljava/util/Map;

    invoke-direct {p0}, Lcom/kingroot/kinguser/aol;->Kb()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aol;->aGl:Z

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aol;->aGg:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected Ka()V
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/kingroot/kinguser/aol;->aGg:Ljava/util/Map;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aol;->aGk:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aol;->hG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rv;->cE(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v0

    .line 261
    iget-object v2, p0, Lcom/kingroot/kinguser/aol;->aGg:Ljava/util/Map;

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/sk;->b(Ljava/lang/Object;)Z

    .line 262
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Kc()V
    .locals 2

    .prologue
    .line 296
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aol;->aGm:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 297
    return-void
.end method

.method protected declared-synchronized Kd()V
    .locals 6

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/aol$4;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/aol$4;-><init>(Lcom/kingroot/kinguser/aol;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract Ke()Ljava/lang/String;
.end method

.method protected abstract Kf()Ljava/lang/String;
.end method

.method public a(Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/aol$2;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/aol$2;-><init>(Lcom/kingroot/kinguser/aol;Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 105
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 180
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/aol$3;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/aol$3;-><init>(Lcom/kingroot/kinguser/aol;Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 197
    return-void
.end method

.method protected abstract getFileName()Ljava/lang/String;
.end method

.method public hH(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aol;->JZ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 318
    if-eqz v0, :cond_0

    .line 320
    iget v1, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->ignoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->ignoreCount:I

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->lastIgnoreTime:J

    .line 322
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aol;->Kd()V

    .line 324
    :cond_0
    return-void
.end method

.method public hI(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aol;->JZ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 329
    if-eqz v0, :cond_0

    .line 330
    iget v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->ignoreCount:I

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
