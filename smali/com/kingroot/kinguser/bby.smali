.class public Lcom/kingroot/kinguser/bby;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_RootAuthRecycler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bby;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static WY()V
    .locals 6

    .prologue
    .line 28
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bby$1;

    invoke-direct {v5}, Lcom/kingroot/kinguser/bby$1;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 38
    return-void
.end method

.method private static declared-synchronized WZ()V
    .locals 5

    .prologue
    .line 42
    const-class v1, Lcom/kingroot/kinguser/bby;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->getAllAppsInfo()Ljava/util/List;

    move-result-object v0

    .line 43
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    .line 47
    iget-object v0, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/kingroot/kinguser/bby;->kr(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 49
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 53
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 61
    :goto_1
    monitor-exit v1

    return-void

    .line 60
    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/bbz;->c(Ljava/util/Set;Ljava/util/Set;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized hW(I)V
    .locals 4

    .prologue
    .line 102
    const-class v1, Lcom/kingroot/kinguser/bby;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bca;->Xa()Lcom/kingroot/kinguser/bca;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bca;->hg(I)Ljava/util/List;

    move-result-object v2

    .line 105
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bca;->hh(I)Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 120
    :goto_0
    monitor-exit v1

    return-void

    .line 113
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 114
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 119
    invoke-static {v3, v2}, Lcom/kingroot/kinguser/bbz;->c(Ljava/util/Set;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic jJ()V
    .locals 0

    .prologue
    .line 23
    invoke-static {}, Lcom/kingroot/kinguser/bby;->WZ()V

    return-void
.end method

.method private static kr(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 64
    invoke-static {p0}, Lcom/kingroot/kinguser/auw;->jn(Ljava/lang/String;)I

    move-result v0

    .line 65
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ks(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bby$2;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/bby$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 85
    return-void
.end method

.method private static declared-synchronized kt(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 88
    const-class v1, Lcom/kingroot/kinguser/bby;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/bby;->kr(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    monitor-exit v1

    return-void

    .line 93
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 94
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bbz;->c(Ljava/util/Set;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic ku(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p0}, Lcom/kingroot/kinguser/bby;->kt(Ljava/lang/String;)V

    return-void
.end method
