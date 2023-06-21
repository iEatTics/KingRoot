.class public Lcom/kingroot/kinguser/fg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final V:Ljava/lang/Object;

.field private final pH:Ljava/lang/Object;

.field private pI:Ljava/lang/Process;

.field private pJ:Ljava/io/DataOutputStream;

.field private pK:Lcom/kingroot/kinguser/fh;

.field private pL:Lcom/kingroot/kinguser/fh;

.field private pM:Ljava/io/ByteArrayOutputStream;

.field private pN:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/fg;->V:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/fg;->pH:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/fg;->pM:Ljava/io/ByteArrayOutputStream;

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/fg;->pN:Ljava/io/ByteArrayOutputStream;

    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 64
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 71
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/fg;->pI:Ljava/lang/Process;

    .line 74
    iget-object v1, p0, Lcom/kingroot/kinguser/fg;->V:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->V:Ljava/lang/Object;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pI:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    const/4 v0, 0x1

    .line 86
    :goto_0
    if-eqz v0, :cond_3

    .line 87
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_3
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/kingroot/kinguser/fg;->pI:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/fg;->pJ:Ljava/io/DataOutputStream;

    .line 92
    new-instance v0, Lcom/kingroot/kinguser/fh;

    const-string v1, "s"

    iget-object v2, p0, Lcom/kingroot/kinguser/fg;->pI:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/fg;->pM:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kingroot/kinguser/fh;-><init>(Lcom/kingroot/kinguser/fg;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/fg;->pK:Lcom/kingroot/kinguser/fh;

    .line 93
    new-instance v0, Lcom/kingroot/kinguser/fh;

    const-string v1, "e"

    iget-object v2, p0, Lcom/kingroot/kinguser/fg;->pI:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/fg;->pN:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kingroot/kinguser/fh;-><init>(Lcom/kingroot/kinguser/fg;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/fg;->pL:Lcom/kingroot/kinguser/fh;

    .line 96
    iget-object v1, p0, Lcom/kingroot/kinguser/fg;->V:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->V:Ljava/lang/Object;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 98
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pK:Lcom/kingroot/kinguser/fh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fh;->start()V

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pL:Lcom/kingroot/kinguser/fh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fh;->start()V

    .line 102
    return-void

    .line 98
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private a(Lcom/kingroot/kinguser/fj;J)Lcom/kingroot/kinguser/fi;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 255
    iget-object v2, p0, Lcom/kingroot/kinguser/fg;->V:Ljava/lang/Object;

    monitor-enter v2

    .line 257
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/fg;->pH:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 258
    :try_start_1
    iget-object v4, p0, Lcom/kingroot/kinguser/fg;->pM:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 259
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 260
    const-string v4, ":RET="

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_0

    move v1, v0

    .line 261
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    if-eqz v1, :cond_1

    .line 265
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/fg;->V:Ljava/lang/Object;

    invoke-virtual {v1, p2, p3}, Ljava/lang/Object;->wait(J)V

    .line 267
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 269
    iget-object v2, p0, Lcom/kingroot/kinguser/fg;->pH:Ljava/lang/Object;

    monitor-enter v2

    .line 270
    :try_start_3
    iget-object v1, p0, Lcom/kingroot/kinguser/fg;->pM:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 271
    iget-object v3, p0, Lcom/kingroot/kinguser/fg;->pN:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 273
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .line 274
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 276
    const-string v1, ":RET="

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_5

    .line 277
    iget-object v1, p0, Lcom/kingroot/kinguser/fg;->pM:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 278
    iget-object v1, p0, Lcom/kingroot/kinguser/fg;->pN:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 279
    const-string v1, ":RET=0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 280
    const/4 v0, 0x0

    const-string v1, ":RET="

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 281
    new-instance v0, Lcom/kingroot/kinguser/fi;

    iget-object v3, p1, Lcom/kingroot/kinguser/fj;->ag:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/kingroot/kinguser/fi;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 295
    :goto_0
    return-object v0

    .line 261
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 267
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 284
    :cond_2
    :try_start_6
    const-string v1, ":RET=EOF"

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_3

    const-string v1, ":RET=EOF"

    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_4

    .line 285
    :cond_3
    const/4 v0, 0x2

    move v1, v0

    .line 289
    :goto_1
    const/4 v0, 0x0

    const-string v3, ":RET="

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 290
    new-instance v0, Lcom/kingroot/kinguser/fi;

    iget-object v4, p1, Lcom/kingroot/kinguser/fj;->ag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v4, v1, v3, v5}, Lcom/kingroot/kinguser/fi;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    .line 293
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_4
    move v1, v0

    .line 287
    goto :goto_1

    .line 293
    :cond_5
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 295
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/fg;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pH:Ljava/lang/Object;

    return-object v0
.end method

.method private ag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 320
    .line 322
    :try_start_0
    const-string v0, "exit\n"

    .line 323
    iget-object v1, p0, Lcom/kingroot/kinguser/fg;->pJ:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 324
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pJ:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 325
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pI:Ljava/lang/Process;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pK:Lcom/kingroot/kinguser/fh;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pK:Lcom/kingroot/kinguser/fh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fh;->interrupt()V

    .line 333
    iput-object v4, p0, Lcom/kingroot/kinguser/fg;->pK:Lcom/kingroot/kinguser/fh;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pL:Lcom/kingroot/kinguser/fh;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pL:Lcom/kingroot/kinguser/fh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fh;->interrupt()V

    .line 337
    iput-object v4, p0, Lcom/kingroot/kinguser/fg;->pL:Lcom/kingroot/kinguser/fh;

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pI:Ljava/lang/Process;

    if-eqz v0, :cond_2

    .line 341
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pI:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    :goto_1
    iput-object v4, p0, Lcom/kingroot/kinguser/fg;->pI:Ljava/lang/Process;

    .line 346
    :cond_2
    return-void

    .line 342
    :catch_0
    move-exception v0

    goto :goto_1

    .line 327
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/fg;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->V:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized Z(Ljava/lang/String;)Lcom/kingroot/kinguser/fi;
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/fg;->b(Ljava/lang/String;Z)Lcom/kingroot/kinguser/fi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/kingroot/kinguser/fj;)Lcom/kingroot/kinguser/fi;
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 203
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/fj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/kingroot/kinguser/fj;->pT:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 207
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/fg;->pH:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pM:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pN:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 210
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/kingroot/kinguser/fj;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/kingroot/kinguser/fg;->pJ:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pJ:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 218
    iget-object v1, p0, Lcom/kingroot/kinguser/fg;->V:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->V:Ljava/lang/Object;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 220
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 223
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pJ:Ljava/io/DataOutputStream;

    const-string v1, "echo :RET=$?\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/fg;->pJ:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 226
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v2

    .line 230
    :cond_2
    iget-wide v6, p1, Lcom/kingroot/kinguser/fj;->pT:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_3

    .line 231
    iget-wide v0, p1, Lcom/kingroot/kinguser/fj;->pT:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long/2addr v0, v6

    .line 232
    cmp-long v6, v0, v2

    if-gtz v6, :cond_3

    .line 243
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "t"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 220
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    .line 237
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/kingroot/kinguser/fg;->a(Lcom/kingroot/kinguser/fj;J)Lcom/kingroot/kinguser/fi;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v6

    .line 238
    if-eqz v6, :cond_2

    .line 239
    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized b(Ljava/lang/String;Z)Lcom/kingroot/kinguser/fi;
    .locals 3

    .prologue
    .line 176
    monitor-enter p0

    if-eqz p2, :cond_0

    const-wide/32 v0, 0x9c40

    .line 177
    :goto_0
    :try_start_0
    new-instance v2, Lcom/kingroot/kinguser/fj;

    invoke-direct {v2, p1, p1, v0, v1}, Lcom/kingroot/kinguser/fj;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/fg;->a(Lcom/kingroot/kinguser/fj;)Lcom/kingroot/kinguser/fi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 176
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/kingroot/kinguser/fg;->shutdown()V

    .line 108
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 109
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/fg;->ag()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    goto :goto_0
.end method
