.class public Lcom/kingroot/kinguser/zy;
.super Lcom/kingroot/kinguser/zp;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zz;


# static fields
.field private static Xb:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/kingroot/kinguser/zy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private GA:Ljava/util/Properties;

.field private WX:Ljava/lang/String;

.field private WY:Ljava/lang/String;

.field private WZ:[B

.field private final Xa:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/kingroot/kinguser/zp;-><init>()V

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/zy;->WZ:[B

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/zy;->Xa:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/zy;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/zy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/kingroot/kinguser/zy;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/zy;->WX:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/kingroot/kinguser/ru;->iZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/zy;->Xa:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/zy;->Xa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/kingroot/kinguser/zy;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/zy;->WY:Ljava/lang/String;

    .line 68
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/zy;->WX:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->WX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/zy;->dC(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/zy;->GA:Ljava/util/Properties;

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->WY:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/zy;->WY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->WY:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/zy;->GA:Ljava/util/Properties;

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/zy;->a(Ljava/lang/String;Ljava/util/Properties;)V

    .line 93
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->GA:Ljava/util/Properties;

    if-nez v0, :cond_3

    .line 94
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/zy;->GA:Ljava/util/Properties;

    .line 96
    :cond_3
    return-void

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->WY:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 84
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/zy;->WY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->WY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/zy;->dC(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/zy;->GA:Ljava/util/Properties;

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->WX:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/zy;->GA:Ljava/util/Properties;

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/zy;->a(Ljava/lang/String;Ljava/util/Properties;)V

    goto :goto_0
.end method

.method private getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->is()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "e_config_test"

    .line 128
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const-string v0, "e_config"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 128
    const-string v0, "e_config"

    goto :goto_0
.end method

.method public static pI()Lcom/kingroot/kinguser/zy;
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/kingroot/kinguser/zy;->Xb:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/kingroot/kinguser/zy;->Xb:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/zy;

    .line 101
    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const-class v1, Lcom/kingroot/kinguser/zy;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/zy;->Xb:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/kingroot/kinguser/zy;->Xb:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/zy;

    .line 109
    if-eqz v0, :cond_1

    .line 110
    monitor-exit v1

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 114
    :cond_1
    :try_start_1
    new-instance v0, Lcom/kingroot/kinguser/zy;

    invoke-direct {v0}, Lcom/kingroot/kinguser/zy;-><init>()V

    .line 115
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/kingroot/kinguser/zy;->Xb:Ljava/lang/ref/SoftReference;

    .line 117
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/kingroot/kinguser/zy;->WZ:[B

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->GA:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    if-nez v0, :cond_0

    .line 138
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected pB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/zr;->pD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/kingroot/kinguser/zy;->WZ:[B

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->GA:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->WX:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/zy;->GA:Ljava/util/Properties;

    invoke-virtual {p0, v0, v2}, Lcom/kingroot/kinguser/zy;->a(Ljava/lang/String;Ljava/util/Properties;)V

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->WY:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/ru;->iZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/zy;->Xa:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kinguser/zy;->Xa:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/kingroot/kinguser/zy;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/zy;->WY:Ljava/lang/String;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->WY:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/zy;->WY:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/zy;->GA:Ljava/util/Properties;

    invoke-virtual {p0, v0, v2}, Lcom/kingroot/kinguser/zy;->a(Ljava/lang/String;Ljava/util/Properties;)V

    .line 160
    :cond_2
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
