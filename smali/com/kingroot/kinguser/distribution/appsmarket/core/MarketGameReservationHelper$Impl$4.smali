.class public Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ama$a;->HZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ama$a;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ama$a;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4;->this$0:Lcom/kingroot/kinguser/ama$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 228
    iget v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 233
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4;->this$0:Lcom/kingroot/kinguser/ama$a;

    invoke-static {v1}, Lcom/kingroot/kinguser/ama$a;->a(Lcom/kingroot/kinguser/ama$a;)Lcom/kingroot/kinguser/alz;

    move-result-object v3

    monitor-enter v3

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4;->this$0:Lcom/kingroot/kinguser/ama$a;

    invoke-static {v1}, Lcom/kingroot/kinguser/ama$a;->a(Lcom/kingroot/kinguser/ama$a;)Lcom/kingroot/kinguser/alz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    .line 239
    iget-object v5, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    iget-object v6, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->pkgName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v5

    iget-object v6, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/akl;->gM(Ljava/lang/String;)J

    move-result-wide v6

    .line 246
    const-wide/32 v8, 0xdbba00

    invoke-static {v6, v7, v8, v9}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v5

    iget-object v6, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/akl;->gP(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 258
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v5

    iget-object v6, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    iget-object v6, v6, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logoUrl:Ljava/lang/String;

    new-instance v7, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4$1;

    invoke-direct {v7, p0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4;Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;)V

    invoke-virtual {v5, v6, v7}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    goto :goto_1

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    :cond_3
    return-void
.end method
