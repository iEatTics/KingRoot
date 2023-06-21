.class public Lcom/kingroot/kinguser/abm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/abm$a;,
        Lcom/kingroot/kinguser/abm$b;
    }
.end annotation


# instance fields
.field private final Za:Ljava/lang/Object;

.field private final Zb:Ljava/lang/Object;

.field private Zc:Ljava/lang/Process;

.field private Zd:Ljava/io/DataOutputStream;

.field private Ze:Lcom/kingroot/kinguser/abm$a;

.field private Zf:Lcom/kingroot/kinguser/abm$a;

.field private final Zg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Zh:Lcom/kingroot/kinguser/abm$b;

.field private Zi:Ljava/io/ByteArrayOutputStream;

.field private Zj:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/abm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/abm;->Za:Ljava/lang/Object;

    .line 47
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/abm;->Zb:Ljava/lang/Object;

    .line 56
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/kingroot/kinguser/abm;->Zg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingroot/kinguser/abm;->Zh:Lcom/kingroot/kinguser/abm$b;

    .line 59
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/abm;->Zi:Ljava/io/ByteArrayOutputStream;

    .line 60
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/abm;->Zj:Ljava/io/ByteArrayOutputStream;

    .line 85
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 89
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 96
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p2, ""

    :cond_3
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/abm;->Zc:Ljava/lang/Process;

    .line 99
    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Za:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/abm;->Za:Ljava/lang/Object;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 101
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Zc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    const/4 v0, 0x1

    .line 111
    :goto_0
    if-eqz v0, :cond_4

    .line 112
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 115
    :cond_4
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Zc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abm;->Zd:Ljava/io/DataOutputStream;

    .line 117
    new-instance v0, Lcom/kingroot/kinguser/abm$a;

    const-string v1, "StrReader"

    iget-object v2, p0, Lcom/kingroot/kinguser/abm;->Zc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/abm;->Zi:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kingroot/kinguser/abm$a;-><init>(Lcom/kingroot/kinguser/abm;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abm;->Ze:Lcom/kingroot/kinguser/abm$a;

    .line 118
    new-instance v0, Lcom/kingroot/kinguser/abm$a;

    const-string v1, "ErrReader"

    iget-object v2, p0, Lcom/kingroot/kinguser/abm;->Zc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/abm;->Zj:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kingroot/kinguser/abm$a;-><init>(Lcom/kingroot/kinguser/abm;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abm;->Zf:Lcom/kingroot/kinguser/abm$a;

    .line 119
    new-instance v0, Lcom/kingroot/kinguser/abm$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Zc:Ljava/lang/Process;

    iget-object v2, p0, Lcom/kingroot/kinguser/abm;->Zg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/abm$b;-><init>(Ljava/lang/Process;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abm;->Zh:Lcom/kingroot/kinguser/abm$b;

    .line 122
    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Za:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Za:Ljava/lang/Object;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 124
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zh:Lcom/kingroot/kinguser/abm$b;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm$b;->ny()Z

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Ze:Lcom/kingroot/kinguser/abm$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm$a;->start()V

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zf:Lcom/kingroot/kinguser/abm$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm$a;->start()V

    .line 129
    return-void

    .line 124
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/kingroot/common/utils/system/VTCommand;J)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 285
    iget-object v2, p0, Lcom/kingroot/kinguser/abm;->Za:Ljava/lang/Object;

    monitor-enter v2

    .line 287
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/abm;->Zb:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 288
    :try_start_1
    iget-object v4, p0, Lcom/kingroot/kinguser/abm;->Zi:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 289
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 290
    const-string v4, ":RET="

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_0

    move v1, v0

    .line 291
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    if-eqz v1, :cond_1

    .line 295
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Za:Ljava/lang/Object;

    invoke-virtual {v1, p2, p3}, Ljava/lang/Object;->wait(J)V

    .line 297
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    iget-object v2, p0, Lcom/kingroot/kinguser/abm;->Zb:Ljava/lang/Object;

    monitor-enter v2

    .line 300
    :try_start_3
    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Zi:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 301
    iget-object v3, p0, Lcom/kingroot/kinguser/abm;->Zj:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 303
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .line 304
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 306
    const-string v1, ":RET="

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_5

    .line 307
    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Zi:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 308
    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Zj:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 309
    const-string v1, ":RET=0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 310
    new-instance v1, Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, ":RET="

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 311
    new-instance v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    iget-object v3, p1, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/kingroot/common/utils/system/VTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 325
    :goto_0
    return-object v0

    .line 291
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 297
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 314
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

    .line 315
    :cond_3
    const/4 v0, 0x2

    move v1, v0

    .line 319
    :goto_1
    const/4 v0, 0x0

    const-string v3, ":RET="

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 320
    new-instance v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    iget-object v4, p1, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v4, v1, v3, v5}, Lcom/kingroot/common/utils/system/VTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    .line 323
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_4
    move v1, v0

    .line 317
    goto :goto_1

    .line 323
    :cond_5
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 325
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/abm;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zb:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/abm;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Za:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized qS()V
    .locals 4

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    const-string v0, "exit\n"

    .line 359
    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Zd:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 360
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zd:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 361
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zc:Ljava/lang/Process;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 362
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Ze:Lcom/kingroot/kinguser/abm$a;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Ze:Lcom/kingroot/kinguser/abm$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm$a;->interrupt()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/abm;->Ze:Lcom/kingroot/kinguser/abm$a;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zf:Lcom/kingroot/kinguser/abm$a;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zf:Lcom/kingroot/kinguser/abm$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm$a;->interrupt()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/abm;->Zf:Lcom/kingroot/kinguser/abm$a;

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zh:Lcom/kingroot/kinguser/abm$b;

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zh:Lcom/kingroot/kinguser/abm$b;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm$b;->nA()V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/abm;->Zh:Lcom/kingroot/kinguser/abm$b;

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zc:Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 379
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zc:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/kingroot/kinguser/abm;->Zc:Ljava/lang/Process;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    :cond_3
    monitor-exit p0

    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 380
    :catch_0
    move-exception v0

    goto :goto_1

    .line 363
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized R(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCommand;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 178
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCommand;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abm;->b(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 180
    :cond_0
    monitor-exit p0

    return-object v2

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 233
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/kingroot/common/utils/system/VTCommand;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/kingroot/common/utils/system/VTCommand;->mTimeout:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cmd Argument Invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 237
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Zb:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zi:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zj:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 240
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 243
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/kingroot/common/utils/system/VTCommand;->mCmdValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Zd:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zd:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 248
    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Za:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Za:Ljava/lang/Object;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 250
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 253
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zd:Ljava/io/DataOutputStream;

    const-string v1, "echo :RET=$?\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 254
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zd:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 256
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v2

    .line 260
    :cond_2
    iget-wide v6, p1, Lcom/kingroot/common/utils/system/VTCommand;->mTimeout:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_3

    .line 261
    iget-wide v0, p1, Lcom/kingroot/common/utils/system/VTCommand;->mTimeout:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long/2addr v0, v6

    .line 262
    cmp-long v6, v0, v2

    if-gtz v6, :cond_3

    .line 273
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Exec Timeout"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
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

    .line 250
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    .line 267
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/kingroot/kinguser/abm;->a(Lcom/kingroot/common/utils/system/VTCommand;J)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v6

    .line 268
    if-eqz v6, :cond_2

    .line 269
    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 1

    .prologue
    .line 192
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/abm;->v(Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;
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

.method public declared-synchronized ew(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/kingroot/kinguser/abm;->Zd:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 341
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zd:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Ljava/lang/String;J)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/kingroot/common/utils/system/VTCommand;

    invoke-direct {v0, p1, p1, p2, p3}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abm;->b(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
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

.method protected finalize()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abm;->shutdown()V

    .line 135
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 136
    return-void
.end method

.method public declared-synchronized h(Ljava/util/List;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 162
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/kingroot/kinguser/abm;->v(Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 164
    :cond_0
    monitor-exit p0

    return-object v2

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public qR()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/kingroot/kinguser/abm;->Zg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 349
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/abm;->qS()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized v(Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 3

    .prologue
    .line 205
    monitor-enter p0

    if-eqz p2, :cond_0

    const-wide/32 v0, 0x1d4c0

    .line 206
    :goto_0
    :try_start_0
    new-instance v2, Lcom/kingroot/common/utils/system/VTCommand;

    invoke-direct {v2, p1, p1, v0, v1}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/abm;->b(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 205
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
