.class Lcom/kingroot/kinguser/akb$3;
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
    .line 127
    iput-object p1, p0, Lcom/kingroot/kinguser/akb$3;->avd:Lcom/kingroot/kinguser/akb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 130
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/akb$3;->avd:Lcom/kingroot/kinguser/akb;

    invoke-static {v0}, Lcom/kingroot/kinguser/akb;->e(Lcom/kingroot/kinguser/akb;)Ljava/io/File;

    move-result-object v4

    .line 134
    const/4 v1, 0x0

    .line 136
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 140
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 148
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 146
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 146
    :goto_2
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 143
    :catch_2
    move-exception v1

    goto :goto_2

    .line 141
    :catch_3
    move-exception v1

    goto :goto_1
.end method
