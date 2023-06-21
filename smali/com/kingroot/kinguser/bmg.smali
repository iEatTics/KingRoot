.class public final Lcom/kingroot/kinguser/bmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcloudsdk/ICloudSdk;


# static fields
.field public static vC:I


# instance fields
.field private bBA:Z

.field private final bBB:Ljava/lang/Object;

.field private final bBx:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcloudsdk/IModule;",
            ">;"
        }
    .end annotation
.end field

.field private bBy:Landroid/content/Context;

.field private bBz:Lcloudsdk/SdkConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/bmg;->vC:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBx:Landroid/util/SparseArray;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bmg;->bBA:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBB:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bmg;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/bmg;->bBy:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bmg;Lcloudsdk/SdkConfig;)Lcloudsdk/SdkConfig;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/bmg;->bBz:Lcloudsdk/SdkConfig;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bmg;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBB:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bmg;I)V
    .locals 5

    .prologue
    .line 49
    const/16 v0, 0x1fa5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bmg;->bBy:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v1, 0x4

    :try_start_1
    new-array v1, v1, [B

    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    const/4 v1, -0x1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v1, 0x3

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/kingroot/kinguser/bmg;->vC:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bmg;Z)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bmg;->bBA:Z

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bmg;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBy:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Lcom/kingroot/kinguser/bme;)Lcloudsdk/ILoadResult;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 298
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 300
    invoke-static {p0}, Lcom/kingroot/kinguser/bmu;->f(Lcom/kingroot/kinguser/bme;)I

    move-result v1

    .line 301
    if-gez v1, :cond_0

    .line 302
    new-instance v0, Lcom/kingroot/kinguser/bmh;

    const-string v1, ""

    invoke-direct {v0, v6, v6, v1, v7}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V

    .line 317
    :goto_0
    return-object v0

    .line 308
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->J(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bme;->xu:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_1
    new-instance v0, Lcom/kingroot/kinguser/bmh;

    const-string v1, ""

    invoke-direct {v0, v8, v8, v1, v7}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 315
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/bmh;

    const-string v1, ""

    invoke-direct {v0, v6, v6, v1, v7}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V

    goto :goto_0
.end method

.method private c(Lcom/kingroot/kinguser/bme;)Lcloudsdk/ILoadResult;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/kingroot/kinguser/bme;->bBq:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    new-instance v6, Ljava/io/File;

    iget-object v2, p1, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    :try_start_0
    const-string v2, "/data/local/tmp/8101.jar"

    .line 341
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/kingroot/kinguser/bml;->afK()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/bmu;->g(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 350
    :goto_0
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBy:Landroid/content/Context;

    iget-object v0, p1, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/blt$a;->mg(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x14

    new-array v3, v3, [B

    const/16 v6, 0x14

    const/4 v7, 0x0

    array-length v8, v2

    add-int/lit8 v8, v8, -0x14

    invoke-static {v2, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->S([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".encrypt"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/kingroot/kinguser/bmg;->bBz:Lcloudsdk/SdkConfig;

    invoke-virtual {v7}, Lcloudsdk/SdkConfig;->getWorkingDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/modules/app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingroot/kinguser/bmg;->m(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bmu;->b([BLjava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move v0, v4

    .line 352
    :goto_1
    if-eqz v0, :cond_2

    .line 354
    new-instance v0, Lcom/kingroot/kinguser/bmh;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 367
    :goto_2
    return-object v0

    .line 344
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_3
    :try_start_6
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 363
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 365
    new-instance v0, Lcom/kingroot/kinguser/bmh;

    const/16 v3, 0x3f6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V

    goto :goto_2

    .line 344
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_4
    :try_start_7
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    .line 346
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kingroot/kinguser/bmg;->bBz:Lcloudsdk/SdkConfig;

    invoke-virtual {v3}, Lcloudsdk/SdkConfig;->getWorkingDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/modules/app"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/bmg;->m(Ljava/lang/String;)V

    .line 347
    iget-object v2, p0, Lcom/kingroot/kinguser/bmg;->bBy:Landroid/content/Context;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v3

    :try_start_9
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-static {v3, v2}, Lcom/kingroot/kinguser/bmu;->g(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_5
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :cond_1
    move v0, v5

    .line 350
    goto :goto_1

    .line 357
    :cond_2
    :try_start_c
    new-instance v0, Lcom/kingroot/kinguser/bmh;

    const/4 v2, 0x1

    const/16 v3, 0x3f5

    const-string v5, "(en/de)file not exist!"

    const/4 v6, 0x0

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_2

    .line 359
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 360
    :try_start_d
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "decrypt buildin plugin fail. e = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v0, Lcom/kingroot/kinguser/bmh;

    const/4 v3, 0x1

    const/16 v5, 0x3f7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-direct {v0, v3, v5, v2, v6}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_2

    .line 347
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 344
    :catchall_4
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_4

    :catchall_5
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v10

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3

    :catch_4
    move-exception v3

    goto/16 :goto_3
.end method

.method private d(Lcom/kingroot/kinguser/bme;)Lcloudsdk/ILoadResult;
    .locals 5

    .prologue
    .line 501
    iget-object v0, p1, Lcom/kingroot/kinguser/bme;->vv:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->o(Ljava/lang/String;)V

    .line 502
    iget-object v0, p1, Lcom/kingroot/kinguser/bme;->vw:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->o(Ljava/lang/String;)V

    .line 506
    :try_start_0
    new-instance v1, Lcom/kingroot/kinguser/bmd;

    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBy:Landroid/content/Context;

    invoke-direct {v1, v0, p1}, Lcom/kingroot/kinguser/bmd;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/bme;)V

    .line 507
    new-instance v0, Lcom/kingroot/kinguser/bmh;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return-object v0

    .line 508
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 509
    new-instance v0, Lcom/kingroot/kinguser/bmh;

    const/4 v2, 0x1

    const/16 v3, 0x3f1

    .line 510
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V

    goto :goto_0
.end method

.method private static m(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 414
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    const/4 v2, 0x0

    .line 418
    :try_start_0
    new-instance v1, Lcom/kingroot/kinguser/blv;

    const-string v3, "sh"

    invoke-direct {v1, v3}, Lcom/kingroot/kinguser/blv;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 0700 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/blv;->mh(Ljava/lang/String;)Lcloudsdk/shell/VTCmdResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 426
    invoke-virtual {v1}, Lcom/kingroot/kinguser/blv;->shutdown()V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 424
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 426
    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v1}, Lcom/kingroot/kinguser/blv;->shutdown()V

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {v1}, Lcom/kingroot/kinguser/blv;->shutdown()V

    :cond_1
    throw v0

    .line 426
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 423
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final destoryAllModules()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 554
    .line 555
    iget-object v3, p0, Lcom/kingroot/kinguser/bmg;->bBx:Landroid/util/SparseArray;

    monitor-enter v3

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBx:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v4, v0, [Lcloudsdk/IModule;

    move v2, v1

    .line 557
    :goto_0
    array-length v0, v4

    if-ge v2, v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBx:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcloudsdk/IModule;

    aput-object v0, v4, v2

    .line 557
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBx:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 561
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    array-length v2, v4

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v4, v0

    .line 564
    invoke-interface {v3}, Lcloudsdk/IModule;->getModuleInfo()Lcom/kingroot/kinguser/bme;

    move-result-object v5

    .line 565
    invoke-interface {v3}, Lcloudsdk/IModule;->destory()Z

    .line 566
    iget-object v3, v5, Lcom/kingroot/kinguser/bme;->vw:Ljava/lang/String;

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->mm(Ljava/lang/String;)Z

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 569
    :cond_1
    return v1
.end method

.method public final destoryModule(I)Z
    .locals 3

    .prologue
    .line 536
    .line 537
    iget-object v1, p0, Lcom/kingroot/kinguser/bmg;->bBx:Landroid/util/SparseArray;

    monitor-enter v1

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBx:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcloudsdk/IModule;

    .line 539
    if-eqz v0, :cond_0

    .line 540
    iget-object v2, p0, Lcom/kingroot/kinguser/bmg;->bBx:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 542
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    if-eqz v0, :cond_1

    .line 544
    invoke-interface {v0}, Lcloudsdk/IModule;->getModuleInfo()Lcom/kingroot/kinguser/bme;

    move-result-object v1

    .line 545
    invoke-interface {v0}, Lcloudsdk/IModule;->destory()Z

    .line 546
    iget-object v0, v1, Lcom/kingroot/kinguser/bme;->vw:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mm(Ljava/lang/String;)Z

    .line 548
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getConfig()Lcloudsdk/SdkConfig;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBz:Lcloudsdk/SdkConfig;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBy:Landroid/content/Context;

    return-object v0
.end method

.method public final getWorkingDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBz:Lcloudsdk/SdkConfig;

    invoke-virtual {v0}, Lcloudsdk/SdkConfig;->getWorkingDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;Lcloudsdk/SdkConfig;)Lcloudsdk/IActionResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    new-instance v0, Lcom/kingroot/kinguser/bmg$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/bmg$1;-><init>(Lcom/kingroot/kinguser/bmg;Landroid/content/Context;Lcloudsdk/SdkConfig;)V

    .line 99
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bmg$1;->co()Z

    .line 101
    new-instance v0, Lcom/kingroot/kinguser/bmc;

    const-string v1, "Initialze OK"

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/kingroot/kinguser/bmc;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 102
    return-object v0
.end method

.method public final loadModule(I)Lcloudsdk/ILoadResult;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/bmg;->loadModule(IZ)Lcloudsdk/ILoadResult;

    move-result-object v0

    return-object v0
.end method

.method public final loadModule(IZ)Lcloudsdk/ILoadResult;
    .locals 13

    .prologue
    const/16 v12, 0x3f1

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 149
    iget-object v7, p0, Lcom/kingroot/kinguser/bmg;->bBB:Ljava/lang/Object;

    monitor-enter v7

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bmg;->bBA:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBB:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :cond_0
    monitor-exit v7

    .line 169
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBy:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->bI(Landroid/content/Context;)V

    .line 172
    iget-object v7, p0, Lcom/kingroot/kinguser/bmg;->bBx:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 173
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBx:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcloudsdk/IModule;

    .line 174
    if-nez v0, :cond_6

    .line 176
    new-instance v0, Lcom/kingroot/kinguser/bme;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bme;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kinguser/bmg;->bBz:Lcloudsdk/SdkConfig;

    invoke-virtual {v2}, Lcloudsdk/SdkConfig;->getWorkingDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/modules/app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kinguser/bmg;->bBz:Lcloudsdk/SdkConfig;

    invoke-virtual {v2}, Lcloudsdk/SdkConfig;->getWorkingDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/modules/dalvik-cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/bme;->vv:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kinguser/bmg;->bBz:Lcloudsdk/SdkConfig;

    invoke-virtual {v2}, Lcloudsdk/SdkConfig;->getWorkingDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/modules/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/bme;->vw:Ljava/lang/String;

    iput p1, v0, Lcom/kingroot/kinguser/bme;->bBq:I

    .line 178
    invoke-static {v0}, Lcom/kingroot/kinguser/bmg;->b(Lcom/kingroot/kinguser/bme;)Lcloudsdk/ILoadResult;

    move-result-object v6

    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getResultCode()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcloudsdk/CloudSdk;->getWorkingDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/modules/appconf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/bme;->bBq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_2

    invoke-static {}, Lcom/kingroot/kinguser/blz;->afA()Lcom/kingroot/kinguser/blz;

    iget-object v2, p0, Lcom/kingroot/kinguser/bmg;->bBy:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/blz;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/kingx/cloudsdk/aq;

    move-result-object v1

    iget v2, v1, Lcom/kingx/cloudsdk/aq;->versionCode:I

    iget v3, v0, Lcom/kingroot/kinguser/bme;->versionCode:I

    if-gt v2, v3, :cond_2

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/kingx/cloudsdk/aq;->xu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, v1, Lcom/kingx/cloudsdk/aq;->bAL:J

    iput-wide v2, v0, Lcom/kingroot/kinguser/bme;->bAL:J

    .line 179
    :cond_1
    :goto_0
    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_4

    .line 181
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingroot/kinguser/bme;IZ)V

    .line 182
    const/4 v1, 0x0

    .line 183
    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getErrorCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingroot/kinguser/bme;ZIIZLjava/lang/String;)V

    .line 184
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v6

    .line 220
    :goto_1
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 154
    :try_start_4
    new-instance v0, Lcom/kingroot/kinguser/bme;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bme;-><init>()V

    .line 155
    iput p1, v0, Lcom/kingroot/kinguser/bme;->bBq:I

    .line 156
    const/4 v2, 0x0

    iput v2, v0, Lcom/kingroot/kinguser/bme;->versionCode:I

    .line 157
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/kingroot/kinguser/bme;->bAL:J

    .line 158
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingroot/kinguser/bme;IZ)V

    .line 160
    new-instance v6, Lcom/kingroot/kinguser/bmh;

    const/4 v2, 0x1

    const/16 v3, 0x3f3

    .line 161
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v6, v2, v3, v1, v4}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V

    .line 162
    const/4 v1, 0x0

    const/16 v2, 0x3f3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 163
    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingroot/kinguser/bme;ZIIZLjava/lang/String;)V

    .line 164
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v6

    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 178
    :cond_2
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kinguser/bmg;->bBz:Lcloudsdk/SdkConfig;

    invoke-virtual {v2}, Lcloudsdk/SdkConfig;->getWorkingDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/modules/app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->o(Ljava/lang/String;)V

    invoke-static {}, Lcom/kingroot/kinguser/blz;->afA()Lcom/kingroot/kinguser/blz;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/kingroot/kinguser/blz;->a(Lcom/kingroot/kinguser/bme;Z)Lcloudsdk/ILoadResult;

    move-result-object v6

    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getResultCode()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/kingroot/kinguser/bmg;->b(Lcom/kingroot/kinguser/bme;)Lcloudsdk/ILoadResult;

    move-result-object v6

    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/kingroot/kinguser/bme;->bBq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bmg;->bBy:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/bmu;->G(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bmg;->c(Lcom/kingroot/kinguser/bme;)Lcloudsdk/ILoadResult;

    move-result-object v6

    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getResultCode()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/kingroot/kinguser/bmg;->b(Lcom/kingroot/kinguser/bme;)Lcloudsdk/ILoadResult;

    move-result-object v6

    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getResultCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 207
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v7

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 208
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 209
    new-instance v0, Lcom/kingroot/kinguser/bme;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bme;-><init>()V

    .line 210
    iput p1, v0, Lcom/kingroot/kinguser/bme;->bBq:I

    .line 211
    iput v9, v0, Lcom/kingroot/kinguser/bme;->versionCode:I

    .line 212
    iput-wide v10, v0, Lcom/kingroot/kinguser/bme;->bAL:J

    .line 213
    invoke-static {v0, v8, v8}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingroot/kinguser/bme;IZ)V

    .line 215
    new-instance v6, Lcom/kingroot/kinguser/bmh;

    .line 216
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v6, v8, v12, v1, v2}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V

    .line 218
    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    move v1, v9

    move v2, v12

    move v3, v8

    move v4, v9

    .line 217
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingroot/kinguser/bme;ZIIZLjava/lang/String;)V

    move-object v0, v6

    .line 220
    goto/16 :goto_1

    .line 189
    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_7
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingroot/kinguser/bme;IZ)V

    .line 190
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bmg;->d(Lcom/kingroot/kinguser/bme;)Lcloudsdk/ILoadResult;

    move-result-object v6

    .line 191
    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getResultCode()I

    move-result v1

    if-nez v1, :cond_5

    .line 193
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingroot/kinguser/bme;ZIIZLjava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/bmg;->bBx:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getModule()Lcloudsdk/IModule;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    :goto_2
    monitor-exit v7

    move-object v0, v6

    goto/16 :goto_1

    .line 197
    :cond_5
    const/4 v1, 0x0

    const/16 v2, 0x3f2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 198
    invoke-interface {v6}, Lcloudsdk/ILoadResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingroot/kinguser/bme;ZIIZLjava/lang/String;)V

    goto :goto_2

    .line 204
    :cond_6
    new-instance v1, Lcom/kingroot/kinguser/bmh;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V

    .line 205
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v0, v1

    goto/16 :goto_1
.end method
