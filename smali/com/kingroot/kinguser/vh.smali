.class public Lcom/kingroot/kinguser/vh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kingroot/kinguser/vj;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private KB:Landroid/content/Context;

.field private KC:Lcom/kingroot/kinguser/vj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private KD:Lcom/kingroot/kinguser/vi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/vi",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final KE:Ljava/lang/Object;

.field private KF:Ljava/lang/String;

.field private KG:Lcom/kingroot/kinguser/vk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/vk",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final KH:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;",
            ">;"
        }
    .end annotation
.end field

.field KI:Lcom/kingroot/kinguser/vk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/vk",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/vj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vh;->KE:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/vh;->KG:Lcom/kingroot/kinguser/vk;

    .line 30
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vh;->KH:Landroid/os/RemoteCallbackList;

    .line 107
    new-instance v0, Lcom/kingroot/kinguser/vh$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/vh$1;-><init>(Lcom/kingroot/kinguser/vh;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/vh;->KI:Lcom/kingroot/kinguser/vk;

    .line 33
    iput-object p1, p0, Lcom/kingroot/kinguser/vh;->KB:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KG:Lcom/kingroot/kinguser/vk;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KH:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private bd(I)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iput p1, v0, Lcom/kingroot/kinguser/vj;->mState:I

    .line 105
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/vh;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kingroot/kinguser/vh;->lp()V

    return-void
.end method

.method private lp()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/kingroot/kinguser/vh;->lq()V

    .line 371
    return-void
.end method

.method private lq()V
    .locals 4

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v1, v1, Lcom/kingroot/kinguser/vj;->KT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v1, v1, Lcom/kingroot/kinguser/vj;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 381
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 383
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V
    .locals 1

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KH:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 81
    :cond_0
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/vk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/vk",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kingroot/kinguser/vh;->KG:Lcom/kingroot/kinguser/vk;

    .line 57
    return-void
.end method

.method public dc(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kingroot/kinguser/vh;->KF:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KF:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    return-void
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget v0, v0, Lcom/kingroot/kinguser/vj;->mState:I

    return v0
.end method

.method public ll()V
    .locals 5

    .prologue
    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KI:Lcom/kingroot/kinguser/vk;

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vk;->c(Lcom/kingroot/kinguser/vj;)V

    .line 246
    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KE:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vi;->lt()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    .line 251
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v1, v1, Lcom/kingroot/kinguser/vj;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 260
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 267
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KE:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_2
    new-instance v2, Lcom/kingroot/kinguser/vi;

    iget-object v3, p0, Lcom/kingroot/kinguser/vh;->KB:Landroid/content/Context;

    iget-object v4, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    invoke-direct {v2, v3, v4, v0}, Lcom/kingroot/kinguser/vi;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/vj;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    iget-object v2, p0, Lcom/kingroot/kinguser/vh;->KI:Lcom/kingroot/kinguser/vk;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/vi;->a(Lcom/kingroot/kinguser/vk;)V

    .line 276
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v2, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    iput-object v2, v0, Lcom/kingroot/kinguser/vj;->KV:Lcom/kingroot/kinguser/wo;

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v2, p0, Lcom/kingroot/kinguser/vh;->KF:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/vj;->KT:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/vi;->X(Z)Z

    .line 280
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 281
    return-void

    .line 251
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 280
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 268
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public lm()V
    .locals 2

    .prologue
    .line 287
    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KE:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vi;->lt()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    .line 292
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/vh;->bd(I)V

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KI:Lcom/kingroot/kinguser/vk;

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vk;->f(Lcom/kingroot/kinguser/vj;)V

    .line 296
    return-void

    .line 292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ln()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 302
    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KE:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vi;->lt()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    .line 307
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v1, v1, Lcom/kingroot/kinguser/vj;->KT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v1, v1, Lcom/kingroot/kinguser/vj;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 313
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v6, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v6, v6, Lcom/kingroot/kinguser/vj;->mSize:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v4, Lcom/kingroot/kinguser/vj;->mSize:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    move-object v1, v2

    .line 320
    :goto_0
    iget-object v2, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/kingroot/kinguser/vj;->KU:J

    .line 321
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v0, Lcom/kingroot/kinguser/vj;->mSize:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v2, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v2, Lcom/kingroot/kinguser/vj;->KU:J

    long-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v3, Lcom/kingroot/kinguser/vj;->mSize:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iput v2, v0, Lcom/kingroot/kinguser/vj;->BH:F

    .line 327
    :goto_1
    iget-object v2, p0, Lcom/kingroot/kinguser/vh;->KE:Ljava/lang/Object;

    monitor-enter v2

    .line 328
    :try_start_1
    new-instance v0, Lcom/kingroot/kinguser/vi;

    iget-object v3, p0, Lcom/kingroot/kinguser/vh;->KB:Landroid/content/Context;

    iget-object v4, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    invoke-direct {v0, v3, v4, v1}, Lcom/kingroot/kinguser/vi;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/vj;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    .line 329
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KI:Lcom/kingroot/kinguser/vk;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vi;->a(Lcom/kingroot/kinguser/vk;)V

    .line 331
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    iput-object v1, v0, Lcom/kingroot/kinguser/vj;->KV:Lcom/kingroot/kinguser/wo;

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vi;->X(Z)Z

    .line 336
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 338
    return-void

    .line 307
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    const/4 v2, 0x0

    iput v2, v0, Lcom/kingroot/kinguser/vj;->BH:F

    goto :goto_1

    .line 336
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    move-object v0, v1

    move-object v1, v3

    goto :goto_0
.end method

.method public lo()V
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KE:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vi;->lt()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/vh;->KD:Lcom/kingroot/kinguser/vi;

    .line 349
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v1, v1, Lcom/kingroot/kinguser/vj;->KT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v1, v1, Lcom/kingroot/kinguser/vj;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 357
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 362
    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/vh;->bd(I)V

    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/vh;->KI:Lcom/kingroot/kinguser/vk;

    iget-object v1, p0, Lcom/kingroot/kinguser/vh;->KC:Lcom/kingroot/kinguser/vj;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vk;->g(Lcom/kingroot/kinguser/vj;)V

    .line 364
    return-void

    .line 349
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
