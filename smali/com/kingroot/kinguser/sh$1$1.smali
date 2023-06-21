.class Lcom/kingroot/kinguser/sh$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/sh$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GD:Lcom/kingroot/kinguser/sh$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/sh$1;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kingroot/kinguser/sh$1$1;->GD:Lcom/kingroot/kinguser/sh$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/sh$1$1;->GD:Lcom/kingroot/kinguser/sh$1;

    iget-object v2, v0, Lcom/kingroot/kinguser/sh$1;->GC:Lcom/kingroot/kinguser/sh;

    monitor-enter v2

    .line 90
    const/4 v1, 0x0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/sh$1$1;->GD:Lcom/kingroot/kinguser/sh$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/sh$1;->GC:Lcom/kingroot/kinguser/sh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/sh;->jk()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :try_start_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :goto_0
    return-void

    .line 99
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    :try_start_3
    iget-object v1, p0, Lcom/kingroot/kinguser/sh$1$1;->GD:Lcom/kingroot/kinguser/sh$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/sh$1;->GC:Lcom/kingroot/kinguser/sh;

    invoke-static {v1}, Lcom/kingroot/kinguser/sh;->a(Lcom/kingroot/kinguser/sh;)Ljava/util/Properties;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 104
    :try_start_4
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 107
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 102
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 104
    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 102
    :catch_1
    move-exception v1

    goto :goto_2
.end method
