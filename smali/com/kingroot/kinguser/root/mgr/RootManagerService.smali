.class public Lcom/kingroot/kinguser/root/mgr/RootManagerService;
.super Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/root/mgr/RootManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final APP_RULES_RW_LOCK:Ljava/lang/Object;

.field private mAppRuleDb:Lcom/kingroot/kinguser/akx;

.field private mAppRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/model/AppRuleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mAppRulesChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastLock:Ljava/lang/Object;

.field private mCheckAppThreadHandler:Lcom/kingroot/kinguser/bed;

.field private mPrepareRootMgrList:Lcom/kingroot/kinguser/bed;

.field private mPrepareRootMgrSuggestion:Lcom/kingroot/kinguser/bed;

.field private final sPrepareRootMgrListLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 77
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->APP_RULES_RW_LOCK:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRules:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mBroadcastLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRulesChangeListeners:Landroid/os/RemoteCallbackList;

    .line 138
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/root/mgr/RootManagerService$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService$2;-><init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mCheckAppThreadHandler:Lcom/kingroot/kinguser/bed;

    .line 686
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->sPrepareRootMgrListLock:Ljava/lang/Object;

    .line 690
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/root/mgr/RootManagerService$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService$4;-><init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mPrepareRootMgrList:Lcom/kingroot/kinguser/bed;

    .line 817
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/root/mgr/RootManagerService$6;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService$6;-><init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mPrepareRootMgrSuggestion:Lcom/kingroot/kinguser/bed;

    .line 78
    new-instance v0, Lcom/kingroot/kinguser/akx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akx;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    .line 79
    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->APP_RULES_RW_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRules:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/akx;->GF()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService$1;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/kingroot/kinguser/root/mgr/RootManagerService;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->checkApp()V

    return-void
.end method

