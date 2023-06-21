.class public Lcom/kingroot/kinguser/auv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile aSY:Lcom/kingroot/kinguser/auv;

.field private static final aTa:Ljava/lang/String;


# instance fields
.field private Ky:Lcom/kingroot/kinguser/vh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/vh",
            "<",
            "Lcom/kingroot/kinguser/vf;",
            ">;"
        }
    .end annotation
.end field

.field private aSZ:Lcom/kingroot/kinguser/co;

.field private aTb:Lcom/kingroot/kinguser/bed;

.field private aTc:Lcom/kingroot/kinguser/aed;

.field private aTd:Lcom/kingroot/kinguser/vk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/vk",
            "<",
            "Lcom/kingroot/kinguser/vf;",
            ">;"
        }
    .end annotation
.end field

.field private afe:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "clm3"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/auv;->aTa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/auv;->afe:Ljava/lang/String;

    .line 144
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/auv$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/auv$1;-><init>(Lcom/kingroot/kinguser/auv;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auv;->aTb:Lcom/kingroot/kinguser/bed;

    .line 349
    new-instance v0, Lcom/kingroot/kinguser/auv$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/auv$2;-><init>(Lcom/kingroot/kinguser/auv;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auv;->aTc:Lcom/kingroot/kinguser/aed;

    .line 385
    new-instance v0, Lcom/kingroot/kinguser/auv$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/auv$3;-><init>(Lcom/kingroot/kinguser/auv;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auv;->aTd:Lcom/kingroot/kinguser/vk;

    .line 74
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/auv;->mContext:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/auv;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/auv;->afe:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static QV()Lcom/kingroot/kinguser/auv;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/kingroot/kinguser/auv;->aSY:Lcom/kingroot/kinguser/auv;

    if-nez v0, :cond_1

    .line 83
    const-class v1, Lcom/kingroot/kinguser/auv;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/auv;->aSY:Lcom/kingroot/kinguser/auv;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/kingroot/kinguser/auv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auv;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/auv;->aSY:Lcom/kingroot/kinguser/auv;

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/auv;->aSY:Lcom/kingroot/kinguser/auv;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private QX()Lcom/kingroot/kinguser/co;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/auv;->aSZ:Lcom/kingroot/kinguser/co;

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/kingroot/kinguser/auv;->QY()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/auv;->aSZ:Lcom/kingroot/kinguser/co;

    return-object v0
.end method

.method private QY()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 228
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/auv;->afe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cl2.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :try_start_0
    const-string v0, "cl2.conf"

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/rs;->e(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    .line 244
    new-array v0, v0, [B

    .line 245
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 248
    array-length v3, v0

    if-lez v3, :cond_1

    .line 249
    sget-object v2, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-static {v2}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/aaf;->D([B)[B

    move-result-object v2

    .line 253
    :cond_1
    if-eqz v2, :cond_2

    .line 254
    new-instance v0, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 255
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    .line 258
    sget-object v2, Lcom/kingroot/kinguser/auv;->aTa:Ljava/lang/String;

    new-instance v3, Lcom/kingroot/kinguser/co;

    invoke-direct {v3}, Lcom/kingroot/kinguser/co;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/co;

    iput-object v0, p0, Lcom/kingroot/kinguser/auv;->aSZ:Lcom/kingroot/kinguser/co;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 270
    :cond_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 273
    :cond_3
    :goto_1
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 267
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 268
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 267
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/kinguser/auv;Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vh;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/auv;->Ky:Lcom/kingroot/kinguser/vh;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/auv;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/kingroot/kinguser/auv;->QY()V

    return-void
.end method


# virtual methods
.method protected QW()V
    .locals 6

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/auv;->aTc:Lcom/kingroot/kinguser/aed;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/auv;->aTc:Lcom/kingroot/kinguser/aed;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aed;->onCheckStarted()V

    .line 161
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v1, Lcom/kingroot/kinguser/bu;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bu;-><init>()V

    .line 163
    const-string v2, "kinguserbuildinconf.conf"

    iput-object v2, v1, Lcom/kingroot/kinguser/bu;->filename:Ljava/lang/String;

    .line 164
    const-string v2, ""

    iput-object v2, v1, Lcom/kingroot/kinguser/bu;->checksum:Ljava/lang/String;

    .line 165
    const/4 v2, 0x0

    iput v2, v1, Lcom/kingroot/kinguser/bu;->timestamp:I

    .line 168
    invoke-direct {p0}, Lcom/kingroot/kinguser/auv;->QX()Lcom/kingroot/kinguser/co;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {v2}, Lcom/kingroot/kinguser/co;->Z()Lcom/kingroot/kinguser/bx;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_1

    .line 172
    iget-object v3, v2, Lcom/kingroot/kinguser/bx;->checksum:Ljava/lang/String;

    iput-object v3, v1, Lcom/kingroot/kinguser/bu;->checksum:Ljava/lang/String;

    .line 173
    iget v2, v2, Lcom/kingroot/kinguser/bx;->timestamp:I

    iput v2, v1, Lcom/kingroot/kinguser/bu;->timestamp:I

    .line 176
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Lcom/kingroot/kinguser/bv;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bv;-><init>()V

    .line 179
    iput-object v0, v1, Lcom/kingroot/kinguser/bv;->lj:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 183
    new-instance v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;

    invoke-direct {v2}, Lcom/kingroot/kingmaster/network/updata/CheckResult;-><init>()V

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 187
    iget-object v3, p0, Lcom/kingroot/kinguser/auv;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/kingroot/kinguser/vc;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bv;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    .line 188
    if-nez v1, :cond_6

    .line 190
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/kingroot/kinguser/aks;->aH(J)V

    .line 191
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bt;

    .line 192
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/kingroot/kinguser/bt;->la:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/kingroot/kinguser/bt;->la:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 193
    iget-object v0, v0, Lcom/kingroot/kinguser/bt;->la:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bw;

    .line 194
    if-eqz v0, :cond_2

    .line 195
    new-instance v3, Lcom/kingroot/common/network/download/UpdateInfo;

    invoke-direct {v3}, Lcom/kingroot/common/network/download/UpdateInfo;-><init>()V

    .line 196
    iget-object v4, v0, Lcom/kingroot/kinguser/bw;->url:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    .line 197
    iget-object v0, v0, Lcom/kingroot/kinguser/bw;->filename:Ljava/lang/String;

    iput-object v0, v3, Lcom/kingroot/common/network/download/UpdateInfo;->fileName:Ljava/lang/String;

    .line 198
    iget-object v0, v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_3
    const-string v0, ""

    iput-object v0, v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mMessage:Ljava/lang/String;

    .line 209
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/auv;->aTc:Lcom/kingroot/kinguser/aed;

    if-eqz v0, :cond_5

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/auv;->aTc:Lcom/kingroot/kinguser/aed;

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/aed;->onCheckFinished(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 212
    :cond_5
    return-void

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/auv;->aTc:Lcom/kingroot/kinguser/aed;

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/auv;->aTc:Lcom/kingroot/kinguser/aed;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aed;->onCheckEvent(I)V

    goto :goto_1
.end method

.method public jl(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/air;->yd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/aig;->xB()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 123
    :goto_0
    return v0

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/auv;->QX()Lcom/kingroot/kinguser/co;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    iget-object v0, v0, Lcom/kingroot/kinguser/co;->mq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cp;

    .line 106
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cp;->aa()Ljava/lang/String;

    move-result-object v3

    .line 107
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cp;->ab()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 110
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :sswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const/16 v0, 0x63

    goto :goto_0

    :cond_2
    move v0, v1

    .line 123
    goto :goto_0

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method protected jm(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 373
    new-instance v0, Lcom/kingroot/kinguser/vf;

    const-string v1, "cl2.conf"

    invoke-direct {v0, v1, p1}, Lcom/kingroot/kinguser/vf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v1, Lcom/kingroot/kinguser/vh;

    iget-object v2, p0, Lcom/kingroot/kinguser/auv;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/vh;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/vj;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/auv;->Ky:Lcom/kingroot/kinguser/vh;

    .line 376
    iget-object v0, p0, Lcom/kingroot/kinguser/auv;->Ky:Lcom/kingroot/kinguser/vh;

    iget-object v1, p0, Lcom/kingroot/kinguser/auv;->afe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vh;->dc(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/kingroot/kinguser/auv;->Ky:Lcom/kingroot/kinguser/vh;

    iget-object v1, p0, Lcom/kingroot/kinguser/auv;->aTd:Lcom/kingroot/kinguser/vk;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vk;)V

    .line 379
    iget-object v0, p0, Lcom/kingroot/kinguser/auv;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->ll()V

    .line 380
    return-void
.end method
