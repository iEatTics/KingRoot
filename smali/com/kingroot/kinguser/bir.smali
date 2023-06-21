.class final Lcom/kingroot/kinguser/bir;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bir;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private acW:Lcom/kingroot/kinguser/bis;

.field private final buh:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/xmod/ITpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bui:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private buj:Lcom/tencent/tps/client/IRootShell;

.field private buk:Lcom/tencent/tps/client/kr/AbsTPSClientKR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/kingroot/kinguser/bir$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bir$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bir;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bir;->buh:Landroid/os/RemoteCallbackList;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bir;->acW:Lcom/kingroot/kinguser/bis;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bir;->bui:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/bir$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bir$2;-><init>(Lcom/kingroot/kinguser/bir;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bir;->buj:Lcom/tencent/tps/client/IRootShell;

    .line 91
    new-instance v0, Lcom/kingroot/kinguser/bir$3;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bip;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bip;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/bir$3;-><init>(Lcom/kingroot/kinguser/bir;Landroid/content/Context;Lcom/tencent/tps/client/kr/ISharkForXMod;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bir;->buk:Lcom/tencent/tps/client/kr/AbsTPSClientKR;

    .line 115
    new-instance v0, Lcom/kingroot/kinguser/bis;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bis;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bir;->acW:Lcom/kingroot/kinguser/bis;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bir$1;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kingroot/kinguser/bir;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bir;)Lcom/kingroot/kinguser/bis;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->acW:Lcom/kingroot/kinguser/bis;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bir;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bir;->d(I[Ljava/lang/String;)V

    return-void
.end method

.method public static ade()Lcom/kingroot/kinguser/bir;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/kingroot/kinguser/bir;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bir;

    return-object v0
.end method

.method private varargs d(I[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 245
    new-instance v2, Lcom/kingroot/kinguser/xmod/TpsEvent;

    invoke-direct {v2, p1, p2}, Lcom/kingroot/kinguser/xmod/TpsEvent;-><init>(I[Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->buh:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 249
    :goto_0
    if-lez v0, :cond_1

    .line 250
    add-int/lit8 v1, v0, -0x1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->buh:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/xmod/ITpsCallback;

    .line 253
    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/xmod/ITpsCallback;->onEvent(Lcom/kingroot/kinguser/xmod/TpsEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v1

    .line 258
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    move v0, v1

    .line 258
    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->buh:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 262
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/xmod/ITpsCallback;)V
    .locals 1

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->buh:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public adb()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bir;->buk:Lcom/tencent/tps/client/kr/AbsTPSClientKR;

    invoke-virtual {v2}, Lcom/tencent/tps/client/kr/AbsTPSClientKR;->querySupportedSync()I

    move-result v2

    .line 181
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v2, v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bir;->adc()I
    :try_end_0
    .catch Lcom/tencent/tps/client/TPSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 190
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 183
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public adc()I
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->adg()Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->adh()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->adg()Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->adh()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/xmod/ITpsCallback;)V
    .locals 1

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->buh:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 136
    :cond_0
    return-void
.end method

.method public eh(Z)V
    .locals 1

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->buk:Lcom/tencent/tps/client/kr/AbsTPSClientKR;

    invoke-virtual {v0}, Lcom/tencent/tps/client/kr/AbsTPSClientKR;->enableAutoPatch()Z

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->buk:Lcom/tencent/tps/client/kr/AbsTPSClientKR;

    invoke-virtual {v0}, Lcom/tencent/tps/client/kr/AbsTPSClientKR;->enableExploitMonitor()Z

    .line 212
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->buk:Lcom/tencent/tps/client/kr/AbsTPSClientKR;

    invoke-virtual {v0}, Lcom/tencent/tps/client/kr/AbsTPSClientKR;->disableExploitMonitor()Z

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->buk:Lcom/tencent/tps/client/kr/AbsTPSClientKR;

    invoke-virtual {v0}, Lcom/tencent/tps/client/kr/AbsTPSClientKR;->disableAutoPatch()Z
    :try_end_0
    .catch Lcom/tencent/tps/client/TPSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public jf(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-static {}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->adg()Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->adh()Ljava/util/List;

    move-result-object v1

    .line 220
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    :goto_0
    return-object v0

    .line 224
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p1, :cond_1

    .line 225
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 229
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->bui:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->bui:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/kingroot/kinguser/bir;->buk:Lcom/tencent/tps/client/kr/AbsTPSClientKR;

    iget-object v2, p0, Lcom/kingroot/kinguser/bir;->buj:Lcom/tencent/tps/client/IRootShell;

    invoke-virtual {v1, v2}, Lcom/tencent/tps/client/kr/AbsTPSClientKR;->startTPSService(Lcom/tencent/tps/client/IRootShell;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->bui:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bir;->eh(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->bui:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bir;->bui:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/kingroot/kinguser/bir;->buk:Lcom/tencent/tps/client/kr/AbsTPSClientKR;

    invoke-virtual {v0}, Lcom/tencent/tps/client/kr/AbsTPSClientKR;->stopTPSService()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lcom/tencent/tps/client/TPSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
