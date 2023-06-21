.class Lcom/kingroot/kinguser/akb$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/akb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic avd:Lcom/kingroot/kinguser/akb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/akb;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kingroot/kinguser/akb$2;->avd:Lcom/kingroot/kinguser/akb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 81
    invoke-static {}, Lcom/kingroot/kinguser/air;->yb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/akb$2;->avd:Lcom/kingroot/kinguser/akb;

    invoke-static {v0}, Lcom/kingroot/kinguser/akb;->a(Lcom/kingroot/kinguser/akb;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/akb$2;->avd:Lcom/kingroot/kinguser/akb;

    invoke-static {v2}, Lcom/kingroot/kinguser/akb;->b(Lcom/kingroot/kinguser/akb;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/kingroot/kinguser/akb$2;->avd:Lcom/kingroot/kinguser/akb;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/akb;->a(Lcom/kingroot/kinguser/akb;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/bgr;->iZ()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    new-instance v3, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/akb$2;->avd:Lcom/kingroot/kinguser/akb;

    invoke-static {v2}, Lcom/kingroot/kinguser/akb;->c(Lcom/kingroot/kinguser/akb;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    const/16 v1, 0x80

    :try_start_2
    new-array v1, v1, [B

    .line 102
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 103
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 106
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 111
    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 105
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 111
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 111
    :goto_3
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 122
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/akb$2;->avd:Lcom/kingroot/kinguser/akb;

    invoke-static {v1}, Lcom/kingroot/kinguser/akb;->d(Lcom/kingroot/kinguser/akb;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 111
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    .line 108
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    .line 106
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2
.end method
