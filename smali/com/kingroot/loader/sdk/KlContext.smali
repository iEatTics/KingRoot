.class public Lcom/kingroot/loader/sdk/KlContext;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLayoutInflaterLock:Ljava/lang/Object;

.field private mMetaData:Landroid/os/Bundle;

.field private mResource:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Landroid/content/Context;Lcom/kingroot/loader/sdk/KlPackage;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mLayoutInflaterLock:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mThemeResource:I

    .line 59
    iput-object p2, p0, Lcom/kingroot/loader/sdk/KlContext;->mApplicationContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    .line 61
    iput-object p1, p0, Lcom/kingroot/loader/sdk/KlContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mMetaData:Landroid/os/Bundle;

    .line 65
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Get resources from application context fail!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-virtual {p3}, Lcom/kingroot/loader/sdk/KlPackage;->getPluginSourcePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/kingroot/kinguser/bkt;->C(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mResource:Landroid/content/res/Resources;

    .line 69
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mResource:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Get resources from plugin fail!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    return-void
.end method

.method private initializeTheme()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 316
    :goto_0
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/loader/sdk/KlContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 318
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlContext;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_0

    .line 320
    iget-object v2, p0, Lcom/kingroot/loader/sdk/KlContext;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlContext;->mTheme:Landroid/content/res/Resources$Theme;

    iget v2, p0, Lcom/kingroot/loader/sdk/KlContext;->mThemeResource:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/kingroot/loader/sdk/KlContext;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 324
    return-void

    .line 315
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 256
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_1

    .line 258
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 259
    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    invoke-virtual {v1}, Lcom/kingroot/loader/sdk/KlPackage;->getPluginBaseDataPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    invoke-virtual {v1}, Lcom/kingroot/loader/sdk/KlPackage;->getPluginSourcePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 261
    invoke-static {}, Lcom/kingroot/kinguser/bku;->qb()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 262
    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    invoke-virtual {v1}, Lcom/kingroot/loader/sdk/KlPackage;->getPluginLibPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    invoke-virtual {v1}, Lcom/kingroot/loader/sdk/KlPackage;->getPluginSourcePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlContext;->mMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 267
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 195
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    invoke-virtual {v2}, Lcom/kingroot/loader/sdk/KlPackage;->getPluginBaseDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 201
    :cond_1
    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    invoke-virtual {v2}, Lcom/kingroot/loader/sdk/KlPackage;->getPluginBaseDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 172
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 187
    :cond_2
    :goto_0
    return-object v0

    .line 174
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/bku;->qb()I

    move-result v1

    if-le v1, v5, :cond_2

    .line 175
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/bku;->qb()I

    move-result v1

    if-le v1, v5, :cond_2

    .line 180
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    invoke-virtual {v2}, Lcom/kingroot/loader/sdk/KlPackage;->getPluginBaseDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 105
    :cond_1
    return-object v0
.end method

.method public getHostPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 226
    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlContext;->mLayoutInflaterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 230
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0

    .line 230
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLoaderApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Lcom/kingroot/loader/sdk/KlPackage;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    iget-object v0, v0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget-object v0, v0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginId()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    iget-object v0, v0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget v0, v0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    return v0
.end method

.method public getPluginVersionCode()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    iget-object v0, v0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget v0, v0, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mResource:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlContext;->mKlPackage:Lcom/kingroot/loader/sdk/KlPackage;

    invoke-virtual {v1}, Lcom/kingroot/loader/sdk/KlPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 296
    :goto_0
    return-object v0

    .line 292
    :cond_0
    iget v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mThemeResource:I

    .line 293
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 292
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkt;->an(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mThemeResource:I

    .line 294
    invoke-direct {p0}, Lcom/kingroot/loader/sdk/KlContext;->initializeTheme()V

    .line 296
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 312
    return-void
.end method

.method protected putMetaData(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlContext;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 278
    :cond_0
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .prologue
    .line 282
    iput p1, p0, Lcom/kingroot/loader/sdk/KlContext;->mThemeResource:I

    .line 283
    invoke-direct {p0}, Lcom/kingroot/loader/sdk/KlContext;->initializeTheme()V

    .line 284
    return-void
.end method

.method public startKlFragment(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 128
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlFragmentManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlFragmentManager;

    .line 129
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlContext;->getPluginId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/kingroot/loader/sdk/service/IKlFragmentManager;->startKlFragment(ILandroid/content/Intent;I)V

    .line 130
    return-void
.end method
