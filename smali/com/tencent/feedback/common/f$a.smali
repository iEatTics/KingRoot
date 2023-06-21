.class public final Lcom/tencent/feedback/common/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-wide/16 v0, 0x7800

    iput-wide v0, p0, Lcom/tencent/feedback/common/f$a;->e:J

    .line 225
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    :cond_0
    sget-boolean v0, Lcom/tencent/feedback/common/f;->a:Z

    if-eqz v0, :cond_1

    .line 227
    const-string v0, "eup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[log] file path is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    iput-object p1, p0, Lcom/tencent/feedback/common/f$a;->c:Ljava/lang/String;

    .line 232
    invoke-direct {p0}, Lcom/tencent/feedback/common/f$a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/feedback/common/f$a;->a:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/feedback/common/f$a;)Ljava/io/File;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tencent/feedback/common/f$a;->b:Ljava/io/File;

    return-object v0
.end method

.method private declared-synchronized a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 237
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/feedback/common/f$a;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/feedback/common/f$a;->b:Ljava/io/File;

    .line 238
    iget-object v1, p0, Lcom/tencent/feedback/common/f$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/tencent/feedback/common/f$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 240
    if-nez v1, :cond_1

    .line 241
    sget-boolean v1, Lcom/tencent/feedback/common/f;->a:Z

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "eup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[log] create log file error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/feedback/common/f$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/feedback/common/f$a;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :goto_0
    monitor-exit p0

    return v0

    .line 248
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/feedback/common/f$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 249
    if-nez v1, :cond_4

    .line 250
    sget-boolean v1, Lcom/tencent/feedback/common/f;->a:Z

    if-eqz v1, :cond_2

    .line 251
    const-string v1, "eup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[log] create log file error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/feedback/common/f$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/feedback/common/f$a;->a:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    :try_start_2
    sget-boolean v1, Lcom/tencent/feedback/common/f;->a:Z

    if-eqz v1, :cond_3

    .line 258
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 259
    const-string v0, "eup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[log] create log file error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/feedback/common/f$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/feedback/common/f$a;->a:Z

    .line 266
    :cond_4
    sget-boolean v0, Lcom/tencent/feedback/common/f;->a:Z

    if-eqz v0, :cond_5

    .line 267
    const-string v0, "eup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[log] create log file success: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/feedback/common/f$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/feedback/common/f$a;)J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/tencent/feedback/common/f$a;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/tencent/feedback/common/f$a;)Z
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/tencent/feedback/common/f$a;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/tencent/feedback/common/f$a;)Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/tencent/feedback/common/f$a;->a:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 273
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/tencent/feedback/common/f$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 290
    :goto_0
    monitor-exit p0

    return v0

    .line 277
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/tencent/feedback/common/f$a;->b:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 278
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 279
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 280
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 281
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 282
    iget-wide v4, p0, Lcom/tencent/feedback/common/f$a;->d:J

    array-length v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/feedback/common/f$a;->d:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 290
    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    :try_start_2
    sget-boolean v2, Lcom/tencent/feedback/common/f;->a:Z

    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/feedback/common/f$a;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
