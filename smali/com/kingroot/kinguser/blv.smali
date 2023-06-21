.class public final Lcom/kingroot/kinguser/blv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/blv$a;
    }
.end annotation


# static fields
.field private static final bAp:Ljava/lang/String;

.field private static final bAq:Ljava/lang/String;

.field private static final bAr:Ljava/lang/String;

.field private static final bAs:Ljava/lang/String;


# instance fields
.field private final bAt:Ljava/lang/Object;

.field private final bAu:Ljava/lang/Object;

.field private bAv:Ljava/lang/Process;

.field private bAw:Ljava/io/DataOutputStream;

.field private bAx:Lcom/kingroot/kinguser/blv$a;

.field private bAy:Lcom/kingroot/kinguser/blv$a;

.field private bAz:Ljava/io/ByteArrayOutputStream;

.field private sK:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "vt1"

    invoke-static {v0}, Lcom/kingroot/kinguser/bms;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/blv;->bAp:Ljava/lang/String;

    .line 28
    const-string v0, "vt2"

    invoke-static {v0}, Lcom/kingroot/kinguser/bms;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/blv;->bAq:Ljava/lang/String;

    .line 29
    const-string v0, "vt3"

    invoke-static {v0}, Lcom/kingroot/kinguser/bms;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/blv;->bAr:Ljava/lang/String;

    .line 30
    const-string v0, "vt4"

    invoke-static {v0}, Lcom/kingroot/kinguser/bms;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/blv;->bAs:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/blv;->bAt:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/blv;->bAu:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/blv;->bAz:Ljava/io/ByteArrayOutputStream;

    .line 57
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/blv;->sK:Ljava/io/ByteArrayOutputStream;

    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 78
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/blv;->bAv:Ljava/lang/Process;

    .line 81
    iget-object v1, p0, Lcom/kingroot/kinguser/blv;->bAt:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAt:Ljava/lang/Object;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAv:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    const/4 v0, 0x1

    .line 93
    :goto_0
    if-eqz v0, :cond_3

    .line 94
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 90
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_3
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/kingroot/kinguser/blv;->bAv:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/blv;->bAw:Ljava/io/DataOutputStream;

    .line 99
    new-instance v0, Lcom/kingroot/kinguser/blv$a;

    const-string v1, "StrReader"

    iget-object v2, p0, Lcom/kingroot/kinguser/blv;->bAv:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/blv;->bAz:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kingroot/kinguser/blv$a;-><init>(Lcom/kingroot/kinguser/blv;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/blv;->bAx:Lcom/kingroot/kinguser/blv$a;

    .line 100
    new-instance v0, Lcom/kingroot/kinguser/blv$a;

    const-string v1, "ErrReader"

    iget-object v2, p0, Lcom/kingroot/kinguser/blv;->bAv:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/blv;->sK:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kingroot/kinguser/blv$a;-><init>(Lcom/kingroot/kinguser/blv;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/blv;->bAy:Lcom/kingroot/kinguser/blv$a;

    .line 103
    iget-object v1, p0, Lcom/kingroot/kinguser/blv;->bAt:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAt:Ljava/lang/Object;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 105
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAx:Lcom/kingroot/kinguser/blv$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/blv$a;->start()V

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAy:Lcom/kingroot/kinguser/blv$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/blv$a;->start()V

    .line 109
    return-void

    .line 105
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized I(Ljava/lang/String;Z)Lcloudsdk/shell/VTCmdResult;
    .locals 4

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcloudsdk/shell/VTCommand;

    const-wide/32 v2, 0x1d4c0

    invoke-direct {v0, p1, p1, v2, v3}, Lcloudsdk/shell/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/blv;->a(Lcloudsdk/shell/VTCommand;)Lcloudsdk/shell/VTCmdResult;
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

.method private a(Lcloudsdk/shell/VTCommand;J)Lcloudsdk/shell/VTCmdResult;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 265
    iget-object v2, p0, Lcom/kingroot/kinguser/blv;->bAt:Ljava/lang/Object;

    monitor-enter v2

    .line 267
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/blv;->bAu:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    :try_start_1
    iget-object v4, p0, Lcom/kingroot/kinguser/blv;->bAz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 269
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 270
    sget-object v4, Lcom/kingroot/kinguser/blv;->bAq:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_0

    move v1, v0

    .line 271
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    if-eqz v1, :cond_1

    .line 275
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/blv;->bAt:Ljava/lang/Object;

    invoke-virtual {v1, p2, p3}, Ljava/lang/Object;->wait(J)V

    .line 277
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 279
    iget-object v2, p0, Lcom/kingroot/kinguser/blv;->bAu:Ljava/lang/Object;

    monitor-enter v2

    .line 280
    :try_start_3
    iget-object v1, p0, Lcom/kingroot/kinguser/blv;->bAz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 281
    iget-object v3, p0, Lcom/kingroot/kinguser/blv;->sK:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 283
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .line 284
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 286
    sget-object v1, Lcom/kingroot/kinguser/blv;->bAq:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_5

    .line 287
    iget-object v1, p0, Lcom/kingroot/kinguser/blv;->bAz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 288
    iget-object v1, p0, Lcom/kingroot/kinguser/blv;->sK:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 289
    sget-object v1, Lcom/kingroot/kinguser/blv;->bAr:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 290
    new-instance v1, Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v3, Lcom/kingroot/kinguser/blv;->bAq:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 291
    new-instance v0, Lcloudsdk/shell/VTCmdResult;

    iget-object v3, p1, Lcloudsdk/shell/VTCommand;->mCmdFlag:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1, v5}, Lcloudsdk/shell/VTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 305
    :goto_0
    return-object v0

    .line 271
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 277
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 294
    :cond_2
    :try_start_5
    sget-object v1, Lcom/kingroot/kinguser/blv;->bAs:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_3

    sget-object v1, Lcom/kingroot/kinguser/blv;->bAs:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_4

    .line 295
    :cond_3
    const/4 v0, 0x2

    move v1, v0

    .line 299
    :goto_1
    new-instance v3, Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v6, Lcom/kingroot/kinguser/blv;->bAq:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 300
    new-instance v0, Lcloudsdk/shell/VTCmdResult;

    iget-object v4, p1, Lcloudsdk/shell/VTCommand;->mCmdFlag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v4, v1, v3, v5}, Lcloudsdk/shell/VTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 303
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    move v1, v0

    .line 297
    goto :goto_1

    .line 303
    :cond_5
    monitor-exit v2

    .line 305
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/blv;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAu:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized ay()V
    .locals 4

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    const-string v0, "exit\n"

    .line 337
    iget-object v1, p0, Lcom/kingroot/kinguser/blv;->bAw:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 338
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAw:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 339
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAv:Ljava/lang/Process;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAx:Lcom/kingroot/kinguser/blv$a;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAx:Lcom/kingroot/kinguser/blv$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/blv$a;->interrupt()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/blv;->bAx:Lcom/kingroot/kinguser/blv$a;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAy:Lcom/kingroot/kinguser/blv$a;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAy:Lcom/kingroot/kinguser/blv$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/blv$a;->interrupt()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/blv;->bAy:Lcom/kingroot/kinguser/blv$a;

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAv:Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 355
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAv:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/kingroot/kinguser/blv;->bAv:Ljava/lang/Process;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    :cond_2
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 341
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/blv;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAt:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/kingroot/kinguser/blv;->bAs:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcloudsdk/shell/VTCommand;)Lcloudsdk/shell/VTCmdResult;
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 213
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcloudsdk/shell/VTCommand;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcloudsdk/shell/VTCommand;->mTimeout:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cmd Argument Invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 217
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/blv;->bAu:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAz:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->sK:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 220
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcloudsdk/shell/VTCommand;->mCmdValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/kingroot/kinguser/blv;->bAw:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAw:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 228
    iget-object v1, p0, Lcom/kingroot/kinguser/blv;->bAt:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAt:Ljava/lang/Object;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 230
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 233
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAw:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/kingroot/kinguser/blv;->bAp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAw:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 236
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v0, v2

    .line 240
    :cond_2
    iget-wide v6, p1, Lcloudsdk/shell/VTCommand;->mTimeout:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_3

    .line 241
    iget-wide v0, p1, Lcloudsdk/shell/VTCommand;->mTimeout:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long/2addr v0, v6

    .line 242
    cmp-long v6, v0, v2

    if-lez v6, :cond_4

    .line 243
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/kingroot/kinguser/blv;->a(Lcloudsdk/shell/VTCommand;J)Lcloudsdk/shell/VTCmdResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    .line 248
    if-eqz v6, :cond_2

    .line 249
    monitor-exit p0

    return-object v6

    .line 220
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0

    .line 230
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 253
    :cond_4
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Exec Timeout"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blv;->shutdown()V

    .line 115
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 116
    return-void
.end method

.method public final declared-synchronized i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 315
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

    .line 316
    iget-object v1, p0, Lcom/kingroot/kinguser/blv;->bAw:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/blv;->bAw:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized mh(Ljava/lang/String;)Lcloudsdk/shell/VTCmdResult;
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/blv;->I(Ljava/lang/String;Z)Lcloudsdk/shell/VTCmdResult;
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

.method public final declared-synchronized o(Ljava/lang/String;J)Lcloudsdk/shell/VTCmdResult;
    .locals 2

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcloudsdk/shell/VTCommand;

    invoke-direct {v0, p1, p1, p2, p3}, Lcloudsdk/shell/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/blv;->a(Lcloudsdk/shell/VTCommand;)Lcloudsdk/shell/VTCmdResult;
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

.method public final shutdown()V
    .locals 1

    .prologue
    .line 325
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/blv;->ay()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
