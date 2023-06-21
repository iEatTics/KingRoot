.class public Lcom/kingroot/loader/sdk/KlPackage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/loader/sdk/KlPackage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public config:Lcom/kingroot/loader/sdk/KlConfig;

.field public klInfo:Lcom/kingroot/loader/sdk/KlInfo;

.field private mHasRun:Z

.field private mPluginBaseDataPath:Ljava/lang/String;

.field private mPluginDexOutPath:Ljava/lang/String;

.field private mPluginLibPath:Ljava/lang/String;

.field private mPluginSourcePath:Ljava/lang/String;

.field private final mRunningPids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/kingroot/loader/sdk/KlPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/loader/sdk/KlPackage;->TAG:Ljava/lang/String;

    .line 190
    new-instance v0, Lcom/kingroot/loader/sdk/KlPackage$1;

    invoke-direct {v0}, Lcom/kingroot/loader/sdk/KlPackage$1;-><init>()V

    sput-object v0, Lcom/kingroot/loader/sdk/KlPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mRunningPids:Ljava/util/HashSet;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginSourcePath:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginLibPath:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginBaseDataPath:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginDexOutPath:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mHasRun:Z

    .line 177
    invoke-direct {p0, p1}, Lcom/kingroot/loader/sdk/KlPackage;->readFromParcel(Landroid/os/Parcel;)V

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingroot/loader/sdk/KlPackage$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/kingroot/loader/sdk/KlPackage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/kingroot/loader/sdk/KlInfo;Lcom/kingroot/loader/sdk/KlConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mRunningPids:Ljava/util/HashSet;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginSourcePath:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginLibPath:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginBaseDataPath:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginDexOutPath:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mHasRun:Z

    .line 51
    iput-object p1, p0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    .line 52
    iput-object p2, p0, Lcom/kingroot/loader/sdk/KlPackage;->config:Lcom/kingroot/loader/sdk/KlConfig;

    .line 53
    iput-object p3, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginSourcePath:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginBaseDataPath:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginDexOutPath:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlPackage;->updateLibPath()V

    .line 59
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 181
    const-class v0, Lcom/kingroot/loader/sdk/KlInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlInfo;

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    .line 182
    const-class v0, Lcom/kingroot/loader/sdk/KlConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlConfig;

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->config:Lcom/kingroot/loader/sdk/KlConfig;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginSourcePath:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginLibPath:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginBaseDataPath:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginDexOutPath:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mHasRun:Z

    .line 188
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeInvalidRunningPid()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mRunningPids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 153
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bks;->jE(I)Lcom/kingroot/kinguser/bks$a;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/kingroot/kinguser/bks$a;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 155
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 158
    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget-object v0, v0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPluginBaseDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginBaseDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getPluginDexOutPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginDexOutPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getPluginLibPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginLibPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getPluginSourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginSourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/loader/sdk/KlPackage;->removeInvalidRunningPid()V

    .line 145
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mRunningPids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mHasRun:Z

    .line 146
    iget-boolean v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mHasRun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized triggerPidRunning(I)V
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mRunningPids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-direct {p0}, Lcom/kingroot/loader/sdk/KlPackage;->removeInvalidRunningPid()V

    .line 140
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mRunningPids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mHasRun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateLibPath()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 64
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginBaseDataPath:Ljava/lang/String;

    const-string v2, "lib"

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/bku;->qb()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v3, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 72
    :cond_0
    const-string v1, "armeabi"

    .line 73
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_7

    array-length v4, v2

    if-lez v4, :cond_7

    .line 75
    sget-object v4, Lcom/kingroot/loader/sdk/KlPackage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PluginId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget v6, v6, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", available abi(s) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v4, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-static {}, Lcom/kingroot/kinguser/bku;->qb()I

    move-result v2

    const/16 v5, 0x15

    if-ge v2, v5, :cond_3

    .line 79
    sget-object v0, Lcom/kingroot/loader/sdk/KlPackage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "primary abi : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", secondary abi : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 112
    :cond_1
    :goto_0
    sget-object v0, Lcom/kingroot/loader/sdk/KlPackage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget v4, v4, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", selected abi : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginLibPath:Ljava/lang/String;

    .line 115
    :goto_1
    return-void

    .line 84
    :cond_2
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/bku;->qO()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 88
    sget-object v2, Lcom/kingroot/loader/sdk/KlPackage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "64-bit abi(s) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v6, v5

    move v2, v0

    :goto_2
    if-ge v2, v6, :cond_8

    aget-object v0, v5, v2

    .line 92
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    move-object v1, v0

    .line 91
    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 98
    :cond_5
    sget-object v2, Lcom/kingroot/loader/sdk/KlPackage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "32-bit abi(s) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v6, v5

    move v2, v0

    :goto_4
    if-ge v2, v6, :cond_1

    aget-object v0, v5, v2

    .line 102
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v1, v0

    .line 104
    goto/16 :goto_0

    .line 101
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 109
    :cond_7
    sget-object v0, Lcom/kingroot/loader/sdk/KlPackage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget v2, v2, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", no available abi(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->config:Lcom/kingroot/loader/sdk/KlConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 169
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginSourcePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginLibPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginBaseDataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mPluginDexOutPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-boolean v0, p0, Lcom/kingroot/loader/sdk/KlPackage;->mHasRun:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
