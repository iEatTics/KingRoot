.class public Lcom/kingroot/kinguser/akz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile avN:Lcom/kingroot/kinguser/akz;


# instance fields
.field private GA:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/akz;->avN:Lcom/kingroot/kinguser/akz;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/akz;->GA:Ljava/util/Properties;

    .line 26
    const/4 v0, 0x0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-string v2, "kinguser.cfg"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 29
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/akz;->GA:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 35
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v1

    .line 33
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public static GJ()Lcom/kingroot/kinguser/akz;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/kingroot/kinguser/akz;->avN:Lcom/kingroot/kinguser/akz;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/kingroot/kinguser/akz;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/akz;->avN:Lcom/kingroot/kinguser/akz;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/kingroot/kinguser/akz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akz;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akz;->avN:Lcom/kingroot/kinguser/akz;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/akz;->avN:Lcom/kingroot/kinguser/akz;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public am(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/kingroot/kinguser/akz;->GA:Ljava/util/Properties;

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    :try_start_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-string v2, "kinguser.cfg"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 67
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/akz;->GA:Ljava/util/Properties;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 73
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 71
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public eV(I)V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpv:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/akz;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
