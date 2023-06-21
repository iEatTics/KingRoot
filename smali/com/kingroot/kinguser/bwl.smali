.class public Lcom/kingroot/kinguser/bwl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bwl$a;
    }
.end annotation


# static fields
.field private static final bRb:Lcom/kingroot/kinguser/bzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/bzc",
            "<",
            "Lcom/kingroot/kinguser/bwl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bRc:Lcom/kingroot/kinguser/bws;

.field private final bRd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bww;",
            ">;"
        }
    .end annotation
.end field

.field private bRe:Lcom/kingroot/kinguser/bwk;

.field private bRf:Lcom/kingroot/kinguser/bwi;

.field private bRg:Lcom/kingroot/kinguser/bwp;

.field private final bRh:Ljava/lang/Runnable;

.field private final bRi:Lcom/kingroot/kinguser/bwl$a;

.field private final mHandler:Landroid/os/Handler;

.field private mRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/kingroot/kinguser/bwl$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bwl$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bwl;->bRb:Lcom/kingroot/kinguser/bzc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bwl;->mRunning:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRd:Ljava/util/List;

    .line 115
    new-instance v0, Lcom/kingroot/kinguser/bwl$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bwl$2;-><init>(Lcom/kingroot/kinguser/bwl;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRh:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lcom/kingroot/kinguser/bwl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/bwl$a;-><init>(Lcom/kingroot/kinguser/bwl;Lcom/kingroot/kinguser/bwl$1;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRi:Lcom/kingroot/kinguser/bwl$a;

    .line 155
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TuringMMCore"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 157
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bwl;->mHandler:Landroid/os/Handler;

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bwl$1;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kingroot/kinguser/bwl;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwk;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRe:Lcom/kingroot/kinguser/bwk;

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILandroid/view/View;)Z
    .locals 1

    .prologue
    .line 440
    invoke-static {}, Lcom/kingroot/kinguser/bwy;->aji()Lcom/kingroot/kinguser/bwy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/kingroot/kinguser/bwy;->b(Landroid/content/Context;ILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/kingroot/kinguser/bwh;Lcom/kingroot/kinguser/byi;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 386
    const/4 v1, 0x0

    .line 389
    iget v2, p2, Lcom/kingroot/kinguser/byi;->bQZ:I

    if-nez v2, :cond_1

    .line 390
    const/16 v2, 0x1007

    invoke-interface {p1, v2, p2}, Lcom/kingroot/kinguser/bwh;->a(ILcom/kingroot/kinguser/byi;)Lcom/kingroot/kinguser/byq;

    move-result-object v2

    .line 391
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/kingroot/kinguser/byq;->errorCode:I

    if-nez v2, :cond_2

    .line 402
    :cond_0
    :goto_0
    return v0

    .line 396
    :cond_1
    const/16 v2, 0x1009

    invoke-interface {p1, v2, p2}, Lcom/kingroot/kinguser/bwh;->b(ILcom/kingroot/kinguser/byi;)Lcom/kingroot/kinguser/byp;

    move-result-object v2

    .line 397
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/kingroot/kinguser/byp;->errCode:I

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/bwj;Lcom/kingroot/kinguser/byi;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 406
    const/4 v1, 0x0

    .line 409
    iget v2, p2, Lcom/kingroot/kinguser/byi;->bQZ:I

    if-nez v2, :cond_1

    .line 410
    const-string v2, "userIdentify"

    const-string v3, "reportWup"

    invoke-interface {p1, v2, v3, p2}, Lcom/kingroot/kinguser/bwj;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/byi;)Lcom/kingroot/kinguser/byq;

    move-result-object v2

    .line 412
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/kingroot/kinguser/byq;->errorCode:I

    if-nez v2, :cond_2

    .line 424
    :cond_0
    :goto_0
    return v0

    .line 417
    :cond_1
    const-string v2, "sensorReport"

    const-string v3, "sensorInsightReportWup"

    invoke-interface {p1, v2, v3, p2}, Lcom/kingroot/kinguser/bwj;->b(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/byi;)Lcom/kingroot/kinguser/byp;

    move-result-object v2

    .line 419
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/kingroot/kinguser/byp;->errCode:I

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bwl;Lcom/kingroot/kinguser/bwh;Lcom/kingroot/kinguser/byi;)Z
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bwl;->a(Lcom/kingroot/kinguser/bwh;Lcom/kingroot/kinguser/byi;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bwl;Lcom/kingroot/kinguser/bwj;Lcom/kingroot/kinguser/byi;)Z
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bwl;->a(Lcom/kingroot/kinguser/bwj;Lcom/kingroot/kinguser/byi;)Z

    move-result v0

    return v0
.end method

.method public static aiO()Lcom/kingroot/kinguser/bwl;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/kingroot/kinguser/bwl;->bRb:Lcom/kingroot/kinguser/bzc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bwl;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bwl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRd:Ljava/util/List;

    return-object v0
.end method