.method static synthetic access$200(Lcom/kingroot/kinguser/root/mgr/RootManagerService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->sPrepareRootMgrListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingroot/kinguser/root/mgr/RootManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->processPkgWithUid(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private addAppsModelSortInTime(Ljava/util/List;ILcom/kingroot/kinguser/model/AppInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/model/RootMgrAppModel;",
            ">;I",
            "Lcom/kingroot/kinguser/model/AppInfo;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 282
    move v1, v2

    .line 284
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 285
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    .line 286
    iget-object v0, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/model/AppInfo;->getTime()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/kingroot/kinguser/model/AppInfo;->getTime()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    .line 287
    new-instance v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    invoke-direct {v0}, Lcom/kingroot/kinguser/model/RootMgrAppModel;-><init>()V

    .line 288
    iput-object p3, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    .line 289
    iput p2, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    .line 291
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 292
    const/4 v2, 0x1

    .line 297
    :cond_0
    if-nez v2, :cond_1

    .line 298
    new-instance v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    invoke-direct {v0}, Lcom/kingroot/kinguser/model/RootMgrAppModel;-><init>()V

    .line 299
    iput-object p3, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    .line 300
    iput p2, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    .line 302
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_1
    return-void

    .line 284
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private checkApp()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zh;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akx;->GF()Ljava/util/HashMap;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/AppRuleEntity;

    .line 156
    if-eqz v3, :cond_4

    .line 157
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 158
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    const/4 v1, 0x1

    .line 165
    :goto_1
    if-nez v1, :cond_0

    .line 166
    iget-object v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    const-string v6, "com.android.kinguser.console"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-object v0, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 173
    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->deleteRules(Ljava/util/List;)V

    .line 175
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public static getInstance()Lcom/kingroot/kinguser/root/mgr/RootManagerService;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;

    return-object v0
.end method

.method public static getInterface()Lcom/kingroot/kinguser/root/mgr/IRootManager;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->getInstance()Lcom/kingroot/kinguser/root/mgr/RootManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/mgr/IRootManager;

    move-result-object v0

    return-object v0
.end method

.method private notifyAppRulesChangeListener()V
    .locals 3

    .prologue
    .line 745
    iget-object v2, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mBroadcastLock:Ljava/lang/Object;

    monitor-enter v2

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRulesChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 747
    :goto_0
    if-lez v0, :cond_0

    .line 748
    add-int/lit8 v1, v0, -0x1

    .line 750
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRulesChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;

    invoke-interface {v0}, Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;->onAppRulesChangeListener()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 751
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 753
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRulesChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 754
    monitor-exit v2

    .line 755
    return-void

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private processPkgWithUid(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    .line 577
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    .line 580
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/auw;->jn(Ljava/lang/String;)I

    move-result v0

    .line 586
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->getRuleType(Ljava/lang/String;)I

    move-result v3

    .line 589
    new-instance v4, Ljava/util/HashSet;

    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingroot/kinguser/arv;->getUndeniedRiskApps()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 590
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingroot/kinguser/awb;->Se()Ljava/util/Set;

    move-result-object v5

    .line 591
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 593
    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 594
    if-eqz v0, :cond_7

    .line 595
    invoke-static {v1, v0}, Lcom/kingroot/kinguser/auw;->U(II)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v1

    .line 605
    :cond_2
    :goto_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 606
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/arv;->markDeniedRiskApps(Ljava/util/List;)V

    .line 608
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/kingroot/kinguser/awb;->d(Ljava/util/Set;)V

    .line 612
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/auv;->QV()Lcom/kingroot/kinguser/auv;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/kingroot/kinguser/auv;->jl(Ljava/lang/String;)I

    move-result v4

    .line 615
    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    .line 620
    if-eq v4, v1, :cond_0

    .line 625
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 630
    invoke-static {p1, p3}, Lcom/kingroot/kinguser/bbf;->K(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    const/4 v1, -0x1

    if-ne v3, v1, :cond_0

    .line 640
    if-eqz v0, :cond_4

    .line 641
    packed-switch v0, :pswitch_data_0

    .line 667
    :cond_4
    invoke-static {p1}, Lcom/kingroot/kinguser/bbf;->ko(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 669
    invoke-virtual {p0, p2, p1, v8, v9}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V

    .line 673
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xC()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 674
    const/16 v0, 0x63

    if-ne v4, v0, :cond_8

    .line 676
    invoke-virtual {p0, p2, p1, v8, v9}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V

    .line 683
    :cond_6
    :goto_2
    invoke-virtual {p0, p2, p1, v8, v9}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addAskRule(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 601
    goto :goto_1

    .line 643
    :pswitch_0
    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->BW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0, p2, p1, v8, v9}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 650
    :pswitch_1
    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->BW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0, p2, p1, v8, v9}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addDenyRule(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 658
    :pswitch_2
    invoke-virtual {p0, p2, p1, v8, v9}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 679
    :cond_8
    invoke-virtual {p0, p2, p1, v8, v9}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addDenyRule(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    .line 641
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private reloadAppRules(Z)V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->APP_RULES_RW_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akx;->GF()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRules:Ljava/util/HashMap;

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->notifyAppRulesChangeListener()V

    .line 136
    :cond_0
    return-void

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized removeAppRules(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->APP_RULES_RW_LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 265
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 267
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 272
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateIfRuleExpired(Z)V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/bhc;->ach()J

    move-result-wide v6

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->APP_RULES_RW_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/AppRuleEntity;

    .line 95
    iget-wide v8, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->aQN:J

    cmp-long v8, v8, v4

    if-eqz v8, :cond_0

    .line 96
    iget-wide v8, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    iget-wide v10, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->aQN:J

    add-long/2addr v8, v10

    cmp-long v8, v8, v6

    if-gez v8, :cond_0

    .line 97
    iget-object v0, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
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

    .line 104
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 105
    const/4 v3, 0x2

    move-object v1, p0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->updateRules(Ljava/util/List;IJZ)V

    .line 107
    :cond_2
    return-void
.end method

.method private updateIfSpecifiedRuleExpired(Lcom/kingroot/kinguser/model/AppRuleEntity;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const-wide/16 v6, 0x0

    .line 110
    iget-wide v0, p1, Lcom/kingroot/kinguser/model/AppRuleEntity;->aQN:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bhc;->ach()J

    move-result-wide v0

    .line 115
    iget-wide v2, p1, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/model/AppRuleEntity;->aQN:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 117
    :try_start_0
    iget-object v2, p1, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->updateRule(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    iput v8, p1, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    .line 120
    iput-wide v0, p1, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    .line 121
    iput-wide v6, p1, Lcom/kingroot/kinguser/model/AppRuleEntity;->aQN:J

    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .prologue
    .line 337
    invoke-static {}, Lcom/kingroot/kinguser/bhc;->ach()J

    move-result-wide v1

    .line 338
    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addRule(JLjava/lang/String;Ljava/lang/String;IJ)V

    .line 339
    return-void
.end method

.method public addAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRulesChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 359
    return-void
.end method

.method public addAskRule(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .prologue
    .line 344
    invoke-static {}, Lcom/kingroot/kinguser/bhc;->ach()J

    move-result-wide v1

    .line 345
    const/4 v5, 0x2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addRule(JLjava/lang/String;Ljava/lang/String;IJ)V

    .line 346
    return-void
.end method

.method public addDenyRule(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .prologue
    .line 351
    invoke-static {}, Lcom/kingroot/kinguser/bhc;->ach()J

    move-result-wide v1

    .line 352
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addRule(JLjava/lang/String;Ljava/lang/String;IJ)V

    .line 353
    return-void
.end method

.method public addRule(JLjava/lang/String;Ljava/lang/String;IJ)V
    .locals 8

    .prologue
    .line 534
    invoke-static {p4}, Lcom/kingroot/kinguser/wk;->dq(Ljava/lang/String;)Z

    .line 536
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/akx;->a(JLjava/lang/String;Ljava/lang/String;IJ)V

    .line 537
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->reloadAppRules(Z)V

    .line 538
    return-void
.end method

.method public checkAppRules()V
    .locals 2

    .prologue
    .line 374
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mCheckAppThreadHandler:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 375
    return-void
.end method

.method public deleteRule(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->removeAppRules(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/akx;->hs(Ljava/lang/String;)V

    .line 546
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->reloadAppRules(Z)V

    .line 547
    return-void
.end method

.method public declared-synchronized deleteRules(Ljava/util/List;)V
    .locals 4
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
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 234
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v0

    .line 237
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 238
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-static {v0}, Lcom/kingroot/kinguser/wk;->dp(Ljava/lang/String;)Z

    .line 243
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->removeAppRules(Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/akx;->hs(Ljava/lang/String;)V

    .line 237
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 248
    :cond_0
    if-eqz v0, :cond_1

    .line 249
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->reloadAppRules(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_1
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doActionForCallingUid(IIZ)V
    .locals 3

    .prologue
    .line 760
    invoke-static {}, Lcom/kingroot/kinguser/bbf;->Wl()Lcom/kingroot/kinguser/bbf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bbf;->hL(I)Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    move-result-object v1

    .line 761
    if-nez v1, :cond_0

    .line 785
    :goto_0
    return-void

    .line 766
    :cond_0
    if-nez p2, :cond_4

    .line 767
    iget-object v0, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/auw;->jn(Ljava/lang/String;)I

    move-result v0

    .line 768
    const/4 v2, 0x2

    if-ne v2, v0, :cond_2

    .line 769
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beO:Ljava/lang/String;

    .line 781
    :cond_1
    :goto_1
    invoke-static {v1, p3, v0}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    .line 782
    iget-object v1, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRt:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 783
    if-nez v1, :cond_1

    goto :goto_0

    .line 770
    :cond_2
    const/4 v2, 0x3

    if-ne v2, v0, :cond_3

    .line 771
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beR:Ljava/lang/String;

    goto :goto_1

    .line 773
    :cond_3
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beP:Ljava/lang/String;

    goto :goto_1

    .line 776
    :cond_4
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beQ:Ljava/lang/String;

    goto :goto_1
.end method

.method public getAllAppRuleList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/model/AppRuleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akx;->GF()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAllAppRuleList()Ljava/util/Map;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->getAllAppRuleList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getAllAppsInfo()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/model/RootMgrAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->updateIfRuleExpired(Z)V

    .line 410
    invoke-static {}, Lcom/kingroot/kinguser/avm;->RK()Lcom/kingroot/kinguser/avm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/avm;->RL()Ljava/util/HashMap;

    move-result-object v2

    .line 412
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 413
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 414
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 416
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 418
    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->APP_RULES_RW_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 420
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/AppRuleEntity;

    .line 427
    new-instance v8, Lcom/kingroot/kinguser/model/AppInfo;

    invoke-direct {v8}, Lcom/kingroot/kinguser/model/AppInfo;-><init>()V

    .line 428
    iget-object v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mAppName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/kingroot/kinguser/model/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 429
    iget-object v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/kingroot/kinguser/model/AppInfo;->ft(Ljava/lang/String;)V

    .line 430
    iget-wide v10, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    invoke-virtual {v8, v10, v11}, Lcom/kingroot/kinguser/model/AppInfo;->setTime(J)V

    .line 433
    iget-object v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/avn;

    .line 434
    if-eqz v1, :cond_0

    .line 435
    iget-object v9, v1, Lcom/kingroot/kinguser/avn;->aTQ:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/kingroot/kinguser/model/AppInfo;->bj(Ljava/util/List;)V

    .line 436
    iget-object v1, v1, Lcom/kingroot/kinguser/avn;->aTR:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/kingroot/kinguser/model/AppInfo;->ji(Ljava/lang/String;)V

    .line 439
    :cond_0
    iget v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    const/4 v9, 0x1

    if-ne v1, v9, :cond_2

    .line 441
    iget-wide v0, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->aQN:J

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-nez v0, :cond_1

    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0, v8}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addAppsModelSortInTime(Ljava/util/List;ILcom/kingroot/kinguser/model/AppInfo;)V

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 446
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v5, v0, v8}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addAppsModelSortInTime(Ljava/util/List;ILcom/kingroot/kinguser/model/AppInfo;)V

    goto :goto_0

    .line 448
    :cond_2
    iget v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    if-nez v1, :cond_4

    .line 450
    iget-wide v0, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->aQN:J

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    .line 452
    const/4 v0, 0x1

    invoke-direct {p0, v4, v0, v8}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addAppsModelSortInTime(Ljava/util/List;ILcom/kingroot/kinguser/model/AppInfo;)V

    goto :goto_0

    .line 455
    :cond_3
    const/4 v0, 0x2

    invoke-direct {p0, v5, v0, v8}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addAppsModelSortInTime(Ljava/util/List;ILcom/kingroot/kinguser/model/AppInfo;)V

    goto :goto_0

    .line 459
    :cond_4
    const/4 v0, 0x2

    invoke-direct {p0, v5, v0, v8}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->addAppsModelSortInTime(Ljava/util/List;ILcom/kingroot/kinguser/model/AppInfo;)V

    goto :goto_0

    .line 464
    :cond_5
    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 465
    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 466
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 468
    return-object v6
.end method

.method public getAllowAppRuleList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/model/AppRuleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akx;->GG()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAllowAppRuleList()Ljava/util/Map;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->getAllowAppRuleList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDenyAppRuleList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/model/AppRuleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akx;->GH()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDenyAppRuleList()Ljava/util/Map;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->getDenyAppRuleList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getRuleType(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 379
    const/4 v1, -0x1

    .line 381
    iget-object v2, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->APP_RULES_RW_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/AppRuleEntity;

    .line 383
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->updateIfSpecifiedRuleExpired(Lcom/kingroot/kinguser/model/AppRuleEntity;)V

    .line 386
    iget v0, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    .line 388
    :goto_0
    return v0

    .line 383
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public inDenyRuleList(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 394
    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->APP_RULES_RW_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/AppRuleEntity;

    .line 396
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    if-eqz v0, :cond_0

    .line 398
    iget v0, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    .line 396
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 402
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRulesChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 365
    return-void
.end method

.method public rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 567
    invoke-static {p2}, Lcom/kingroot/kinguser/wk;->dp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    invoke-static {p1}, Lcom/kingroot/kinguser/wk;->do(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSuRequestPromptLive(Z)V
    .locals 1

    .prologue
    .line 789
    invoke-static {}, Lcom/kingroot/kinguser/bbf;->Wl()Lcom/kingroot/kinguser/bbf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bbf;->setSuRequestPromptLive(Z)V

    .line 790
    return-void
.end method

.method public startPrepareRootMgrList()V
    .locals 2

    .prologue
    .line 369
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mPrepareRootMgrList:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 370
    return-void
.end method

.method public startPrepareRootMgrListWhenInstall(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/root/mgr/RootManagerService$3;

    invoke-direct {v6, p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService$3;-><init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 528
    return-void
.end method

.method public startPrepareRootMgrSuggestion()V
    .locals 2

    .prologue
    .line 811
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mPrepareRootMgrSuggestion:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 812
    return-void
.end method

.method public declared-synchronized swapRule(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 183
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/wk;->dq(Ljava/lang/String;)Z

    .line 186
    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->APP_RULES_RW_LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/AppRuleEntity;

    .line 188
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    if-nez v0, :cond_0

    .line 205
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 183
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :cond_0
    :try_start_4
    iget v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    if-ne v1, v2, :cond_2

    .line 194
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    .line 196
    invoke-static {}, Lcom/kingroot/kinguser/bbf;->Wn()V

    .line 200
    :cond_1
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/bhc;->ach()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    .line 202
    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    iget v3, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    iget-wide v4, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    iget-wide v6, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->aQN:J

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/akx;->c(Ljava/lang/String;IJJ)V

    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->reloadAppRules(Z)V

    goto :goto_0

    .line 197
    :cond_2
    iget v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    if-nez v1, :cond_1

    .line 198
    const/4 v1, 0x1

    iput v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public triggerSuRequestPrompt()V
    .locals 6

    .prologue
    .line 794
    invoke-static {}, Lcom/kingroot/kinguser/uj;->kA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/root/mgr/RootManagerService$5;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService$5;-><init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 805
    :goto_0
    return-void

    .line 803
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bbf;->Wl()Lcom/kingroot/kinguser/bbf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbf;->Wm()V

    goto :goto_0
.end method

.method public updateRule(Ljava/lang/String;IJ)V
    .locals 9

    .prologue
    .line 309
    invoke-static {p1}, Lcom/kingroot/kinguser/wk;->dq(Ljava/lang/String;)Z

    .line 312
    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->APP_RULES_RW_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/AppRuleEntity;

    .line 314
    monitor-exit v1

    .line 315
    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 320
    :cond_0
    iget v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 322
    invoke-static {}, Lcom/kingroot/kinguser/bbf;->Wn()V

    .line 325
    :cond_1
    iput p2, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    .line 326
    invoke-static {}, Lcom/kingroot/kinguser/bhc;->ach()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    .line 327
    iput-wide p3, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->aQN:J

    .line 329
    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    iget v3, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    iget-wide v4, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    iget-wide v6, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->aQN:J

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/akx;->c(Ljava/lang/String;IJJ)V

    .line 331
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->reloadAppRules(Z)V

    goto :goto_0
.end method

.method public declared-synchronized updateRules(Ljava/util/List;IJZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJZ)V"
        }
    .end annotation

    .prologue
    .line 211
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 212
    const/4 v0, 0x0

    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/bhc;->ach()J

    move-result-wide v4

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    invoke-static {v2}, Lcom/kingroot/kinguser/wk;->dq(Ljava/lang/String;)Z

    .line 219
    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->mAppRuleDb:Lcom/kingroot/kinguser/akx;

    move v3, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/akx;->c(Ljava/lang/String;IJJ)V

    .line 220
    const/4 v0, 0x1

    .line 221
    goto :goto_0

    .line 223
    :cond_0
    if-eqz v0, :cond_1

    .line 224
    invoke-direct {p0, p5}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->reloadAppRules(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_1
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
