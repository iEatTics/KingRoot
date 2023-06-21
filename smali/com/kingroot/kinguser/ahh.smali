.class public Lcom/kingroot/kinguser/ahh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static apk:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ahh;",
            ">;"
        }
    .end annotation
.end field

.field private static apo:I


# instance fields
.field private final app:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final apq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private apr:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

.field private aps:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x64

    sput v0, Lcom/kingroot/kinguser/ahh;->apo:I

    .line 78
    new-instance v0, Lcom/kingroot/kinguser/ahh$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ahh$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ahh;->apk:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahh;->app:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahh;->apq:Ljava/util/List;

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;-><init>(Lcom/kingroot/kinguser/ahh;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahh;->apr:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    .line 141
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ahh$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/ahh$2;-><init>(Lcom/kingroot/kinguser/ahh;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahh;->aps:Lcom/kingroot/kinguser/bed;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahh;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/ahh;->apq:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/ahh;->app:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/ahh;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/ahh;->aps:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method public static wY()Lcom/kingroot/kinguser/ahh;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/kingroot/kinguser/ahh;->apk:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ahh;

    return-object v0
.end method


# virtual methods
.method public refresh()V
    .locals 5

    .prologue
    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/agl;->vO()Lcom/kingroot/kinguser/agl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agl;->vP()Ljava/util/List;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/kingroot/kinguser/ahh;->apq:Ljava/util/List;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/ahh;->apq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 135
    iget-object v2, p0, Lcom/kingroot/kinguser/ahh;->apq:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const v1, 0x4c7be3

    sget v2, Lcom/kingroot/kinguser/ahh;->apo:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/ahh;->apr:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 139
    return-void

    .line 136
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public wU()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/kingroot/kinguser/ahh;->app:Ljava/util/List;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/ahh;->app:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    monitor-exit v1

    .line 101
    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public wV()I
    .locals 3

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v2, p0, Lcom/kingroot/kinguser/ahh;->app:Ljava/util/List;

    monitor-enter v2

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahh;->app:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;

    .line 113
    invoke-static {v0}, Lcom/kingroot/kinguser/ahg;->a(Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 116
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 118
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public wW()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/kingroot/kinguser/ahh;->apq:Ljava/util/List;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/ahh;->apq:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    monitor-exit v1

    .line 127
    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
