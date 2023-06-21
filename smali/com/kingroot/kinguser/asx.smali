.class public Lcom/kingroot/kinguser/asx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile aNH:Lcom/kingroot/kinguser/asx;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static OK()Lcom/kingroot/kinguser/asx;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/kinguser/asx;->aNH:Lcom/kingroot/kinguser/asx;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/kingroot/kinguser/asx;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/asx;->aNH:Lcom/kingroot/kinguser/asx;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/asx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asx;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/asx;->aNH:Lcom/kingroot/kinguser/asx;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/asx;->aNH:Lcom/kingroot/kinguser/asx;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public iU(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/kingroot/kinguser/atc;->OS()Lcom/kingroot/kinguser/atc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/atc;->iU(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public iV(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/kingroot/kinguser/atc;->OS()Lcom/kingroot/kinguser/atc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/atc;->iV(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/atc;->OS()Lcom/kingroot/kinguser/atc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/atc;->m(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/asx;->iV(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 165
    :cond_0
    return-object v1
.end method
