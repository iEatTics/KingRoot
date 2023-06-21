.class public final Lcom/kingroot/kinguser/fo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/kingroot/kinguser/fo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/fo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 231
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_2

    .line 237
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 238
    invoke-static {v3}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Lcom/kingroot/kinguser/fp;)V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/fo;->a(Ljava/io/File;Lcom/kingroot/kinguser/fp;Z)V

    .line 310
    return-void
.end method

.method private static a(Ljava/io/File;Lcom/kingroot/kinguser/fp;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 317
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 326
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 327
    if-eqz p2, :cond_4

    .line 328
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 330
    :goto_1
    invoke-interface {p1, v1}, Lcom/kingroot/kinguser/fp;->a(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-nez v1, :cond_2

    .line 337
    :cond_3
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->a(Ljava/io/Closeable;)V

    .line 338
    invoke-static {v0}, Lcom/kingroot/kinguser/fr;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 337
    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/fr;->a(Ljava/io/Closeable;)V

    .line 338
    invoke-static {v0}, Lcom/kingroot/kinguser/fr;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->a(Ljava/io/Closeable;)V

    .line 338
    invoke-static {v1}, Lcom/kingroot/kinguser/fr;->a(Ljava/io/Closeable;)V

    throw v0

    .line 337
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 334
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v1, v3

    goto :goto_1
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;J)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 256
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-lez v0, :cond_2

    .line 260
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 265
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v0, 0x1

    invoke-direct {v2, p0, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 268
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 269
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 273
    invoke-static {v0}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    .line 274
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 273
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    .line 274
    invoke-static {v1}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    .line 274
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    throw v0

    .line 273
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 270
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method public static a(Ljava/io/File;Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 279
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-lez v1, :cond_2

    .line 283
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 288
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v2, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 290
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    if-eqz v0, :cond_3

    .line 294
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 295
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v3

    .line 297
    :cond_4
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 300
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    .line 303
    :goto_2
    invoke-static {v0}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    .line 304
    invoke-static {v1}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    goto :goto_0

    .line 299
    :cond_5
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 303
    invoke-static {v1}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    .line 304
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    invoke-static {v1}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    .line 304
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    throw v0

    .line 303
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 300
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Lcom/kingroot/kinguser/fq;)V
    .locals 5

    .prologue
    .line 343
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 360
    :cond_0
    return-void

    .line 346
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 354
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 355
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 354
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_3
    invoke-interface {p1, v3}, Lcom/kingroot/kinguser/fq;->b(Ljava/io/File;)V

    goto :goto_1
.end method
