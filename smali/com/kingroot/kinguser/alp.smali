.class Lcom/kingroot/kinguser/alp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ams;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ayd:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppsMarketCloudMgr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/alp;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/kingroot/kinguser/alp$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/alp$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/alp;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/kingroot/kinguser/alp$9;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alp$9;-><init>(Lcom/kingroot/kinguser/alp;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alp;->ayd:Lcom/kingroot/kinguser/alz;

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/alp;->ayd:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/alp$1;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/kingroot/kinguser/alp;-><init>()V

    return-void
.end method

.method public static GY()Lcom/kingroot/kinguser/ams;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/kingroot/kinguser/alp;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ams;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alp;)Lcom/kingroot/kinguser/alz;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/alp;->ayd:Lcom/kingroot/kinguser/alz;

    return-object v0
.end method


# virtual methods
.method public a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V
    .locals 11

    .prologue
    .line 290
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v6

    new-instance v7, Lcom/kingroot/kinguser/bed;

    sget-object v8, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v9, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v10, 0x0

    new-instance v0, Lcom/kingroot/kinguser/alp$15;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/alp$15;-><init>(Lcom/kingroot/kinguser/alp;IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 330
    return-void
.end method

.method public a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V
    .locals 6

    .prologue
    .line 110
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/alp$10;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/alp$10;-><init>(Lcom/kingroot/kinguser/alp;ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 131
    return-void
.end method

.method public a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener;)V
    .locals 6

    .prologue
    .line 519
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/alp$6;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/alp$6;-><init>(Lcom/kingroot/kinguser/alp;ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 535
    return-void
.end method

.method public a(ILjava/lang/String;IIJLcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;)V
    .locals 15

    .prologue
    .line 343
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v9

    new-instance v10, Lcom/kingroot/kinguser/bed;

    sget-object v11, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v12, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v13, 0x0

    new-instance v0, Lcom/kingroot/kinguser/alp$16;

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/kingroot/kinguser/alp$16;-><init>(Lcom/kingroot/kinguser/alp;ILjava/lang/String;IIJLcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;)V

    invoke-direct {v10, v11, v12, v13, v0}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v9, v10}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 369
    return-void
.end method

.method public a(ILjava/lang/String;IILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;)V
    .locals 12

    .prologue
    .line 246
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v7

    new-instance v8, Lcom/kingroot/kinguser/bed;

    sget-object v9, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v10, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v11, 0x0

    new-instance v0, Lcom/kingroot/kinguser/alp$14;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move/from16 v4, p4

    move v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/alp$14;-><init>(Lcom/kingroot/kinguser/alp;Ljava/lang/String;IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;)V

    invoke-direct {v8, v9, v10, v11, v0}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 278
    return-void
.end method

.method public a(JIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadDataListener;)V
    .locals 13

    .prologue
    .line 139
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v7

    new-instance v8, Lcom/kingroot/kinguser/bed;

    sget-object v9, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v10, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v11, 0x0

    new-instance v0, Lcom/kingroot/kinguser/alp$11;

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/alp$11;-><init>(Lcom/kingroot/kinguser/alp;JIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadDataListener;)V

    invoke-direct {v8, v9, v10, v11, v0}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 157
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;)V
    .locals 6

    .prologue
    .line 193
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/alp$13;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/alp$13;-><init>(Lcom/kingroot/kinguser/alp;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 233
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult;)V
    .locals 6

    .prologue
    .line 490
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/alp$5;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/alp$5;-><init>(Lcom/kingroot/kinguser/alp;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 515
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;)V
    .locals 6

    .prologue
    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/alp$12;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/alp$12;-><init>(Lcom/kingroot/kinguser/alp;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 184
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IMergeApkPatchListener;)V
    .locals 3

    .prologue
    .line 589
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    invoke-virtual {p3}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->Ir()Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/alp$8;

    invoke-direct {v2, p0, p4}, Lcom/kingroot/kinguser/alp$8;-><init>(Lcom/kingroot/kinguser/alp;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IMergeApkPatchListener;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/kingroot/kinguser/btx;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;Lcom/kingroot/kinguser/buj;)V

    .line 601
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;)V
    .locals 12

    .prologue
    .line 425
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v7

    new-instance v8, Lcom/kingroot/kinguser/bed;

    sget-object v9, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v10, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v11, 0x0

    new-instance v0, Lcom/kingroot/kinguser/alp$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/alp$3;-><init>(Lcom/kingroot/kinguser/alp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;)V

    invoke-direct {v8, v9, v10, v11, v0}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 458
    return-void
.end method

.method public a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 462
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/alp$4;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/alp$4;-><init>(Lcom/kingroot/kinguser/alp;Ljava/util/ArrayList;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 486
    return-void
.end method

.method public a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;",
            ">;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 539
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/alp$7;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/alp$7;-><init>(Lcom/kingroot/kinguser/alp;Ljava/util/List;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 585
    return-void
.end method

.method public b(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V
    .locals 13

    .prologue
    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 400
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v9, Lcom/kingroot/kinguser/bed;

    sget-object v10, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v11, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v12, 0x0

    new-instance v1, Lcom/kingroot/kinguser/alp$2;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/kingroot/kinguser/alp$2;-><init>(Lcom/kingroot/kinguser/alp;IIIJLcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    invoke-direct {v9, v10, v11, v12, v1}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v9}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 421
    return-void
.end method
