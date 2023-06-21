.class Lcom/kingroot/kinguser/akk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/akq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/akk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/akk$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private GA:Ljava/util/Properties;

.field private final avz:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/kingroot/kinguser/akk$a$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akk$a$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akk$a;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/akk$a;->GA:Ljava/util/Properties;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/akk$a;->avz:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/akk$1;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kingroot/kinguser/akk$a;-><init>()V

    return-void
.end method

.method public static AQ()Lcom/kingroot/kinguser/akk$a;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/kingroot/kinguser/akk$a;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/akk$a;

    return-object v0
.end method

.method private ai(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    :goto_0
    return v0

    .line 84
    :cond_0
    iget-object v4, p0, Lcom/kingroot/kinguser/akk$a;->avz:Ljava/lang/Object;

    monitor-enter v4

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/akk$a;->GA:Ljava/util/Properties;

    if-nez v2, :cond_1

    .line 87
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    iput-object v2, p0, Lcom/kingroot/kinguser/akk$a;->GA:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    const-string v5, "air.dat"

    invoke-virtual {v2, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 91
    :try_start_2
    iget-object v5, p0, Lcom/kingroot/kinguser/akk$a;->GA:Ljava/util/Properties;

    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 94
    :try_start_3
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 99
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/kingroot/kinguser/akk$a;->GA:Ljava/util/Properties;

    invoke-virtual {v2, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :try_start_4
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    const-string v5, "air.dat"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 105
    iget-object v2, p0, Lcom/kingroot/kinguser/akk$a;->GA:Ljava/util/Properties;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 109
    :try_start_5
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 111
    monitor-exit v4

    move v0, v1

    .line 113
    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    move-object v2, v3

    .line 94
    :goto_2
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 94
    :catchall_1
    move-exception v0

    :goto_3
    :try_start_6
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 106
    :catch_1
    move-exception v1

    .line 109
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 94
    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 92
    :catch_2
    move-exception v5

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 4

    .prologue
    .line 65
    invoke-static {p1}, Lcom/kingroot/kinguser/aah;->cO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-direct {p0, v1, v0}, Lcom/kingroot/kinguser/akk$a;->ai(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 66
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public gJ(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 74
    invoke-static {p1}, Lcom/kingroot/kinguser/aah;->cO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/akk$a;->ai(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
