.class public Lcom/kingroot/kinguser/bxm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ajF()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 70
    const-string v1, "/system/bin/debuggerd"

    invoke-static {v1}, Lcom/kingroot/kinguser/bxm;->lg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    const-string v1, "/system/bin/debuggerd64"

    invoke-static {v1}, Lcom/kingroot/kinguser/bxm;->lg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "/system/bin/ddexe"

    invoke-static {v1}, Lcom/kingroot/kinguser/bxm;->lg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "/system/etc/install-recovery.sh"

    invoke-static {v1}, Lcom/kingroot/kinguser/bxm;->nw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "/system/bin/install-recovery.sh"

    invoke-static {v1}, Lcom/kingroot/kinguser/bxm;->nw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lg(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 20
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/bxs;->lg(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 25
    if-nez v0, :cond_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static nw(Ljava/lang/String;)Z
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 38
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xc800

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bxs;->cy(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const-string v0, "applypatch "

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 57
    if-nez v0, :cond_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    goto :goto_0
.end method
