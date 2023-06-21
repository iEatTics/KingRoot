.class public Lcom/kingroot/kinguser/byg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static bc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 97
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string v3, "/data/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 110
    if-nez v3, :cond_3

    const-string v4, ".jar"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    .line 111
    :goto_1
    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    .line 113
    :cond_2
    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRY:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 115
    goto :goto_0

    :cond_3
    move v2, v0

    .line 110
    goto :goto_1
.end method

.method public static ci(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-static {p0}, Lcom/kingroot/kinguser/byg;->cn(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v2, v1, v2}, Lcom/kingroot/kinguser/byx;->d(IZI)I

    move-result v1

    .line 29
    invoke-static {p0}, Lcom/kingroot/kinguser/byg;->co(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/byx;->d(IZI)I

    move-result v1

    .line 32
    if-lez v1, :cond_0

    .line 33
    new-instance v2, Lcom/kingroot/kinguser/byl;

    invoke-direct {v2}, Lcom/kingroot/kinguser/byl;-><init>()V

    .line 34
    const-string v3, "turingmm_xposed"

    iput-object v3, v2, Lcom/kingroot/kinguser/byl;->bUx:Ljava/lang/String;

    .line 35
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/byl;->bUy:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    return-object v0
.end method

.method private static cn(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    move v0, v1

    .line 64
    :goto_0
    return v0

    .line 49
    :cond_0
    const/16 v2, 0x80

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 51
    if-nez v0, :cond_1

    move v0, v1

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRX:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 57
    if-eqz v0, :cond_2

    .line 59
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method private static co(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 69
    :try_start_0
    sget-object v1, Lcom/kingroot/kinguser/bwo;->bRZ:[I

    invoke-static {v1}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/byy;->cy(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    const-string v1, "\\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_0

    array-length v1, v2

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 81
    array-length v4, v2

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v2, v1

    .line 82
    invoke-static {v3, v5}, Lcom/kingroot/kinguser/byg;->bc(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 83
    if-eqz v5, :cond_2

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :catch_0
    move-exception v1

    goto :goto_0
.end method
