.class public Lcom/kingroot/kinguser/alu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/alu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ayT:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ayU:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppsMarketToolboxDist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/alu;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/kingroot/kinguser/alu$3;

    invoke-direct {v0}, Lcom/kingroot/kinguser/alu$3;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/alu;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/kingroot/kinguser/alu$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alu$1;-><init>(Lcom/kingroot/kinguser/alu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alu;->ayT:Lcom/kingroot/kinguser/alz;

    .line 52
    new-instance v0, Lcom/kingroot/kinguser/alu$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alu$2;-><init>(Lcom/kingroot/kinguser/alu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alu;->ayU:Lcom/kingroot/kinguser/alz;

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/alu;->ayT:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/alu;->ayU:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/alu$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/kingroot/kinguser/alu;-><init>()V

    return-void
.end method

.method public static Ho()Lcom/kingroot/kinguser/alu;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/kingroot/kinguser/alu;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/alu;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/alu;)Lcom/kingroot/kinguser/alz;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/alu;->ayT:Lcom/kingroot/kinguser/alz;

    return-object v0
.end method


# virtual methods
.method public Hl()Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v3, p0, Lcom/kingroot/kinguser/alu;->ayT:Lcom/kingroot/kinguser/alz;

    monitor-enter v3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alu;->ayT:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v5

    iget-object v6, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
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

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/alu;->ayU:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/anf;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 143
    :goto_1
    return-object v0

    .line 106
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/akl;->Bq()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 109
    iget-object v5, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 112
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/kingroot/kinguser/amz;->hy(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v4

    .line 113
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingroot/kinguser/akl;->Bp()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    invoke-static {v6, v7, v8, v9}, Lcom/kingroot/kinguser/adk;->g(JJ)Z

    move-result v5

    if-nez v5, :cond_6

    .line 114
    if-nez v4, :cond_4

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/apu;->j(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move-object v1, v0

    .line 133
    :cond_5
    :goto_2
    if-nez v1, :cond_7

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/alu;->ayU:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/anf;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 137
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 138
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    goto :goto_1

    .line 119
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Br()V

    .line 120
    iget-object v4, p0, Lcom/kingroot/kinguser/alu;->ayU:Lcom/kingroot/kinguser/alz;

    monitor-enter v4

    .line 121
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/alu;->ayU:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/alu;->ayU:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 123
    monitor-exit v4

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public Hm()V
    .locals 5

    .prologue
    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const v1, 0x4c7263

    const/16 v2, 0x64

    const/4 v3, 0x0

    new-instance v4, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketToolboxDist$4;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketToolboxDist$4;-><init>(Lcom/kingroot/kinguser/alu;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 165
    return-void
.end method
