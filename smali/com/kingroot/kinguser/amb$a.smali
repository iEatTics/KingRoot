.class public Lcom/kingroot/kinguser/amb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/amx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/amb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/amb$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private azB:Lcom/kingroot/kinguser/apv$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/kingroot/kinguser/amb$a$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/amb$a$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/amb$a;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Lcom/kingroot/kinguser/amb$a$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/amb$a$2;-><init>(Lcom/kingroot/kinguser/amb$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/amb$a;->azB:Lcom/kingroot/kinguser/apv$a;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/amb$1;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/kingroot/kinguser/amb$a;-><init>()V

    return-void
.end method

.method public static Id()Lcom/kingroot/kinguser/amb$a;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcom/kingroot/kinguser/amb$a;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amb$a;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/amb$a;)Lcom/kingroot/kinguser/apv$a;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/amb$a;->azB:Lcom/kingroot/kinguser/apv$a;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/amb$a;Ljava/util/List;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/amb$a;->ay(Ljava/util/List;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v0

    return-object v0
.end method

.method private ay(Ljava/util/List;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 160
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/akl;->c(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)I

    move-result v1

    if-ge v1, v4, :cond_0

    .line 172
    invoke-static {v0}, Lcom/kingroot/kinguser/amb$a;->g(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/amb$a;->d(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/amb$a;->e(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 198
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 199
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_3

    .line 200
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v3

    const v9, 0x4c7bc0

    const/16 v10, 0x14

    new-instance v11, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$3;

    invoke-direct {v11, p0, v6, v7, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$3;-><init>(Lcom/kingroot/kinguser/amb$a;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v3, v9, v10, v5, v11}, Lcom/kingroot/kinguser/ams;->b(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 215
    :goto_0
    const-wide/16 v10, 0xa

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v10, v11, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 224
    iget-object v9, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iget-object v10, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 226
    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    move v3, v4

    .line 233
    :goto_2
    if-eqz v3, :cond_0

    .line 238
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 239
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 240
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 241
    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v1

    new-instance v11, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$4;

    invoke-direct {v11, p0, v3, v9}, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$4;-><init>(Lcom/kingroot/kinguser/amb$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v10, v11}, Lcom/kingroot/kinguser/ams;->a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult;)V

    .line 257
    const-wide/16 v10, 0xa

    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v10, v11, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    :goto_3
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    :cond_2
    :goto_4
    return-object v0

    .line 210
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 271
    goto :goto_4

    .line 258
    :catch_0
    move-exception v1

    goto :goto_3

    .line 216
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_5
    move-object v1, v2

    move v3, v5

    goto :goto_2
.end method

.method private d(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z
    .locals 4

    .prologue
    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 303
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

.method private e(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z
    .locals 2

    .prologue
    .line 275
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z
    .locals 4

    .prologue
    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->endTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-static {p0}, Lcom/kingroot/kinguser/amb$a;->f(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    .line 314
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;)V
    .locals 4
    .param p2    # Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bl()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/adk;->g(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;->onResult(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 117
    const v0, 0x4c7bc3

    .line 129
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$2;

    invoke-direct {v2, p0, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$2;-><init>(Lcom/kingroot/kinguser/amb$a;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;)V

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/ams;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 119
    const v0, 0x4c7bc2

    goto :goto_1

    .line 122
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;->onResult(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    goto :goto_0
.end method
