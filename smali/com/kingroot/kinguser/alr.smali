.class public Lcom/kingroot/kinguser/alr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/alr;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppsMarketKrMainDist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/alr;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/kingroot/kinguser/alr$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/alr$2;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/alr;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/kingroot/kinguser/alr$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alr$1;-><init>(Lcom/kingroot/kinguser/alr;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alr;->ayT:Lcom/kingroot/kinguser/alz;

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/alr;->ayT:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/alr$1;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kingroot/kinguser/alr;-><init>()V

    return-void
.end method

.method public static Hd()Lcom/kingroot/kinguser/alr;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/kingroot/kinguser/alr;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/alr;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/alr;)Lcom/kingroot/kinguser/alz;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/alr;->ayT:Lcom/kingroot/kinguser/alz;

    return-object v0
.end method

.method private d(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 102
    iget-wide v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->endTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public He()Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bu()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/adk;->g(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v3, p0, Lcom/kingroot/kinguser/alr;->ayT:Lcom/kingroot/kinguser/alz;

    monitor-enter v3

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alr;->ayT:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v5

    iget-object v6, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 84
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/alr;->d(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v3

    iget-wide v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bannerId:J

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/akl;->ay(J)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 96
    goto :goto_0
.end method

.method public Hf()V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const v1, 0x4c7264

    new-instance v2, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketKrMainDist$3;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketKrMainDist$3;-><init>(Lcom/kingroot/kinguser/alr;)V

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/ams;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 124
    return-void
.end method
