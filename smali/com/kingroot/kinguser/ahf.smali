.class public Lcom/kingroot/kinguser/ahf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ahf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/AdvancePermModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private apd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/AdvancePermModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private ape:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private apf:Lcom/kingroot/kinguser/bjb;

.field public apg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private aph:Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;

.field private api:Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

.field private apj:Lcom/kingroot/kinguser/root/log/ILogsChangeListener;

.field private final mBroadcastLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/kingroot/kinguser/ahf$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ahf$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ahf;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahf;->apc:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahf;->apd:Ljava/util/Map;

    .line 42
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahf;->ape:Landroid/os/RemoteCallbackList;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahf;->mBroadcastLock:Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/bjb;->adD()Lcom/kingroot/kinguser/bjb;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahf;->apf:Lcom/kingroot/kinguser/bjb;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahf;->apg:Ljava/util/Map;

    .line 381
    new-instance v0, Lcom/kingroot/kinguser/advance/manager/AdvancePermService$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/advance/manager/AdvancePermService$6;-><init>(Lcom/kingroot/kinguser/ahf;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahf;->aph:Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;

    .line 391
    new-instance v0, Lcom/kingroot/kinguser/advance/manager/AdvancePermService$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/advance/manager/AdvancePermService$7;-><init>(Lcom/kingroot/kinguser/ahf;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahf;->api:Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

    .line 400
    new-instance v0, Lcom/kingroot/kinguser/advance/manager/AdvancePermService$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/advance/manager/AdvancePermService$8;-><init>(Lcom/kingroot/kinguser/ahf;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahf;->apj:Lcom/kingroot/kinguser/root/log/ILogsChangeListener;

    .line 57
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahf;->init()V

    .line 58
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahf;->wO()V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ahf$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahf;-><init>()V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V
    .locals 3

    .prologue
    .line 209
    iget-object v1, p1, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apc:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 212
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v2, p0, Lcom/kingroot/kinguser/ahf;->apc:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ahf;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahf;->reset()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ahf;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ahf;->dl(I)V

    return-void
.end method

.method private b(Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apd:Ljava/util/Map;

    iget v1, p1, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 224
    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    iget-object v1, p0, Lcom/kingroot/kinguser/ahf;->apd:Ljava/util/Map;

    iget v2, p1, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/ahf;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahf;->wQ()V

    return-void
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/ahf;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahf;->wP()V

    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/ahf;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahf;->wR()V

    return-void
.end method

.method private dl(I)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 175
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    :cond_0
    return-void

    .line 179
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apc:Ljava/util/Map;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 186
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 193
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    .line 195
    iget v0, v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    if-ne v0, p1, :cond_3

    .line 196
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/kingroot/kinguser/ahf;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahf;->wp()V

    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 205
    return-void
.end method

.method public static wN()Lcom/kingroot/kinguser/ahf;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/kingroot/kinguser/ahf;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ahf;

    return-object v0
.end method

.method private wO()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ahf;->aph:Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbt;->addAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ahf;->api:Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agy;->a(Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;)V

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ahf;->apj:Lcom/kingroot/kinguser/root/log/ILogsChangeListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agy;->a(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V

    .line 84
    return-void
.end method

.method private wP()V
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    const-wide v2, 0x9a7ec800L

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/agy;->ai(J)Ljava/util/Map;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    return-void

    .line 95
    :cond_1
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ahf;->dl(I)V

    .line 97
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 102
    new-instance v3, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    invoke-direct {v3}, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;-><init>()V

    .line 103
    iput v1, v3, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    .line 104
    iput-object v0, v3, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/agy;->fG(Ljava/lang/String;)Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;

    move-result-object v0

    .line 109
    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, v3, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apu:I

    .line 111
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/ahf;->c(Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V

    goto :goto_0

    .line 109
    :cond_3
    iget v0, v0, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mRule:I

    goto :goto_1
.end method

.method private wQ()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->getAllAppRuleList()Ljava/util/HashMap;

    move-result-object v2

    .line 119
    invoke-static {v2}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    return-void

    .line 123
    :cond_1
    invoke-direct {p0, v5}, Lcom/kingroot/kinguser/ahf;->dl(I)V

    .line 125
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/model/AppRuleEntity;

    .line 127
    new-instance v4, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    invoke-direct {v4}, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;-><init>()V

    .line 128
    iput v5, v4, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    .line 129
    iput-object v0, v4, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    .line 130
    iget v0, v1, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    iput v0, v4, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apt:I

    .line 131
    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/ahf;->c(Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V

    goto :goto_0
.end method

.method private wR()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apf:Lcom/kingroot/kinguser/bjb;

    new-instance v1, Lcom/kingroot/kinguser/ahf$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ahf$3;-><init>(Lcom/kingroot/kinguser/ahf;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/bjb$b;Z)V

    .line 170
    return-void
.end method

.method private wp()V
    .locals 3

    .prologue
    .line 367
    iget-object v2, p0, Lcom/kingroot/kinguser/ahf;->mBroadcastLock:Ljava/lang/Object;

    monitor-enter v2

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->ape:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 369
    :goto_0
    if-lez v0, :cond_0

    .line 370
    add-int/lit8 v1, v0, -0x1

    .line 372
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->ape:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

    invoke-interface {v0}, Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;->onChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 375
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    move v0, v1

    .line 375
    goto :goto_0

    .line 377
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->ape:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 378
    monitor-exit v2

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public c(Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->ape:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 309
    return-void
.end method

.method public declared-synchronized c(Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 242
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ahf;->b(Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ahf;->a(Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->ape:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 314
    return-void
.end method

.method public declared-synchronized fN(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/AdvancePermModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 277
    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_0
    monitor-exit p0

    return-object v1

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    iget-object v1, p0, Lcom/kingroot/kinguser/ahf;->apg:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 347
    if-eqz v1, :cond_1

    .line 351
    iget-object v3, p0, Lcom/kingroot/kinguser/ahf;->apf:Lcom/kingroot/kinguser/bjb;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;Z)V

    goto :goto_1

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apf:Lcom/kingroot/kinguser/bjb;

    new-instance v1, Lcom/kingroot/kinguser/ahf$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ahf$5;-><init>(Lcom/kingroot/kinguser/ahf;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjb;->b(Lcom/kingroot/kinguser/bjb$b;)V

    goto :goto_0
.end method

.method public init()V
    .locals 6

    .prologue
    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/ahf$2;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/ahf$2;-><init>(Lcom/kingroot/kinguser/ahf;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 77
    return-void
.end method

.method public declared-synchronized q(Ljava/lang/String;I)Lcom/kingroot/kinguser/advance/model/AdvancePermModel;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 256
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 268
    :goto_0
    monitor-exit p0

    return-object v0

    .line 260
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    .line 263
    iget v3, v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 268
    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wI()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/AdvancePermModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 287
    iget-object v1, p0, Lcom/kingroot/kinguser/ahf;->apd:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-object v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wJ()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/AdvancePermModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    iget-object v1, p0, Lcom/kingroot/kinguser/ahf;->apc:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-object v0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wK()I
    .locals 1

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apc:Ljava/util/Map;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 323
    if-eqz v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/kingroot/kinguser/ahf;->apf:Lcom/kingroot/kinguser/bjb;

    invoke-virtual {v1, v0, p2}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;Z)V

    .line 327
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf;->apf:Lcom/kingroot/kinguser/bjb;

    new-instance v1, Lcom/kingroot/kinguser/ahf$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ahf$4;-><init>(Lcom/kingroot/kinguser/ahf;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjb;->b(Lcom/kingroot/kinguser/bjb$b;)V

    goto :goto_0
.end method
