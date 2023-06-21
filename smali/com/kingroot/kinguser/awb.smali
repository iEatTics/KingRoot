.class public Lcom/kingroot/kinguser/awb;
.super Lcom/kingroot/kinguser/avk;
.source "SourceFile"


# static fields
.field private static final aUE:Lcom/kingroot/kinguser/bed;

.field private static final aUF:Lcom/kingroot/kinguser/bed;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/awb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aUC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bq;",
            ">;"
        }
    .end annotation
.end field

.field private aUD:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 94
    new-instance v0, Lcom/kingroot/kinguser/awb$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awb$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/awb;->sInstance:Lcom/kingroot/kinguser/cce;

    .line 193
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/awb$3;

    invoke-direct {v3}, Lcom/kingroot/kinguser/awb$3;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/awb;->aUE:Lcom/kingroot/kinguser/bed;

    .line 231
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/awb$4;

    invoke-direct {v3}, Lcom/kingroot/kinguser/awb$4;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/awb;->aUF:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 5

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avk;-><init>(I)V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/awb;->aUC:Ljava/util/HashMap;

    .line 158
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/awb$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/awb$2;-><init>(Lcom/kingroot/kinguser/awb;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awb;->aUD:Lcom/kingroot/kinguser/bed;

    .line 114
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awb;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/awb;->a(Lcom/kingroot/kinguser/br;)V

    .line 115
    return-void
.end method

.method synthetic constructor <init>(ILcom/kingroot/kinguser/awb$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/awb;-><init>(I)V

    return-void
.end method

.method public static Sy()Lcom/kingroot/kinguser/awb;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/kingroot/kinguser/awb;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/awb;

    return-object v0
.end method

.method public static hj(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 587
    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    .line 588
    :cond_0
    const/4 v0, 0x0

    .line 590
    :cond_1
    return v0
.end method


# virtual methods
.method public Se()Ljava/util/Set;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 422
    iget-object v2, p0, Lcom/kingroot/kinguser/awb;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 423
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awb;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 424
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 425
    const-string v4, "M"

    iget-object v5, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 426
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
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

    .line 431
    return-object v1
.end method

.method public Sf()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 522
    iget-object v2, p0, Lcom/kingroot/kinguser/awb;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 523
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awb;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 524
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 527
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 530
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
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

    .line 534
    return-object v1
.end method

.method protected a(Lcom/kingroot/kinguser/br;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/br;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 120
    iget-object v1, p0, Lcom/kingroot/kinguser/awb;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/awb;->aUC:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 122
    iget-object v0, p1, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 123
    iget-object v3, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/kingroot/kinguser/awb;->aUC:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    return-void
.end method

.method public bD(Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    .line 305
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 306
    const/4 v0, 0x0

    .line 307
    iget-object v3, p0, Lcom/kingroot/kinguser/awb;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awb;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v4

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/securemodule/api/AppInfo;

    .line 312
    iget-object v6, p0, Lcom/kingroot/kinguser/awb;->aUC:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 316
    iget-object v6, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-static {v6}, Lcom/kingroot/kinguser/aff;->fd(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 320
    new-instance v2, Lcom/kingroot/kinguser/bq;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bq;-><init>()V

    .line 321
    iget-object v6, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    iput-object v6, v2, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    .line 323
    iget-object v6, v4, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v6, p0, Lcom/kingroot/kinguser/awb;->aUC:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    const/4 v0, 0x1

    move v2, v0

    .line 328
    goto :goto_1

    .line 330
    :cond_2
    if-eqz v2, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awb;->Rz()V

    .line 333
    :cond_3
    monitor-exit v3

    move-object v0, v1

    .line 334
    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public banRiskAppsAutoStart(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/awb;->aUE:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public banRiskAppsRoot(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/awb;->aUD:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public d(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/security/ProtectRecorder;->XX()Lcom/kingroot/kinguser/security/ProtectRecorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/security/ProtectRecorder;->j(Ljava/util/Set;)V

    .line 444
    iget-object v2, p0, Lcom/kingroot/kinguser/awb;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    const/4 v0, 0x0

    .line 446
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 447
    iget-object v4, p0, Lcom/kingroot/kinguser/awb;->aUC:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 448
    if-eqz v0, :cond_1

    .line 451
    const-string v1, "M"

    iput-object v1, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    .line 452
    const/4 v0, 0x1

    move v1, v0

    .line 454
    goto :goto_1

    .line 455
    :cond_2
    if-eqz v1, :cond_3

    .line 456
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awb;->Rz()V

    .line 458
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/awb;->aUF:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public f(Ljava/util/Set;)Ljava/util/Set;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    .line 348
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 349
    const/4 v0, 0x0

    .line 350
    iget-object v3, p0, Lcom/kingroot/kinguser/awb;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 352
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awb;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v4

    .line 353
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 355
    iget-object v6, p0, Lcom/kingroot/kinguser/awb;->aUC:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 360
    new-instance v2, Lcom/kingroot/kinguser/bq;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bq;-><init>()V

    .line 361
    iget-object v6, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    iput-object v6, v2, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    .line 363
    iget-object v6, v4, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v6, p0, Lcom/kingroot/kinguser/awb;->aUC:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    const/4 v0, 0x1

    move v2, v0

    .line 367
    goto :goto_1

    .line 368
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    if-eqz v2, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awb;->Rz()V

    :cond_3
    move-object v0, v1

    .line 373
    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g(Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    .line 386
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 387
    const/4 v0, 0x0

    .line 388
    iget-object v3, p0, Lcom/kingroot/kinguser/awb;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 390
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awb;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v4

    .line 391
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 393
    iget-object v6, p0, Lcom/kingroot/kinguser/awb;->aUC:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 398
    new-instance v2, Lcom/kingroot/kinguser/bq;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bq;-><init>()V

    .line 399
    iput-object v0, v2, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    .line 401
    iget-object v6, v4, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v6, p0, Lcom/kingroot/kinguser/awb;->aUC:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    const/4 v0, 0x1

    move v2, v0

    .line 405
    goto :goto_1

    .line 406
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    if-eqz v2, :cond_3

    .line 409
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awb;->Rz()V

    :cond_3
    move-object v0, v1

    .line 411
    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeAppInfos(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/awb;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 473
    iget-object v4, p0, Lcom/kingroot/kinguser/awb;->aUC:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 475
    if-eqz v0, :cond_1

    .line 478
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 482
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awb;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 483
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 486
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 487
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awb;->Rz()V

    .line 489
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
