.class public final Lcom/kingroot/kinguser/aii;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile arz:Lcom/kingroot/kinguser/aii;


# instance fields
.field private ary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/aii;->arz:Lcom/kingroot/kinguser/aii;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/aii;->ary:Ljava/lang/String;

    .line 51
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/zi;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "config.properties"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 52
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    const/16 v1, 0x400

    :try_start_2
    new-array v1, v1, [B

    .line 56
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 57
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 79
    :goto_1
    :try_start_3
    const-string v2, "0"

    iput-object v2, p0, Lcom/kingroot/kinguser/aii;->ary:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 81
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 84
    :goto_2
    return-void

    .line 60
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 61
    if-eqz v3, :cond_1

    array-length v3, v3

    if-lez v3, :cond_1

    .line 63
    sget-object v1, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-static {v1}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/kingroot/kinguser/aaf;->D([B)[B

    move-result-object v1

    .line 66
    :cond_1
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 67
    if-eqz v1, :cond_2

    .line 68
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 70
    const-string v1, "channel"

    invoke-virtual {v3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/aii;->ary:Ljava/lang/String;

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/aii;->ary:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 75
    const-string v1, "0"

    iput-object v1, p0, Lcom/kingroot/kinguser/aii;->ary:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 81
    :cond_3
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_2

    .line 81
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 81
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_3
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 78
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method public static xL()Lcom/kingroot/kinguser/aii;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/kingroot/kinguser/aii;->arz:Lcom/kingroot/kinguser/aii;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/kingroot/kinguser/aii;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aii;->arz:Lcom/kingroot/kinguser/aii;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/kingroot/kinguser/aii;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aii;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aii;->arz:Lcom/kingroot/kinguser/aii;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aii;->arz:Lcom/kingroot/kinguser/aii;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/aii;->ary:Ljava/lang/String;

    return-object v0
.end method

.method public xM()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xN()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public xO()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 141
    sget-boolean v1, Lcom/kingroot/kinguser/air;->asl:Z

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/akr;->BL()Lcom/kingroot/kinguser/akr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/akr;->BM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aii;->xM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v0, 0x1

    goto :goto_0
.end method
