.class public Lcom/kingroot/kinguser/cgo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static ces:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "EnvUtil"

    sput-object v0, Lcom/kingroot/kinguser/cgo;->TAG:Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cgo;->ces:Ljava/lang/Integer;

    return-void
.end method

.method public static Z(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    .line 42
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 43
    aput-object v0, v2, v1

    .line 46
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 47
    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 50
    const-string v0, ""

    .line 51
    const-string v1, "/proc/cpuinfo"

    .line 53
    :try_start_0
    invoke-static {v1}, Lcom/kingroot/kinguser/cei;->cA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v3, "\\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 55
    const/4 v3, 0x0

    aget-object v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingroot/kinguser/cgt;->cx(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/kingroot/kinguser/cgt;->cy(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    const/4 v1, 0x3

    aput-object v0, v2, v1

    .line 66
    return-object v2

    .line 56
    :catch_0
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static amY()I
    .locals 1

    .prologue
    .line 198
    sget-boolean v0, Lcom/kingroot/kinguser/cgv;->ceA:Z

    if-eqz v0, :cond_1

    .line 199
    invoke-static {}, Lcom/kingroot/kinguser/cgv;->getRootState()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    .line 202
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static amZ()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 213
    sget-object v1, Lcom/kingroot/kinguser/cgo;->ces:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 215
    :try_start_0
    new-instance v1, Lcom/kingroot/kinguser/cgo$1;

    invoke-direct {v1}, Lcom/kingroot/kinguser/cgo$1;-><init>()V

    .line 224
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 226
    if-nez v1, :cond_0

    .line 236
    :goto_0
    return v0

    .line 230
    :cond_0
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/kingroot/kinguser/cgo;->ces:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/cgo;->ces:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static ana()J
    .locals 6

    .prologue
    .line 245
    const-wide/16 v0, 0x0

    .line 248
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    new-instance v2, Ljava/io/File;

    const-string v3, "/system"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 254
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    .line 255
    mul-long/2addr v2, v4

    invoke-static {}, Lcom/kingroot/kinguser/cgo;->ph()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v0, v2

    .line 260
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static cv(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 177
    const/4 v1, 0x0

    .line 178
    invoke-static {}, Lcom/kingroot/kinguser/ceb;->akU()Lcom/kingroot/kinguser/cga;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/kingroot/kinguser/cga;->Y(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v2

    .line 179
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ltmsdk/common/module/software/AppEntity;->amR()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static pg()Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v3, v1, v2

    .line 78
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 81
    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 82
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 83
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "N/A"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static ph()J
    .locals 6

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    .line 102
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    new-instance v2, Ljava/io/File;

    const-string v3, "/data"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 108
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 109
    mul-long/2addr v0, v4

    .line 114
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
