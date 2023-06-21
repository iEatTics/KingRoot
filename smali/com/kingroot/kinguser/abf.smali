.class public Lcom/kingroot/kinguser/abf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static YW:Ljava/lang/Boolean;

.field private static final YX:Ljava/lang/Object;

.field private static YY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    sput-object v2, Lcom/kingroot/kinguser/abf;->YW:Ljava/lang/Boolean;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/abf;->YX:Ljava/lang/Object;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/abf;->YY:[Ljava/lang/String;

    return-void
.end method

.method public static qP()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    sget-object v3, Lcom/kingroot/kinguser/abf;->YX:Ljava/lang/Object;

    monitor-enter v3

    .line 83
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/abf;->YW:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 87
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v4, 0x11

    if-lt v0, v4, :cond_3

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/fs/selinux/enforce"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    const-string v4, "/sys/fs/selinux/enforce"

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 97
    :try_start_3
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 103
    :goto_0
    if-nez v0, :cond_1

    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 107
    :cond_1
    sput-object v0, Lcom/kingroot/kinguser/abf;->YW:Ljava/lang/Boolean;

    .line 109
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/abf;->YW:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v3

    return v0

    .line 95
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 97
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 98
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 110
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 97
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 95
    :catch_1
    move-exception v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static u(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 26
    const/4 v1, 0x0

    .line 28
    if-eqz p1, :cond_1

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    const-string v2, "sh"

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/abj;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 38
    if-nez p1, :cond_2

    .line 39
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v1

    .line 59
    :cond_0
    :goto_2
    return-object v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    move-object v0, v1

    .line 47
    goto :goto_2

    .line 49
    :cond_3
    const-string v0, "0"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_4
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v0, "0"

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