.method public static bU(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 448
    invoke-static {}, Lcom/kingroot/kinguser/bwy;->aji()Lcom/kingroot/kinguser/bwy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bwy;->init(Landroid/content/Context;)V

    .line 449
    return-void
.end method

.method public static c(ILandroid/view/View;)Z
    .locals 1

    .prologue
    .line 444
    invoke-static {}, Lcom/kingroot/kinguser/byc;->ajQ()Lcom/kingroot/kinguser/byc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/kingroot/kinguser/byc;->d(ILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bwl;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bwl;->mRunning:Z

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwl$a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRi:Lcom/kingroot/kinguser/bwl$a;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bwl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwp;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRg:Lcom/kingroot/kinguser/bwp;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bws;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRc:Lcom/kingroot/kinguser/bws;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwi;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRf:Lcom/kingroot/kinguser/bwi;

    return-object v0
.end method

.method private onFailed(I)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRf:Lcom/kingroot/kinguser/bwi;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRf:Lcom/kingroot/kinguser/bwi;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/bwi;->onFailed(I)V

    .line 305
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRc:Lcom/kingroot/kinguser/bws;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRc:Lcom/kingroot/kinguser/bws;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bws;->reset()V

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl;->bRd:Ljava/util/List;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 431
    monitor-exit v1

    .line 432
    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/bwq;)V
    .locals 2

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bwt;->aiV()Lcom/kingroot/kinguser/bwt;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bwt;->aiW()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bwt;->init(Landroid/content/Context;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingroot/kinguser/bwl$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/kingroot/kinguser/bwl$4;-><init>(Lcom/kingroot/kinguser/bwl;Lcom/kingroot/kinguser/bwq;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/kingroot/kinguser/bwi;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/kingroot/kinguser/bwl;->bRf:Lcom/kingroot/kinguser/bwi;

    .line 162
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bwp;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/kingroot/kinguser/bwl;->bRg:Lcom/kingroot/kinguser/bwp;

    .line 166
    return-void
.end method

.method public declared-synchronized a(Lcom/kingroot/kinguser/bwk;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 173
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bwk;->getContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 174
    if-nez v1, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 204
    :goto_0
    monitor-exit p0

    return v0

    .line 179
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/bwt;->aiV()Lcom/kingroot/kinguser/bwt;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/kingroot/kinguser/bwt;->aiW()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bwt;->init(Landroid/content/Context;)V

    .line 184
    :cond_1
    iget-boolean v2, p0, Lcom/kingroot/kinguser/bwl;->mRunning:Z

    if-eqz v2, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bwl;->aiP()Z

    .line 189
    :cond_2
    iput-object p1, p0, Lcom/kingroot/kinguser/bwl;->bRe:Lcom/kingroot/kinguser/bwk;

    .line 191
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingroot/kinguser/bwl;->mRunning:Z

    .line 195
    iget-object v2, p0, Lcom/kingroot/kinguser/bwl;->bRc:Lcom/kingroot/kinguser/bws;

    if-nez v2, :cond_3

    .line 196
    new-instance v2, Lcom/kingroot/kinguser/bws;

    invoke-direct {v2, v1}, Lcom/kingroot/kinguser/bws;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kingroot/kinguser/bwl;->bRc:Lcom/kingroot/kinguser/bws;

    .line 200
    :cond_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/bwl;->reset()V

    .line 203
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kingroot/kinguser/bwl;->bRh:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bwk;->aiM()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aiP()Z
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 208
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/kingroot/kinguser/bwl;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    move v0, v7

    .line 298
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 209
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bwl;->mRunning:Z

    .line 212
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl;->bRe:Lcom/kingroot/kinguser/bwk;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kingroot/kinguser/bwl;->bRh:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kingroot/kinguser/bwl;->bRi:Lcom/kingroot/kinguser/bwl$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl;->bRc:Lcom/kingroot/kinguser/bws;

    if-eqz v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl;->bRc:Lcom/kingroot/kinguser/bws;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bws;->aiR()V

    .line 228
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl;->bRc:Lcom/kingroot/kinguser/bws;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bws;->aiT()J

    move-result-wide v2

    .line 229
    sget-wide v4, Lcom/kingroot/kinguser/bwr;->bSs:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 230
    if-ge v1, v6, :cond_3

    .line 233
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bwl;->onFailed(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v7

    .line 224
    goto :goto_0

    .line 238
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl;->bRc:Lcom/kingroot/kinguser/bws;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bws;->aiU()Landroid/util/SparseArray;

    move-result-object v4

    .line 239
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 242
    const/16 v1, -0x65

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bwl;->onFailed(I)V

    goto :goto_0

    .line 247
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl;->bRd:Ljava/util/List;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingroot/kinguser/bwl;->bRd:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 249
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 252
    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v6, :cond_5

    .line 255
    const/16 v1, -0x66

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bwl;->onFailed(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 249
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRe:Lcom/kingroot/kinguser/bwk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bwk;->aiK()I

    move-result v2

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRe:Lcom/kingroot/kinguser/bwk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bwk;->getAction()I

    move-result v3

    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl;->bRe:Lcom/kingroot/kinguser/bwk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bwk;->aab()I

    move-result v6

    .line 265
    iget-object v8, p0, Lcom/kingroot/kinguser/bwl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/kingroot/kinguser/bwl$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/bwl$3;-><init>(Lcom/kingroot/kinguser/bwl;IILandroid/util/SparseArray;Ljava/util/List;I)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v7

    .line 298
    goto/16 :goto_0
.end method
