.class public Lcom/kingroot/kinguser/alt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/amt;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/alt;",
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
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppsMarketToolboxCardDist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/alt;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/alt$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/alt$2;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/alt;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/kingroot/kinguser/alt$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alt$1;-><init>(Lcom/kingroot/kinguser/alt;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alt;->ayT:Lcom/kingroot/kinguser/alz;

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/alt;->ayT:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/alt$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/kingroot/kinguser/alt;-><init>()V

    return-void
.end method

.method public static Hk()Lcom/kingroot/kinguser/alt;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/kingroot/kinguser/alt;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/alt;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/alt;)Lcom/kingroot/kinguser/alz;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/alt;->ayT:Lcom/kingroot/kinguser/alz;

    return-object v0
.end method


# virtual methods
.method public C(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    if-ne p2, v4, :cond_1

    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18980

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 145
    return-void

    .line 133
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 134
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 138
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public Hl()Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v2, p0, Lcom/kingroot/kinguser/alt;->ayT:Lcom/kingroot/kinguser/alz;

    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alt;->ayT:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v4

    iget-object v5, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
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

    .line 85
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 87
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v3

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/akl;->gS(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 94
    :cond_3
    new-instance v0, Lcom/kingroot/kinguser/alt$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alt$3;-><init>(Lcom/kingroot/kinguser/alt;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_4
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    goto :goto_2
.end method

.method public Hm()V
    .locals 5

    .prologue
    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const v1, 0x4c7265

    const/16 v2, 0x64

    const/4 v3, 0x0

    new-instance v4, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketToolboxCardDistService$4;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketToolboxCardDistService$4;-><init>(Lcom/kingroot/kinguser/alt;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 124
    return-void
.end method
