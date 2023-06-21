.class public Lcom/kingroot/kinguser/btx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bNX:Lcom/kingroot/kinguser/btx;

.field private static bNY:[B


# instance fields
.field private bNZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/kingroot/kinguser/btx;->bNY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x14

    iput v0, p0, Lcom/kingroot/kinguser/btx;->bNZ:I

    .line 43
    return-void
.end method

.method public static aid()Lcom/kingroot/kinguser/btx;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/kingroot/kinguser/btx;->bNX:Lcom/kingroot/kinguser/btx;

    if-nez v0, :cond_1

    .line 59
    sget-object v1, Lcom/kingroot/kinguser/btx;->bNY:[B

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/btx;->bNX:Lcom/kingroot/kinguser/btx;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/kingroot/kinguser/btx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/btx;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/btx;->bNX:Lcom/kingroot/kinguser/btx;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/btx;->bNX:Lcom/kingroot/kinguser/btx;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(IIILcom/kingroot/kinguser/bue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/kingroot/kinguser/bue",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bvc;->b(IIILcom/kingroot/kinguser/bue;)V

    .line 344
    return-void
.end method

.method public a(IIJIJLcom/kingroot/kinguser/bue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJIJ",
            "Lcom/kingroot/kinguser/bue",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;-><init>()V

    .line 91
    iput p1, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    .line 92
    iput p2, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    .line 93
    iput-wide p3, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->groupId:J

    .line 94
    iput p5, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchOffset:I

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v1

    invoke-virtual {v1, v0, p6, p7, p8}, Lcom/kingroot/kinguser/bvc;->a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;JLcom/kingroot/kinguser/bue;)V

    .line 96
    return-void
.end method

.method public a(IJLcom/kingroot/kinguser/bun;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/kingroot/kinguser/bun",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bvc;->b(IJLcom/kingroot/kinguser/bun;)V

    .line 195
    return-void
.end method

.method public a(ILcom/kingroot/kinguser/buc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kingroot/kinguser/buc",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/btx$4;

    invoke-direct {v1, p0, p2}, Lcom/kingroot/kinguser/btx$4;-><init>(Lcom/kingroot/kinguser/btx;Lcom/kingroot/kinguser/buc;)V

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/bvc;->a(ILcom/kingroot/kinguser/buf;)V

    .line 316
    return-void
.end method

.method public a(ILjava/lang/String;IIJLcom/kingroot/kinguser/bui;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IIJ",
            "Lcom/kingroot/kinguser/bui",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            "Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;-><init>()V

    .line 208
    iput-object p2, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->pkgName:Ljava/lang/String;

    .line 209
    iput p1, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    .line 211
    iput p4, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchOffset:I

    .line 212
    if-nez p3, :cond_0

    .line 213
    const/16 v1, 0x1e

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    .line 217
    :goto_0
    iput-wide p5, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->groupId:J

    .line 218
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v1

    invoke-virtual {v1, v0, p7}, Lcom/kingroot/kinguser/bvc;->a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/kingroot/kinguser/bui;)V

    .line 220
    return-void

    .line 215
    :cond_0
    iput p3, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    goto :goto_0
.end method

.method public a(JIILcom/kingroot/kinguser/buc;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/kingroot/kinguser/buc",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v1

    iget v5, p0, Lcom/kingroot/kinguser/btx;->bNZ:I

    new-instance v6, Lcom/kingroot/kinguser/btx$2;

    invoke-direct {v6, p0, p5}, Lcom/kingroot/kinguser/btx$2;-><init>(Lcom/kingroot/kinguser/btx;Lcom/kingroot/kinguser/buc;)V

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/bvc;->a(JIILcom/kingroot/kinguser/bua;)V

    .line 185
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/kingroot/kinguser/buk;Z)V
    .locals 1

    .prologue
    .line 75
    invoke-static {p1}, Lcom/kingroot/kinguser/bty;->bP(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bty;->a(Lcom/kingroot/kinguser/buk;)V

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/bty;->eF(Z)V

    .line 78
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bun;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bun",
            "<",
            "Lcom/kingroot/kinguser/buz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bvc;->b(Lcom/kingroot/kinguser/bun;)V

    .line 373
    return-void
.end method

.method public a(Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;Lcom/kingroot/kinguser/buc;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;",
            "Lcom/kingroot/kinguser/buc",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->channelId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->categoryid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->appName:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->apkFileMd5:Ljava/lang/String;

    .line 266
    iget-object v6, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->version:Ljava/lang/String;

    iget v7, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->versionCode:I

    new-instance v8, Lcom/kingroot/kinguser/btx$3;

    invoke-direct {v8, p0, p2}, Lcom/kingroot/kinguser/btx$3;-><init>(Lcom/kingroot/kinguser/btx;Lcom/kingroot/kinguser/buc;)V

    .line 265
    invoke-virtual/range {v0 .. v8}, Lcom/kingroot/kinguser/bvc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/kingroot/kinguser/buf;)V

    .line 276
    return-void
.end method

.method public a(Ljava/lang/String;IIILcom/kingroot/kinguser/buc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/kingroot/kinguser/buc",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;-><init>()V

    .line 113
    const/16 v1, 0x8

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->type:I

    .line 114
    iput p3, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchOffset:I

    .line 115
    iput p2, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    .line 116
    iput-object p1, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->keyWord:Ljava/lang/String;

    .line 117
    iput p4, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/btx$1;

    invoke-direct {v2, p0, p5, v0}, Lcom/kingroot/kinguser/btx$1;-><init>(Lcom/kingroot/kinguser/btx;Lcom/kingroot/kinguser/buc;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/bvc;->a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/kingroot/kinguser/bub;)V

    .line 149
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kingroot/kinguser/bud;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bud",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/bvc;->a(BLjava/lang/String;Lcom/kingroot/kinguser/bud;)V

    .line 249
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;Lcom/kingroot/kinguser/buj;)V
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Lcom/kingroot/kinguser/bvd;->aiu()Lcom/kingroot/kinguser/bvd;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bvd;->b(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;Lcom/kingroot/kinguser/buj;)V

    .line 394
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bum;)V
    .locals 6

    .prologue
    .line 355
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/bvc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bum;)V

    .line 356
    return-void
.end method

.method public a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/bun;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingroot/kinguser/bun",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/bvc;->b(Ljava/util/ArrayList;Lcom/kingroot/kinguser/bun;)V

    .line 365
    return-void
.end method

.method public a(Ljava/util/List;Lcom/kingroot/kinguser/btz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;",
            "Lcom/kingroot/kinguser/btz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Lcom/kingroot/kinguser/bvd;->aiu()Lcom/kingroot/kinguser/bvd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/bvd;->b(Ljava/util/List;Lcom/kingroot/kinguser/btz;)V

    .line 383
    return-void
.end method

.method public a(Ljava/util/List;Lcom/kingroot/kinguser/bug;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bux;",
            ">;",
            "Lcom/kingroot/kinguser/bug;",
            ")V"
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Lcom/kingroot/kinguser/bvc;->ais()Lcom/kingroot/kinguser/bvc;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/bvc;->a(Ljava/util/List;Lcom/kingroot/kinguser/bug;)V

    .line 287
    return-void
.end method
