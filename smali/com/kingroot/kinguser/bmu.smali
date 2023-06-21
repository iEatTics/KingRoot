.class public Lcom/kingroot/kinguser/bmu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bCx:Lcom/kingx/cloudsdk/ch;

.field public static uL:Ljava/lang/String;


# direct methods
.method public static D(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    const-string v0, ""

    .line 69
    const/4 v2, 0x0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "krsdk.cert"

    invoke-static {v1, v3}, Lcom/kingroot/kinguser/bll;->b(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/kingroot/kinguser/bll;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 76
    :goto_0
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bll;->e()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    return-object v0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_0
.end method

.method public static F(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    sput-object p1, Lcom/kingroot/kinguser/bmu;->uL:Ljava/lang/String;

    .line 35
    new-instance v3, Lcom/kingx/cloudsdk/ch;

    invoke-direct {v3}, Lcom/kingx/cloudsdk/ch;-><init>()V

    .line 36
    const-string v0, "F7E418FB9C74DF11"

    iput-object v0, v3, Lcom/kingx/cloudsdk/ch;->cu:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/kingroot/kinguser/bmu;->uL:Ljava/lang/String;

    iput-object v0, v3, Lcom/kingx/cloudsdk/ch;->cw:Ljava/lang/String;

    .line 38
    const/16 v0, 0x321

    iput v0, v3, Lcom/kingx/cloudsdk/ch;->cv:I

    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingx/cloudsdk/ch;->cB:Ljava/lang/String;

    .line 40
    const/16 v0, 0xe

    iput v0, v3, Lcom/kingx/cloudsdk/ch;->ct:I

    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->V()I

    move-result v0

    iput v0, v3, Lcom/kingx/cloudsdk/ch;->hx:I

    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/blo;->afq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "[\\.]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 44
    new-instance v0, Lcom/kingx/cloudsdk/cg;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/cg;-><init>()V

    iput-object v0, v3, Lcom/kingx/cloudsdk/ch;->hL:Lcom/kingx/cloudsdk/cg;

    .line 45
    iget-object v5, v3, Lcom/kingx/cloudsdk/ch;->hL:Lcom/kingx/cloudsdk/cg;

    array-length v0, v4

    if-lez v0, :cond_1

    aget-object v0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, v5, Lcom/kingx/cloudsdk/cg;->hG:I

    .line 46
    iget-object v5, v3, Lcom/kingx/cloudsdk/ch;->hL:Lcom/kingx/cloudsdk/cg;

    array-length v0, v4

    if-lt v0, v6, :cond_2

    aget-object v0, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, v5, Lcom/kingx/cloudsdk/cg;->hH:I

    .line 47
    iget-object v0, v3, Lcom/kingx/cloudsdk/ch;->hL:Lcom/kingx/cloudsdk/cg;

    array-length v1, v4

    const/4 v5, 0x3

    if-lt v1, v5, :cond_0

    aget-object v1, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    iput v2, v0, Lcom/kingx/cloudsdk/cg;->hI:I

    .line 49
    sput-object v3, Lcom/kingroot/kinguser/bmu;->bCx:Lcom/kingx/cloudsdk/ch;

    .line 50
    return-void

    :cond_1
    move v0, v1

    .line 45
    goto :goto_0

    :cond_2
    move v0, v2

    .line 46
    goto :goto_1
.end method

.method public static G(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    move v1, v0

    .line 53
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 55
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    const/4 v0, 0x1

    .line 63
    :cond_0
    :goto_1
    return v0

    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static H(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6

    .prologue
    .line 26
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 28
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 31
    new-instance v1, Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 32
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 39
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static J(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 356
    :try_start_0
    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->e(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 358
    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 356
    return-object v1

    .line 358
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static S([B)[B
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/bmw;->agb()Lcom/kingroot/kinguser/bmw;

    const-string v0, "DFG#$%^#%$RGHR(&*M<><"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/bmw;->b([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic T([B)[B
    .locals 1

    .prologue
    .line 204
    invoke-static {p0}, Lcom/kingroot/kinguser/bmm;->k([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/kingroot/kinguser/bme;[B)I
    .locals 3

    .prologue
    .line 225
    :try_start_0
    new-instance v0, Lcom/kingx/cloudsdk/b;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/b;-><init>()V

    .line 226
    new-instance v1, Lcom/kingroot/kinguser/bmy;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bmy;-><init>()V

    .line 227
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bmy;->mr(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/bmy;->s([B)V

    .line 229
    const-string v2, "meripi"

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/bmy;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/b;

    .line 231
    iget v1, v0, Lcom/kingx/cloudsdk/b;->id:I

    iput v1, p0, Lcom/kingroot/kinguser/bme;->bBq:I

    iget-object v1, v0, Lcom/kingx/cloudsdk/b;->am:Ljava/lang/String;

    iput-object v1, p0, Lcom/kingroot/kinguser/bme;->packageName:Ljava/lang/String;

    iget v1, v0, Lcom/kingx/cloudsdk/b;->ac:I

    iput v1, p0, Lcom/kingroot/kinguser/bme;->versionCode:I

    iget v1, v0, Lcom/kingx/cloudsdk/b;->aq:I

    iput v1, p0, Lcom/kingroot/kinguser/bme;->bBr:I

    iget v1, v0, Lcom/kingx/cloudsdk/b;->ar:I

    iput v1, p0, Lcom/kingroot/kinguser/bme;->bBs:I

    iget-object v1, v0, Lcom/kingx/cloudsdk/b;->af:Ljava/lang/String;

    iput-object v1, p0, Lcom/kingroot/kinguser/bme;->bBt:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingx/cloudsdk/b;->an:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/bme;->xu:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 236
    :catch_0
    move-exception v0

    const/4 v0, -0x7

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcloudsdk/shell/VTCommand;)Lcloudsdk/shell/VTCmdResult;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 46
    .line 50
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/blv;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/blv;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    invoke-static {v0}, Lcom/kingroot/kinguser/blw;->add(Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/bmp;->V()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/bmp;->V()I

    move-result v2

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 54
    const-string v2, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Lcom/kingroot/kinguser/blv;->o(Ljava/lang/String;J)Lcloudsdk/shell/VTCmdResult;

    .line 56
    :cond_0
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/blv;->a(Lcloudsdk/shell/VTCommand;)Lcloudsdk/shell/VTCmdResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Lcom/kingroot/kinguser/blv;->shutdown()V

    move-object v0, v1

    .line 66
    :goto_0
    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lcloudsdk/shell/VTCmdResult;

    iget-object v1, p1, Lcloudsdk/shell/VTCommand;->mCmdFlag:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    const-string v4, "Run Cmd Exception"

    invoke-direct {v0, v1, v2, v3, v4}, Lcloudsdk/shell/VTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {v0}, Lcom/kingroot/kinguser/blv;->shutdown()V

    move-object v0, v1

    .line 62
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {v1}, Lcom/kingroot/kinguser/blv;->shutdown()V

    .line 62
    :cond_2
    throw v0

    .line 60
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static varargs a(II[Lcom/kingx/cloudsdk/s;)Lcom/kingx/cloudsdk/q;
    .locals 4

    .prologue
    .line 67
    new-instance v1, Lcom/kingx/cloudsdk/q;

    invoke-direct {v1}, Lcom/kingx/cloudsdk/q;-><init>()V

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/blo;->afs()I

    move-result v0

    iput v0, v1, Lcom/kingx/cloudsdk/q;->aC:I

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/blo;->aft()I

    move-result v0

    iput v0, v1, Lcom/kingx/cloudsdk/q;->aD:I

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/bma;->afE()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/kingx/cloudsdk/q;->ca:Ljava/util/ArrayList;

    .line 71
    iget-object v0, v1, Lcom/kingx/cloudsdk/q;->ca:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/kingx/cloudsdk/q;->ca:Ljava/util/ArrayList;

    .line 76
    :cond_0
    iget-object v0, v1, Lcom/kingx/cloudsdk/q;->ca:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/t;

    .line 77
    iget v3, v0, Lcom/kingx/cloudsdk/t;->id:I

    if-ne v3, p0, :cond_1

    iget v3, v0, Lcom/kingx/cloudsdk/t;->version:I

    if-ne v3, p1, :cond_1

    .line 78
    iget-object v0, v0, Lcom/kingx/cloudsdk/t;->ci:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    .line 93
    :goto_0
    return-object v0

    .line 84
    :cond_2
    new-instance v0, Lcom/kingx/cloudsdk/t;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/t;-><init>()V

    .line 85
    iput p0, v0, Lcom/kingx/cloudsdk/t;->id:I

    .line 86
    iput p1, v0, Lcom/kingx/cloudsdk/t;->version:I

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/kingx/cloudsdk/t;->ci:Ljava/util/ArrayList;

    .line 88
    iget-object v2, v0, Lcom/kingx/cloudsdk/t;->ci:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v2, v1, Lcom/kingx/cloudsdk/q;->ca:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 93
    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/kingroot/kinguser/bme;IZ)V
    .locals 7

    .prologue
    .line 194
    const-class v6, Lcom/kingroot/kinguser/bmu;

    monitor-enter v6

    const v0, 0xc3cd

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 195
    :try_start_0
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->jO(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingroot/kinguser/bme;->bAL:J

    .line 194
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->b(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingx/cloudsdk/s;

    move-result-object v0

    .line 197
    iget v1, p0, Lcom/kingroot/kinguser/bme;->bBq:I

    iget v2, p0, Lcom/kingroot/kinguser/bme;->versionCode:I

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bma;->a(IILcom/kingx/cloudsdk/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit v6

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized a(Lcom/kingroot/kinguser/bme;ZIIZLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 217
    const-class v6, Lcom/kingroot/kinguser/bmu;

    monitor-enter v6

    if-eqz p1, :cond_0

    const v0, 0xc3ca

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    const/4 v2, 0x1

    .line 220
    :try_start_0
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->jO(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingroot/kinguser/bme;->bAL:J

    move-object v2, p5

    .line 217
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->b(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingx/cloudsdk/s;

    move-result-object v0

    .line 222
    iget v1, p0, Lcom/kingroot/kinguser/bme;->bBq:I

    iget v2, p0, Lcom/kingroot/kinguser/bme;->versionCode:I

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/kingx/cloudsdk/s;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/bmu;->a(II[Lcom/kingx/cloudsdk/s;)Lcom/kingx/cloudsdk/q;

    move-result-object v1

    .line 224
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/bls;->a(Landroid/content/Context;Lcom/kingx/cloudsdk/q;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_2

    .line 225
    iget-object v0, v1, Lcom/kingx/cloudsdk/q;->ca:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/bma;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :goto_2
    monitor-exit v6

    return-void

    .line 217
    :cond_0
    const v0, 0xc3cb

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_1

    .line 233
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/kingroot/kinguser/bme;->bBq:I

    iget v2, p0, Lcom/kingroot/kinguser/bme;->versionCode:I

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bma;->a(IILcom/kingx/cloudsdk/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized a(Lcom/kingx/cloudsdk/aq;IZ)V
    .locals 7

    .prologue
    .line 166
    const-class v6, Lcom/kingroot/kinguser/bmu;

    monitor-enter v6

    const v0, 0xc3cc

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 169
    :try_start_0
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->jO(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingx/cloudsdk/aq;->bAL:J

    .line 166
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->b(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingx/cloudsdk/s;

    move-result-object v0

    .line 172
    iget v1, p0, Lcom/kingx/cloudsdk/aq;->aH:I

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/kingx/cloudsdk/s;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/bmu;->a(II[Lcom/kingx/cloudsdk/s;)Lcom/kingx/cloudsdk/q;

    move-result-object v1

    .line 174
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/bls;->a(Landroid/content/Context;Lcom/kingx/cloudsdk/q;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_0

    .line 175
    iget-object v0, v1, Lcom/kingx/cloudsdk/q;->ca:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/bma;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    monitor-exit v6

    return-void

    .line 183
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/kingx/cloudsdk/aq;->aH:I

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bma;->a(IILcom/kingx/cloudsdk/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized a(Lcom/kingx/cloudsdk/aq;ZIZLjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 129
    const-class v7, Lcom/kingroot/kinguser/bmu;

    monitor-enter v7

    if-eqz p1, :cond_1

    const v0, 0xc3d0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 131
    :try_start_0
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->jO(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingx/cloudsdk/aq;->bAL:J

    move-object v2, p4

    .line 129
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->b(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingx/cloudsdk/s;

    move-result-object v8

    .line 136
    if-eqz p1, :cond_4

    .line 137
    const v0, 0xc354

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 139
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->jO(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingx/cloudsdk/aq;->bAL:J

    move-object v2, p4

    .line 137
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->b(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingx/cloudsdk/s;

    move-result-object v0

    move-object v1, v0

    .line 142
    :goto_1
    if-nez v1, :cond_2

    iget v0, p0, Lcom/kingx/cloudsdk/aq;->aH:I

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/kingx/cloudsdk/s;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    .line 144
    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bmu;->a(II[Lcom/kingx/cloudsdk/s;)Lcom/kingx/cloudsdk/q;

    move-result-object v0

    .line 146
    :goto_2
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/kingroot/kinguser/bls;->a(Landroid/content/Context;Lcom/kingx/cloudsdk/q;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_3

    .line 147
    iget-object v0, v0, Lcom/kingx/cloudsdk/q;->ca:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/bma;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    :goto_3
    monitor-exit v7

    return-void

    .line 129
    :cond_1
    const v0, 0xc356

    goto :goto_0

    .line 144
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/kingx/cloudsdk/aq;->aH:I

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/kingx/cloudsdk/s;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 145
    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bmu;->a(II[Lcom/kingx/cloudsdk/s;)Lcom/kingx/cloudsdk/q;

    move-result-object v0

    goto :goto_2

    .line 155
    :cond_3
    iget v0, p0, Lcom/kingx/cloudsdk/aq;->aH:I

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    invoke-static {v0, v2, v8}, Lcom/kingroot/kinguser/bma;->a(IILcom/kingx/cloudsdk/s;)V

    .line 156
    if-eqz v1, :cond_0

    .line 157
    iget v0, p0, Lcom/kingx/cloudsdk/aq;->aH:I

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    invoke-static {v0, v2, v1}, Lcom/kingroot/kinguser/bma;->a(IILcom/kingx/cloudsdk/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_4
    move-object v1, v6

    goto :goto_1
.end method

.method public static declared-synchronized a(Lcom/kingx/cloudsdk/l;ILjava/lang/String;Z)V
    .locals 7

    .prologue
    .line 104
    const-class v6, Lcom/kingroot/kinguser/bmu;

    monitor-enter v6

    const v0, 0xc418

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    iget-wide v4, p0, Lcom/kingx/cloudsdk/l;->bq:J

    :goto_0
    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->b(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingx/cloudsdk/s;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/blo;->afs()I

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/blo;->aft()I

    .line 110
    const/16 v1, 0x1f40

    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/kingx/cloudsdk/s;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/bmu;->a(II[Lcom/kingx/cloudsdk/s;)Lcom/kingx/cloudsdk/q;

    move-result-object v1

    .line 112
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/bls;->a(Landroid/content/Context;Lcom/kingx/cloudsdk/q;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_1

    .line 113
    iget-object v0, v1, Lcom/kingx/cloudsdk/q;->ca:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/bma;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_1
    monitor-exit v6

    return-void

    .line 104
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 121
    :cond_1
    const/16 v1, 0x1f40

    const/4 v2, 0x1

    :try_start_1
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bma;->a(IILcom/kingx/cloudsdk/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .line 29
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 9
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)[B
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 535
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 570
    :goto_0
    return-object v0

    .line 542
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    const/16 v1, 0x64

    :try_start_1
    new-array v1, v1, [B

    .line 546
    :cond_1
    rsub-int/lit8 v4, v0, 0x64

    invoke-virtual {v3, v1, v0, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 547
    add-int/2addr v0, v4

    .line 548
    if-lt v0, v6, :cond_1

    :cond_2
    move v4, v0

    .line 549
    if-nez v4, :cond_3

    .line 554
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    move-object v0, v2

    goto :goto_0

    .line 557
    :cond_3
    if-ge v4, v6, :cond_4

    .line 558
    :try_start_2
    new-array v0, v4, [B

    .line 559
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 567
    :goto_1
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    move-object v0, v2

    .line 570
    goto :goto_0

    .line 567
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_3
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a([I[I)[I
    .locals 13

    .prologue
    const/4 v1, 0x4

    const/4 v11, 0x0

    .line 153
    array-length v3, p0

    const/4 v0, 0x1

    if-gt v3, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    array-length v0, p1

    if-ge v0, v1, :cond_1

    new-array v0, v1, [I

    array-length v1, p1

    invoke-static {p1, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_1
    const/16 v0, 0x34

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    const v1, 0x363c7cbf

    add-int/2addr v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    const v2, 0x67fafcfa

    sub-int/2addr v2, v0

    array-length v4, p1

    sub-int/2addr v2, v4

    add-int v4, v1, v2

    mul-int/2addr v0, v4

    aget v1, p0, v11

    :cond_2
    ushr-int/lit8 v2, v0, 0x2

    and-int/lit8 v5, v2, 0x3

    add-int/lit8 v2, v3, -0x1

    move v12, v2

    move v2, v1

    move v1, v12

    :goto_1
    if-lez v1, :cond_3

    add-int/lit8 v6, v1, -0x1

    aget v6, p0, v6

    aget v7, p0, v1

    ushr-int/lit8 v8, v6, 0x5

    shl-int/lit8 v9, v2, 0x2

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v2, 0x3

    shl-int/lit8 v10, v6, 0x4

    xor-int/2addr v9, v10

    add-int/2addr v8, v9

    xor-int/2addr v2, v0

    and-int/lit8 v9, v1, 0x3

    xor-int/2addr v9, v5

    aget v9, p1, v9

    xor-int/2addr v6, v9

    add-int/2addr v2, v6

    xor-int/2addr v2, v8

    sub-int v2, v7, v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v3, -0x1

    aget v6, p0, v6

    aget v7, p0, v11

    ushr-int/lit8 v8, v6, 0x5

    shl-int/lit8 v9, v2, 0x2

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v2, 0x3

    shl-int/lit8 v10, v6, 0x4

    xor-int/2addr v9, v10

    add-int/2addr v8, v9

    xor-int/2addr v2, v0

    and-int/lit8 v1, v1, 0x3

    xor-int/2addr v1, v5

    aget v1, p1, v1

    xor-int/2addr v1, v6

    add-int/2addr v1, v2

    xor-int/2addr v1, v8

    sub-int v1, v7, v1

    aput v1, p0, v11

    sub-int/2addr v0, v4

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method private static aQ(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-object v1

    .line 169
    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 171
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 174
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    long-to-int v5, v4

    .line 175
    new-array v0, v5, [B

    .line 176
    const/4 v4, 0x0

    .line 177
    :goto_1
    if-ge v4, v5, :cond_3

    .line 178
    sub-int v6, v5, v4

    invoke-virtual {v2, v0, v4, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    .line 179
    if-gez v6, :cond_2

    if-eq v4, v5, :cond_2

    .line 180
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 194
    :goto_2
    if-eqz v2, :cond_0

    .line 196
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 182
    :cond_2
    add-int/2addr v4, v6

    goto :goto_1

    .line 189
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 194
    :goto_3
    if-eqz v2, :cond_4

    .line 196
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_4
    move-object v1, v0

    .line 201
    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 186
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 189
    if-eqz v3, :cond_5

    .line 191
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 194
    :cond_5
    :goto_6
    if-eqz v2, :cond_8

    .line 196
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    move-object v0, v1

    .line 197
    goto :goto_4

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_4

    .line 189
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_7
    if-eqz v3, :cond_6

    .line 191
    :try_start_a
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 194
    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    .line 196
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 197
    :cond_7
    :goto_9
    throw v0

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_9

    .line 189
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 184
    :catch_9
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_5

    :cond_8
    move-object v0, v1

    goto :goto_4
.end method

.method public static aga()Z
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 408
    if-nez v0, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingx/cloudsdk/s;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/kingx/cloudsdk/s;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/s;-><init>()V

    .line 45
    iput p0, v0, Lcom/kingx/cloudsdk/s;->id:I

    .line 46
    iput p1, v0, Lcom/kingx/cloudsdk/s;->cd:I

    .line 47
    iput-object p2, v0, Lcom/kingx/cloudsdk/s;->ce:Ljava/lang/String;

    .line 48
    iput-object p3, v0, Lcom/kingx/cloudsdk/s;->cf:Ljava/lang/String;

    .line 49
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lcom/kingx/cloudsdk/s;->cg:Ljava/util/ArrayList;

    .line 52
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/kingx/cloudsdk/s;->count:I

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingx/cloudsdk/s;->time:J

    .line 55
    return-object v0
.end method

.method public static b([BLjava/lang/String;)V
    .locals 3

    .prologue
    .line 282
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b([I[I)[I
    .locals 14

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 102
    array-length v5, p0

    const/4 v0, 0x1

    if-gt v5, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    array-length v0, p1

    if-ge v0, v1, :cond_1

    new-array v0, v1, [I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_1
    const/16 v0, 0x34

    div-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, v5, -0x1

    aget v1, p0, v1

    const v3, 0x363c7cbf

    add-int/2addr v3, v0

    array-length v4, p1

    add-int/2addr v3, v4

    const v4, 0x67fafcfa

    sub-int/2addr v4, v0

    array-length v6, p1

    sub-int/2addr v4, v6

    add-int v6, v3, v4

    move v3, v1

    move v1, v2

    :cond_2
    add-int/2addr v1, v6

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v7, v4, 0x3

    move v4, v3

    move v3, v2

    :goto_1
    add-int/lit8 v8, v5, -0x1

    if-ge v3, v8, :cond_3

    add-int/lit8 v8, v3, 0x1

    aget v8, p0, v8

    aget v9, p0, v3

    ushr-int/lit8 v10, v4, 0x5

    shl-int/lit8 v11, v8, 0x2

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v8, 0x3

    shl-int/lit8 v12, v4, 0x4

    xor-int/2addr v11, v12

    add-int/2addr v10, v11

    xor-int/2addr v8, v1

    and-int/lit8 v11, v3, 0x3

    xor-int/2addr v11, v7

    aget v11, p1, v11

    xor-int/2addr v4, v11

    add-int/2addr v4, v8

    xor-int/2addr v4, v10

    add-int/2addr v4, v9

    aput v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    aget v8, p0, v2

    add-int/lit8 v9, v5, -0x1

    aget v10, p0, v9

    ushr-int/lit8 v11, v4, 0x5

    shl-int/lit8 v12, v8, 0x2

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v8, 0x3

    shl-int/lit8 v13, v4, 0x4

    xor-int/2addr v12, v13

    add-int/2addr v11, v12

    xor-int/2addr v8, v1

    and-int/lit8 v3, v3, 0x3

    xor-int/2addr v3, v7

    aget v3, p1, v3

    xor-int/2addr v3, v4

    add-int/2addr v3, v8

    xor-int/2addr v3, v11

    add-int/2addr v3, v10

    aput v3, p0, v9

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    goto :goto_0
.end method

.method public static bI(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "krsdk.cert"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bll;->b(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/kingroot/kinguser/bll;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    const-string v0, "krsdk.cert"

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/bmu;->G(Landroid/content/Context;Ljava/lang/String;)Z

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "generate license failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 52
    :cond_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 53
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 55
    :cond_1
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bll;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid license"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2
    return-void
.end method

.method public static bJ(Landroid/content/Context;)B
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 55
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_1

    .line 58
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_1

    :cond_0
    move v0, v3

    .line 79
    :goto_0
    return v0

    .line 62
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_5

    .line 65
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 66
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 67
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    move v0, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/bmp;->V()I

    move-result v2

    const/16 v4, 0xd

    if-lt v2, v4, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_6

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    :cond_6
    move v0, v3

    .line 79
    goto :goto_0
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {p0}, Lcom/kingroot/kinguser/blt$a;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    .line 149
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 152
    :cond_0
    return-object p2
.end method

.method public static d(J)V
    .locals 4

    .prologue
    .line 32
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "common_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "S02"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    return-void
.end method

.method public static d(JJJ)Z
    .locals 2

    .prologue
    .line 58
    sub-long v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-lez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 469
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 472
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 370
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 372
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 373
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 374
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 381
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 376
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 377
    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_2

    aget-byte v3, v1, v0

    const-string v4, "0123456789ABCDEF"

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static ep(Z)I
    .locals 6

    .prologue
    const/16 v2, 0x8

    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x0

    .line 51
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/bin/su"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 64
    :cond_0
    :goto_0
    new-instance v2, Lcom/kingroot/kinguser/blv;

    const-string v3, "sh"

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/blv;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    const-string v1, "su -v"

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v1, v4, v5}, Lcom/kingroot/kinguser/blv;->o(Ljava/lang/String;J)Lcloudsdk/shell/VTCmdResult;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcloudsdk/shell/VTCmdResult;->success()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcloudsdk/shell/VTCmdResult;->mStdOut:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcloudsdk/shell/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v3, "kinguser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    or-int/lit8 v0, v0, 0x4

    .line 69
    :cond_1
    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->jN(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    invoke-virtual {v2}, Lcom/kingroot/kinguser/blv;->shutdown()V

    .line 76
    :cond_2
    :goto_1
    return v0

    .line 57
    :cond_3
    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/xbin/su"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 59
    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 78
    :goto_2
    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {v1}, Lcom/kingroot/kinguser/blv;->shutdown()V

    goto :goto_1

    .line 76
    :catch_1
    move-exception v2

    .line 78
    :goto_3
    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {v1}, Lcom/kingroot/kinguser/blv;->shutdown()V

    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_4

    .line 79
    invoke-virtual {v1}, Lcom/kingroot/kinguser/blv;->shutdown()V

    :cond_4
    throw v0

    .line 78
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 76
    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_3

    .line 73
    :catch_3
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method public static f(Lcom/kingroot/kinguser/bme;)I
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    const-string v1, "assets/meripi.m"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bmu;->aQ(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 134
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingroot/kinguser/bme;[B)I

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static g(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 97
    const/16 v0, 0x1000

    new-array v3, v0, [B

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v2, v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 98
    :cond_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    move v0, v2

    .line 101
    :goto_1
    return v0

    :cond_1
    long-to-int v0, v0

    goto :goto_1
.end method

.method public static declared-synchronized jN(I)V
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/kingroot/kinguser/bmu;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bmu;->bCx:Lcom/kingx/cloudsdk/ch;

    .line 59
    iput p0, v0, Lcom/kingx/cloudsdk/ch;->hN:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v1

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static jO(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jP(I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 14
    :try_start_0
    const-string v0, ""

    .line 16
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "/proc/%d/cmdline"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/lang/String;I)[B

    move-result-object v3

    .line 18
    if-eqz v3, :cond_2

    .line 20
    const/4 v0, -0x1

    move v2, v0

    :goto_0
    add-int/lit8 v0, v2, 0x1

    array-length v4, v3

    if-ge v2, v4, :cond_1

    array-length v2, v3

    if-eq v0, v2, :cond_0

    aget-byte v2, v3, v0

    if-nez v2, :cond_3

    :cond_0
    move v1, v0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method public static l([B)[B
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/kingroot/kinguser/bmw;->agb()Lcom/kingroot/kinguser/bmw;

    const-string v0, "DFG#$%^#%$RGHR(&*M<><"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/bmw;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static mk(Ljava/lang/String;)Ljava/util/Properties;
    .locals 5

    .prologue
    .line 54
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 55
    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/blt$a;->D(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 58
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v3

    invoke-virtual {v3}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->S([B)[B

    move-result-object v3

    .line 59
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 72
    :cond_0
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 65
    :goto_1
    if-eqz v0, :cond_0

    .line 67
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    .line 67
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 69
    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 65
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 62
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static ml(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 293
    .line 297
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 300
    const/16 v0, 0x400

    :try_start_3
    new-array v0, v0, [B

    .line 302
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 303
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    .line 308
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 312
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 313
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 316
    :goto_2
    const-string v0, ""

    :goto_3
    return-object v0

    .line 305
    :cond_0
    :try_start_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 312
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 313
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 309
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    .line 310
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 312
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 313
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 312
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_5
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 313
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    .line 312
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_5

    .line 309
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    .line 307
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_1

    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_1
.end method

.method public static mm(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 425
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 428
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 456
    :goto_0
    return v0

    .line 434
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 435
    if-eqz v5, :cond_8

    .line 436
    array-length v6, v5

    move v3, v1

    move v0, v2

    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v0, v5, v3

    .line 437
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 438
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 439
    if-nez v0, :cond_5

    .line 450
    :cond_3
    :goto_2
    if-nez v0, :cond_6

    move v0, v1

    .line 451
    goto :goto_0

    .line 443
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mm(Ljava/lang/String;)Z

    move-result v0

    .line 444
    if-eqz v0, :cond_3

    .line 445
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 453
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 454
    goto :goto_0

    :cond_7
    move v0, v1

    .line 456
    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method public static mn(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static mo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 22
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static mp(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 70
    new-array v2, v1, [B

    .line 71
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 72
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-object v2
.end method

.method public static mq(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    const-string v0, ";"

    .line 133
    const-string v1, "%3B"

    .line 134
    invoke-static {v0, v1, p0}, Lcom/kingroot/kinguser/bmu;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "|"

    .line 136
    const-string v2, "%7C"

    .line 137
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bmu;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "\n"

    .line 139
    const-string v2, "%0A"

    .line 140
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bmu;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v1, "\t"

    .line 142
    const-string v2, "%09"

    .line 143
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bmu;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method public static o(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 197
    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 201
    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_0
.end method

.method public static z(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    .line 87
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 88
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "java.lang.Integer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "int"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string v0, "int32"

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_2
    const-string v4, "java.lang.Boolean"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "boolean"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v0, "bool"

    goto :goto_1

    :cond_4
    const-string v4, "java.lang.Byte"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "byte"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v0, "char"

    goto :goto_1

    :cond_6
    const-string v4, "java.lang.Double"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "double"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const-string v0, "double"

    goto :goto_1

    :cond_8
    const-string v4, "java.lang.Float"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "float"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    const-string v0, "float"

    goto :goto_1

    :cond_a
    const-string v4, "java.lang.Long"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "long"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    const-string v0, "int64"

    goto :goto_1

    :cond_c
    const-string v4, "java.lang.Short"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "short"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    const-string v0, "short"

    goto :goto_1

    :cond_e
    const-string v4, "java.lang.Character"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not support java.lang.Character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string v4, "java.lang.String"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v0, "string"

    goto/16 :goto_1

    :cond_10
    const-string v4, "java.util.List"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v0, "list"

    goto/16 :goto_1

    :cond_11
    const-string v4, "java.util.Map"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "map"

    goto/16 :goto_1

    .line 90
    :cond_12
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move v1, v2

    .line 91
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 92
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    const-string v4, "list"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 94
    add-int/lit8 v4, v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_13
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 96
    :cond_14
    const-string v4, "map"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 97
    add-int/lit8 v4, v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 99
    :cond_15
    const-string v4, "Array"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 100
    add-int/lit8 v4, v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 104
    :cond_16
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 105
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 108
    :cond_17
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
