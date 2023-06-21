.class public Lcom/kingroot/kinguser/ajj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final asE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "fn1"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ajj;->asE:Ljava/lang/String;

    return-void
.end method

.method public static zl()Ljava/lang/String;
    .locals 7

    .prologue
    .line 21
    sget-object v3, Lcom/kingroot/kinguser/ajj;->asE:Ljava/lang/String;

    monitor-enter v3

    .line 22
    const/4 v1, 0x0

    .line 24
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v2

    sget-object v4, Lcom/kingroot/kinguser/ajj;->asE:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 27
    const v0, 0x7f060005

    :try_start_1
    sget-object v2, Lcom/kingroot/kinguser/ajj;->asE:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/rs;->n(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v2

    sget-object v4, Lcom/kingroot/kinguser/ajj;->asE:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    .line 34
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/File;->setExecutable(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "chmod 0%o %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x1c0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 43
    :cond_0
    :goto_2
    monitor-exit v3

    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v2, v0

    goto :goto_1
.end method
