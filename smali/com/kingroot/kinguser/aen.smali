.class public Lcom/kingroot/kinguser/aen;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public afm:I

.field public afn:[B

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/kingroot/kinguser/aen;->mVersion:I

    .line 44
    iput p2, p0, Lcom/kingroot/kinguser/aen;->afm:I

    .line 45
    iput-object p3, p0, Lcom/kingroot/kinguser/aen;->afn:[B

    .line 46
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/aen;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 66
    :try_start_0
    iget v0, p0, Lcom/kingroot/kinguser/aen;->mVersion:I

    invoke-static {v0}, Lcom/kingroot/kinguser/aaa;->bY(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 67
    iget v0, p0, Lcom/kingroot/kinguser/aen;->afm:I

    invoke-static {v0}, Lcom/kingroot/kinguser/aaa;->bY(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/aen;->afn:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static i(Ljava/io/InputStream;)Lcom/kingroot/kinguser/aen;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/kingroot/kinguser/aen;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aen;-><init>()V

    .line 117
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [B

    .line 118
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 119
    invoke-static {v1}, Lcom/kingroot/kinguser/aaa;->A([B)I

    move-result v2

    iput v2, v0, Lcom/kingroot/kinguser/aen;->mVersion:I

    .line 120
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 121
    invoke-static {v1}, Lcom/kingroot/kinguser/aaa;->A([B)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/aen;->afm:I

    .line 122
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 123
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 124
    iput-object v1, v0, Lcom/kingroot/kinguser/aen;->afn:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static y(Ljava/io/File;)Lcom/kingroot/kinguser/aen;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 87
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-static {v1}, Lcom/kingroot/kinguser/aen;->i(Ljava/io/InputStream;)Lcom/kingroot/kinguser/aen;

    move-result-object v0

    .line 95
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 99
    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 96
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public uB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/aen;->afn:[B

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/aen;->afn:[B

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->B([B)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
