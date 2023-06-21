.class Lcom/kingroot/kinguser/anb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/anc;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/anc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aAa:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final aAb:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private aAc:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppsMarketReporter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/anb;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/kingroot/kinguser/anb$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/anb$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/anb;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Lcom/kingroot/kinguser/anb$13;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anb$13;-><init>(Lcom/kingroot/kinguser/anb;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anb;->aAa:Lcom/kingroot/kinguser/alz;

    .line 233
    new-instance v0, Lcom/kingroot/kinguser/anb$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anb$2;-><init>(Lcom/kingroot/kinguser/anb;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anb;->aAb:Lcom/kingroot/kinguser/alz;

    .line 286
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/anb$4;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/anb$4;-><init>(Lcom/kingroot/kinguser/anb;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anb;->aAc:Lcom/kingroot/kinguser/bed;

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/anb;->aAa:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/anb;->aAb:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/anb$1;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/anb;-><init>()V

    return-void
.end method

.method public static IO()Lcom/kingroot/kinguser/anc;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/kingroot/kinguser/anb;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/anc;

    return-object v0
.end method

.method private IQ()V
    .locals 3

    .prologue
    .line 379
    iget-object v1, p0, Lcom/kingroot/kinguser/anb;->aAb:Lcom/kingroot/kinguser/alz;

    monitor-enter v1

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anb;->aAa:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/anb;->aAb:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 382
    monitor-exit v1

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/anb;->aAc:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 385
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anb;Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anb;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;
    .locals 4
    .param p1    # Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 403
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;-><init>()V

    .line 404
    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->categoryid:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->categoryid:I

    .line 405
    invoke-static {}, Lcom/kingroot/kinguser/buv;->ain()Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->bOr:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    .line 406
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    .line 407
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->strExtend:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->strExtend:Ljava/lang/String;

    .line 408
    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessType:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->businessType:I

    .line 409
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->busiData:[B

    .line 410
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->transData:[B

    .line 411
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    .line 412
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    .line 413
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    .line 414
    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersionCode:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    .line 415
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->fileUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fileUrl:Ljava/lang/String;

    .line 416
    iget-wide v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->size:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    .line 417
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->errorMsg:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->bOs:Ljava/lang/String;

    .line 419
    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anb;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/anb;->IQ()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anb;Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/anb;->b(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    return-void
.end method

.method private a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V
    .locals 11
    .param p3    # Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 423
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v6

    new-instance v7, Lcom/kingroot/kinguser/bed;

    sget-object v8, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v9, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v10, 0x0

    new-instance v0, Lcom/kingroot/kinguser/anb$5;

    move-object v1, p0

    move v2, p4

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/anb$5;-><init>(Lcom/kingroot/kinguser/anb;IILjava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 502
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/anb;->aAb:Lcom/kingroot/kinguser/alz;

    return-object v0
.end method

.method private b(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 506
    const-string v0, ""

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/kingroot/kinguser/anb;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 507
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/anb;->aAa:Lcom/kingroot/kinguser/alz;

    return-object v0
.end method


# virtual methods
.method public H(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/anb$6;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/anb$6;-><init>(Lcom/kingroot/kinguser/anb;ILjava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 91
    return-void
.end method

.method public I(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/anb$7;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/anb$7;-><init>(Lcom/kingroot/kinguser/anb;ILjava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 109
    return-void
.end method

.method public J(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 142
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/anb$9;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/anb$9;-><init>(Lcom/kingroot/kinguser/anb;ILjava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 156
    return-void
.end method

.method public K(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 186
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/anb$11;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/anb$11;-><init>(Lcom/kingroot/kinguser/anb;ILjava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 200
    return-void
.end method

.method public L(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/anb$12;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/anb$12;-><init>(Lcom/kingroot/kinguser/anb;ILjava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 218
    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;)V
    .locals 11

    .prologue
    .line 160
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v6

    new-instance v7, Lcom/kingroot/kinguser/bed;

    sget-object v8, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v9, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v10, 0x0

    new-instance v0, Lcom/kingroot/kinguser/anb$10;

    move-object v1, p0

    move v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/anb$10;-><init>(Lcom/kingroot/kinguser/anb;IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 182
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    const-string v0, "ERROR: reportAppInfo ReportInfo is null"

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;)V

    .line 256
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/anb$3;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/anb$3;-><init>(Lcom/kingroot/kinguser/anb;Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 283
    return-void
.end method

.method public a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V
    .locals 2
    .param p3    # Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 390
    if-nez p3, :cond_0

    .line 391
    const-string v0, "ERROR: [saveBusinessAppExposure] reportAppInfo ReportInfo is null"

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;)V

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-direct {v0, p3}, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    .line 397
    const/16 v1, 0x28

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/kingroot/kinguser/anb;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    goto :goto_0
.end method

.method public b(ILjava/lang/String;II)V
    .locals 11

    .prologue
    .line 118
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v6

    new-instance v7, Lcom/kingroot/kinguser/bed;

    sget-object v8, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v9, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v10, 0x0

    new-instance v0, Lcom/kingroot/kinguser/anb$8;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/anb$8;-><init>(Lcom/kingroot/kinguser/anb;IIILjava/lang/String;)V

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 138
    return-void
.end method

.method public d(ILjava/lang/String;I)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/kingroot/kinguser/anb;->b(ILjava/lang/String;II)V

    .line 114
    return-void
.end method
