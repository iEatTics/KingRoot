.class public Lcom/kingroot/kinguser/bkj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/io/File;

.field private bzh:Ljava/io/File;

.field private c:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/kingroot/kinguser/bkj;->b:Ljava/io/File;

    .line 22
    iput-object v0, p0, Lcom/kingroot/kinguser/bkj;->c:Ljava/io/File;

    .line 23
    iput-object v0, p0, Lcom/kingroot/kinguser/bkj;->bzh:Ljava/io/File;

    .line 27
    iput-object p1, p0, Lcom/kingroot/kinguser/bkj;->a:Landroid/content/Context;

    .line 28
    const-string v0, "workspace"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/io/File;

    const-string v2, "app"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bkj;->c:Ljava/io/File;

    .line 32
    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 34
    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/bku;->qb()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 35
    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->c:Ljava/io/File;

    invoke-virtual {v1, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 40
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "data"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bkj;->b:Ljava/io/File;

    .line 41
    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 43
    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/kingroot/kinguser/bku;->qb()I

    move-result v1

    if-le v1, v5, :cond_3

    .line 44
    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->b:Ljava/io/File;

    invoke-virtual {v1, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 49
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v2, "dalvik-cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bkj;->bzh:Ljava/io/File;

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/bkj;->bzh:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/bkj;->bzh:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bkj;->bzh:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/bkj;->bzh:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/kingroot/kinguser/bku;->qb()I

    move-result v0

    if-le v0, v5, :cond_5

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/bkj;->bzh:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 56
    :cond_5
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/loader/sdk/KlInfo;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 59
    if-nez p1, :cond_1

    .line 101
    :cond_0
    return-void

    .line 63
    :cond_1
    new-instance v2, Lcom/kingroot/kinguser/bkh;

    invoke-direct {v2, p1}, Lcom/kingroot/kinguser/bkh;-><init>(Lcom/kingroot/loader/sdk/KlInfo;)V

    .line 66
    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->c:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 69
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingroot/kinguser/bkp;->cz(Ljava/lang/String;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->bzh:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 75
    if-eqz v3, :cond_3

    .line 76
    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 77
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingroot/kinguser/bkp;->cz(Ljava/lang/String;)Z

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    :cond_3
    iget v1, p1, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->b:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_4

    .line 85
    array-length v4, v3

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 86
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingroot/kinguser/bkp;->cz(Ljava/lang/String;)Z

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91
    :cond_4
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/bkj;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const-string v4, "shared_prefs"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    .line 95
    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 96
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/bkp;->cz(Ljava/lang/String;)Z

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public final aeL()Ljava/io/File;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/bkj;->b:Ljava/io/File;

    return-object v0
.end method

.method public final aeM()Ljava/io/File;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/bkj;->bzh:Ljava/io/File;

    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/bkj;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s-%s.apk"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
