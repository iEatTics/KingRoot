.class public Lcom/kingroot/kinguser/ff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static U:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/ff;->U:Ljava/lang/String;

    return-void
.end method

.method public static G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/kingroot/kinguser/ff;->U:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/tencent/tps/client/IRootShell;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bWtkaXIgLXAg"

    invoke-static {v1}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Y2htb2QgNzExIA=="

    invoke-static {v1}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/data-lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Y2htb2QgNzc3IA=="

    invoke-static {v1}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/data-lib/tps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Y2htb2QgNzc3IA=="

    invoke-static {v1}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Y2htb2QgNzc3IA=="

    invoke-static {v1}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Y2hjb24gdTpvYmplY3RfcjphcHBfZGF0YV9maWxlOnMwOmM1MTIsYzc2OCA="

    invoke-static {v1}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Y2hjb24gdTpvYmplY3RfcjphcHBfZGF0YV9maWxlOnMwOmM1MTIsYzc2OCA="

    invoke-static {v1}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    :goto_0
    invoke-static {p2}, Lcom/kingroot/kinguser/ff;->aa(Ljava/lang/String;)Z

    move-result v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Y2htb2QgNzAwIA=="

    invoke-static {v2}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Y2hvd24gcm9vdDpyb290IA=="

    invoke-static {v2}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Y2hjb24gdTpvYmplY3RfcjpzeXN0ZW1fZGF0YV9maWxlOnMwIA=="

    invoke-static {v2}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Y2htb2QgNzAwIA=="

    invoke-static {v2}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Y2hjb24gdTpvYmplY3RfcjpzeXN0ZW1fZGF0YV9maWxlOnMwIA=="

    invoke-static {v2}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    return v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Y2hjb24gdTpvYmplY3RfcjphcHBfZGF0YV9maWxlOnMwIA=="

    invoke-static {v1}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Y2hjb24gdTpvYmplY3RfcjphcHBfZGF0YV9maWxlOnMwIA=="

    invoke-static {v1}, Lcom/kingroot/kinguser/fd;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/tps/client/IRootShell;->runCmd(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static aa(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/ff;->ab(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 79
    :goto_0
    return v0

    .line 56
    :catch_0
    move-exception v0

    move v0, v1

    .line 58
    goto :goto_0

    .line 61
    :cond_0
    const/4 v3, 0x0

    .line 63
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    const-string v4, "_a._a"

    move v3, v1

    .line 66
    :goto_1
    const/16 v5, 0x3a

    if-ge v3, v5, :cond_1

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    const-string v6, "a"

    invoke-static {v5, v6}, Lcom/kingroot/kinguser/fd;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 69
    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    :cond_1
    const-string v3, "_a._s"

    const-string v4, "s"

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/fd;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    move-object v0, v3

    .line 77
    :goto_2
    invoke-static {v0}, Lcom/kingroot/kinguser/fr;->a(Ljava/io/Closeable;)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 73
    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method private static ab(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 84
    const-string v1, "_a._s"

    const-string v2, "s"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/fd;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 85
    invoke-static {v1, v0}, Lcom/kingroot/kinguser/fx;->a([BZ)Lcom/kingroot/kinguser/fx;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    .line 87
    const-string v2, "BN"

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/fx;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kingroot/kinguser/ff;->U:Ljava/lang/String;

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/kingroot/kinguser/fx;->ad(Ljava/lang/String;)Lcom/kingroot/kinguser/fx;

    move-result-object v2

    .line 92
    if-nez v2, :cond_2

    .line 106
    :cond_1
    :goto_0
    return v0

    .line 97
    :cond_2
    :try_start_0
    invoke-static {p0, v2}, Lcom/kingroot/kinguser/fy;->a(Ljava/lang/String;Lcom/kingroot/kinguser/fx;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/fy;->a(Lcom/kingroot/kinguser/fx;Lcom/kingroot/kinguser/fx;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    goto :goto_0
.end method
