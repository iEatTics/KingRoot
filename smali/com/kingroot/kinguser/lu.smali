.class public Lcom/kingroot/kinguser/lu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ln;


# static fields
.field public static vg:Lcom/kingroot/kinguser/lu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/kingroot/kinguser/lu;

    invoke-direct {v0}, Lcom/kingroot/kinguser/lu;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/lu;->vg:Lcom/kingroot/kinguser/lu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ej()Lcom/kingroot/kinguser/lu;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/kingroot/kinguser/lu;->vg:Lcom/kingroot/kinguser/lu;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized bd(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 27
    monitor-enter p0

    .line 30
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 36
    if-eqz v1, :cond_0

    .line 38
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 33
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 36
    :goto_1
    if-eqz v1, :cond_0

    .line 38
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 39
    :catch_1
    move-exception v1

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_1

    .line 38
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    :cond_1
    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 27
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 39
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 36
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 33
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 48
    monitor-enter p0

    const/4 v0, 0x1

    .line 49
    const/4 v2, 0x0

    .line 53
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 54
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 63
    :try_start_2
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :goto_0
    monitor-exit p0

    return v0

    .line 60
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 61
    :goto_1
    const/4 v0, 0x0

    .line 63
    :try_start_3
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 63
    :catchall_1
    move-exception v0

    :goto_2
    :try_start_4
    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 60
    :catch_1
    move-exception v0

    goto :goto_1
.end method
