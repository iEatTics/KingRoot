.class public Lcom/kingroot/kinguser/iu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/it;


# static fields
.field private static volatile sw:Lcom/kingroot/kinguser/iu;


# instance fields
.field private volatile sx:Lcom/kingroot/kinguser/ix;

.field private volatile sy:Z

.field private sz:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/iu;->sw:Lcom/kingroot/kinguser/iu;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    .line 37
    iput-boolean v1, p0, Lcom/kingroot/kinguser/iu;->sy:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/iu;->sz:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    return-void
.end method

.method private a(Lcom/kingroot/kinguser/ix;)V
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/iu;->cj()V

    .line 166
    iput-object p1, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    .line 167
    monitor-exit p0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 431
    if-eqz p1, :cond_1

    .line 432
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/iu;->sz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 435
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/kingroot/kinguser/iu;->cj()V

    .line 437
    iget-object v0, p0, Lcom/kingroot/kinguser/iu;->sz:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 441
    :cond_1
    return-void
.end method

.method private b(Lcom/kingroot/kinguser/ix;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-direct {p0}, Lcom/kingroot/kinguser/iu;->cl()Ljava/io/File;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    if-eqz p1, :cond_0

    .line 264
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {p1, v1}, Lcom/kingroot/kinguser/ix;->aD(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ix$b;->co()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static cg()Lcom/kingroot/kinguser/iu;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/kingroot/kinguser/iu;->sw:Lcom/kingroot/kinguser/iu;

    if-nez v0, :cond_1

    .line 58
    const-class v1, Lcom/kingroot/kinguser/iu;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/iu;->sw:Lcom/kingroot/kinguser/iu;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/kingroot/kinguser/iu;

    invoke-direct {v0}, Lcom/kingroot/kinguser/iu;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/iu;->sw:Lcom/kingroot/kinguser/iu;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/iu;->sw:Lcom/kingroot/kinguser/iu;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private ch()Lcom/kingroot/kinguser/ix;
    .locals 7

    .prologue
    .line 76
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.kingroot.master/applib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/kingroot/kinguser/iw;->aE(Ljava/lang/String;)Lcom/kingroot/kinguser/ix;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/mf;->ev()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 86
    const-string v0, "ku.sud"

    invoke-static {v0}, Lcom/kingroot/kinguser/iw;->aE(Ljava/lang/String;)Lcom/kingroot/kinguser/ix;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 101
    :cond_2
    const-string v0, "su"

    invoke-static {v0}, Lcom/kingroot/kinguser/iw;->aE(Ljava/lang/String;)Lcom/kingroot/kinguser/ix;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    .line 107
    const-string v1, "PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 108
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 109
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/su"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 111
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/iw;->aE(Ljava/lang/String;)Lcom/kingroot/kinguser/ix;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_4

    .line 117
    :cond_3
    if-nez v0, :cond_0

    .line 122
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/usr/iku/isu"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/iw;->aE(Ljava/lang/String;)Lcom/kingroot/kinguser/ix;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private ci()Lcom/kingroot/kinguser/ix;
    .locals 2

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/kingroot/kinguser/iu;->cl()Ljava/io/File;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/kingroot/kinguser/iw;->aE(Ljava/lang/String;)Lcom/kingroot/kinguser/ix;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized ck()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    invoke-static {v1}, Lcom/kingroot/kinguser/iw;->c(Lcom/kingroot/kinguser/ix;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    :goto_0
    monitor-exit p0

    return v0

    .line 225
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/iu;->ci()Lcom/kingroot/kinguser/ix;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_1

    .line 227
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/iu;->a(Lcom/kingroot/kinguser/ix;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 231
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/iu;->ch()Lcom/kingroot/kinguser/ix;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_3

    .line 235
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/iu;->b(Lcom/kingroot/kinguser/ix;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kingroot/kinguser/iu;->sy:Z

    .line 236
    invoke-direct {p0}, Lcom/kingroot/kinguser/iu;->ci()Lcom/kingroot/kinguser/ix;

    move-result-object v2

    .line 237
    if-eqz v2, :cond_2

    .line 238
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/iu;->a(Lcom/kingroot/kinguser/ix;)V

    .line 239
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ix;->shutdown()V

    goto :goto_0

    .line 243
    :cond_2
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/iu;->a(Lcom/kingroot/kinguser/ix;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 247
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cl()Ljava/io/File;
    .locals 4

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    invoke-direct {p0}, Lcom/kingroot/kinguser/iu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 280
    if-eqz v1, :cond_0

    .line 281
    new-instance v2, Ljava/io/File;

    const-string v3, "applib"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    new-instance v0, Ljava/io/File;

    const-string v1, "kd"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    :cond_0
    if-nez v0, :cond_1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.kingroot.kinguser/applib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    :cond_1
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ix$c;)Lcom/kingroot/kinguser/ix$b;
    .locals 6

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/kingroot/kinguser/iu;->cf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    new-instance v0, Lcom/kingroot/kinguser/ix$b;

    iget-object v1, p1, Lcom/kingroot/kinguser/ix$c;->mCmdFlag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    const-string v4, "Run Root Cmd Permission Denied"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ix$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    :goto_0
    return-object v0

    .line 338
    :cond_1
    const/4 v0, 0x0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    if-eqz v1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/ix;->b(Lcom/kingroot/kinguser/ix$c;)Lcom/kingroot/kinguser/ix$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 342
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/iu;->sz:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/kingroot/kinguser/ix$b;

    iget-object v1, p1, Lcom/kingroot/kinguser/ix$c;->mCmdFlag:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    const-string v4, "Run Root Cmd Exception"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ix$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 345
    :goto_2
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/iu;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1

    .line 344
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method public aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/iu;->c(Ljava/lang/String;Z)Lcom/kingroot/kinguser/ix$b;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ix$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/kingroot/kinguser/iu;->cf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 394
    :cond_0
    :goto_0
    return-object v0

    .line 379
    :cond_1
    const/4 v0, 0x0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    invoke-virtual {v1, p1, p2}, Lcom/kingroot/kinguser/ix;->c(Ljava/util/List;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 383
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/iu;->sz:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 385
    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 386
    :goto_2
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/iu;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1

    .line 385
    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2
.end method

.method public c(Ljava/lang/String;Z)Lcom/kingroot/kinguser/ix$b;
    .locals 3

    .prologue
    .line 323
    if-eqz p2, :cond_0

    const-wide/32 v0, 0x1d4c0

    .line 324
    :goto_0
    new-instance v2, Lcom/kingroot/kinguser/ix$c;

    invoke-direct {v2, p1, p1, v0, v1}, Lcom/kingroot/kinguser/ix$c;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/iu;->a(Lcom/kingroot/kinguser/ix$c;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v0

    return-object v0

    .line 323
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public cf()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/iu;->h(Z)Z

    move-result v0

    return v0
.end method

.method public cj()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    if-eqz v0, :cond_1

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ix;->shutdown()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    .line 159
    :cond_0
    monitor-exit p0

    .line 161
    :cond_1
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/kingroot/kinguser/iu;->cj()V

    .line 49
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 50
    return-void
.end method

.method public h(Z)Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/kingroot/kinguser/iu;->sy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/iu;->b(Lcom/kingroot/kinguser/ix;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/iu;->sy:Z

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 195
    :goto_0
    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/kingroot/kinguser/iu;->sx:Lcom/kingroot/kinguser/ix;

    invoke-static {v0}, Lcom/kingroot/kinguser/iw;->c(Lcom/kingroot/kinguser/ix;)Z

    move-result v0

    .line 197
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/kingroot/kinguser/iu;->ck()Z

    move-result v0

    .line 203
    if-eqz v0, :cond_1

    .line 212
    :cond_1
    return v0

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ix$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/iu;->b(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
