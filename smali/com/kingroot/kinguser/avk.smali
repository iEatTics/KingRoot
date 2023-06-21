.class public Lcom/kingroot/kinguser/avk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected aTx:I

.field private final aTy:Lcom/kingroot/kinguser/br;

.field private aTz:J

.field protected final mLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avk;->mLock:Ljava/lang/Object;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/avk;->aTx:I

    .line 42
    new-instance v0, Lcom/kingroot/kinguser/br;

    invoke-direct {v0}, Lcom/kingroot/kinguser/br;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avk;->aTy:Lcom/kingroot/kinguser/br;

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/avk;->aTz:J

    .line 48
    iput p1, p0, Lcom/kingroot/kinguser/avk;->aTx:I

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/avk;->aTy:Lcom/kingroot/kinguser/br;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method private RA()V
    .locals 7

    .prologue
    .line 121
    iget v0, p0, Lcom/kingroot/kinguser/avk;->aTx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 127
    iget-object v6, p0, Lcom/kingroot/kinguser/avk;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/avk;->RB()Ljava/io/File;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingroot/kinguser/avk;->aTz:J

    .line 133
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/kingroot/kinguser/avk;->aTx:I

    .line 134
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/kingroot/kinguser/br;

    invoke-direct {v4}, Lcom/kingroot/kinguser/br;-><init>()V

    const-string v5, "UTF-8"

    .line 132
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/aeq;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/br;

    .line 136
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/kingroot/kinguser/avk;->aTy:Lcom/kingroot/kinguser/br;

    iget-object v1, v1, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 138
    iget-object v1, p0, Lcom/kingroot/kinguser/avk;->aTy:Lcom/kingroot/kinguser/br;

    iget-object v1, v1, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/avk;->aTy:Lcom/kingroot/kinguser/br;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/avk;->a(Lcom/kingroot/kinguser/br;)V

    .line 141
    :cond_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private RB()Ljava/io/File;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/kingroot/kinguser/avk;->aTx:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xdat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected final Ry()Lcom/kingroot/kinguser/br;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lcom/kingroot/kinguser/avk;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/avk;->RB()Ljava/io/File;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/kingroot/kinguser/avk;->aTz:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/kingroot/kinguser/avk;->RA()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avk;->aTy:Lcom/kingroot/kinguser/br;

    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/avk;->aTy:Lcom/kingroot/kinguser/br;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/avk;->aTy:Lcom/kingroot/kinguser/br;

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected Rz()V
    .locals 8

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/avk;->aTy:Lcom/kingroot/kinguser/br;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/avk;->aTx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/avk;->aTx:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xdat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x0

    .line 82
    :try_start_0
    new-instance v1, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 83
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    .line 84
    iget-object v4, p0, Lcom/kingroot/kinguser/avk;->aTy:Lcom/kingroot/kinguser/br;

    invoke-virtual {v1, v0, v4}, Lcom/qq/jce/wup/UniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v1}, Lcom/qq/jce/wup/UniAttribute;->encode()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 86
    if-nez v0, :cond_2

    .line 110
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 91
    :cond_2
    :try_start_1
    sget-object v1, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-static {v1}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aaf;->C([B)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 92
    if-nez v0, :cond_3

    .line 110
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 97
    :cond_3
    :try_start_2
    new-instance v4, Lcom/kingroot/kinguser/aen;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v5, v6

    const/16 v6, 0x10

    new-array v6, v6, [B

    invoke-direct {v4, v1, v5, v6}, Lcom/kingroot/kinguser/aen;-><init>(II[B)V

    .line 98
    iget-object v5, p0, Lcom/kingroot/kinguser/avk;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    :try_start_4
    invoke-static {v4, v1}, Lcom/kingroot/kinguser/aen;->a(Lcom/kingroot/kinguser/aen;Ljava/io/OutputStream;)V

    .line 105
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 106
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 110
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 114
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/avk;->aTz:J

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 107
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 110
    :goto_3
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 107
    :catch_1
    move-exception v0

    goto :goto_3

    .line 106
    :catchall_3
    move-exception v0

    goto :goto_2
.end method

.method protected a(Lcom/kingroot/kinguser/br;)V
    .locals 0
    .param p1    # Lcom/kingroot/kinguser/br;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    return-void
.end method
