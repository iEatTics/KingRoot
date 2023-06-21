.class public Lcom/kingroot/kinguser/cab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kingroot/kinguser/caf;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private bVZ:Lcom/kingroot/kinguser/caf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private bWa:Lcom/kingroot/kinguser/cad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cad",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final bWb:Ljava/lang/Object;

.field private bWc:Lcom/kingroot/kinguser/cah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cah",
            "<TT;>;"
        }
    .end annotation
.end field

.field private bWd:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lkingcom/core/network/download/f;",
            ">;"
        }
    .end annotation
.end field

.field bWe:Lcom/kingroot/kinguser/cah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cah",
            "<TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/caf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cab;->bWb:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cab;->bWc:Lcom/kingroot/kinguser/cah;

    .line 30
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cab;->bWd:Landroid/os/RemoteCallbackList;

    .line 107
    new-instance v0, Lcom/kingroot/kinguser/cac;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/cac;-><init>(Lcom/kingroot/kinguser/cab;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cab;->bWe:Lcom/kingroot/kinguser/cah;

    .line 33
    iput-object p1, p0, Lcom/kingroot/kinguser/cab;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/kingroot/kinguser/cab;->bVZ:Lcom/kingroot/kinguser/caf;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cah;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/cab;->bWc:Lcom/kingroot/kinguser/cah;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/cab;->bWd:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/kingroot/kinguser/cab;->c()V

    .line 358
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/cab;->bVZ:Lcom/kingroot/kinguser/caf;

    iget-object v1, v1, Lcom/kingroot/kinguser/caf;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/cab;->bVZ:Lcom/kingroot/kinguser/caf;

    iget-object v1, v1, Lcom/kingroot/kinguser/caf;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 368
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 370
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/cab;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kingroot/kinguser/cab;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/cab;->bWe:Lcom/kingroot/kinguser/cah;

    iget-object v1, p0, Lcom/kingroot/kinguser/cab;->bVZ:Lcom/kingroot/kinguser/caf;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cah;->d(Lcom/kingroot/kinguser/caf;)V

    .line 233
    iget-object v1, p0, Lcom/kingroot/kinguser/cab;->bWb:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cab;->bWa:Lcom/kingroot/kinguser/cad;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/cab;->bWa:Lcom/kingroot/kinguser/cad;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cad;->a()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cab;->bWa:Lcom/kingroot/kinguser/cad;

    .line 238
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/cab;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/cab;->bVZ:Lcom/kingroot/kinguser/caf;

    iget-object v1, v1, Lcom/kingroot/kinguser/caf;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 247
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 254
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cab;->bWb:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_2
    new-instance v2, Lcom/kingroot/kinguser/cad;

    iget-object v3, p0, Lcom/kingroot/kinguser/cab;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/kingroot/kinguser/cab;->bVZ:Lcom/kingroot/kinguser/caf;

    invoke-direct {v2, v3, v4, v0}, Lcom/kingroot/kinguser/cad;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/caf;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/kingroot/kinguser/cab;->bWa:Lcom/kingroot/kinguser/cad;

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/cab;->bWa:Lcom/kingroot/kinguser/cad;

    iget-object v2, p0, Lcom/kingroot/kinguser/cab;->bWe:Lcom/kingroot/kinguser/cah;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/cad;->a(Lcom/kingroot/kinguser/cah;)V

    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/cab;->bVZ:Lcom/kingroot/kinguser/caf;

    iget-object v2, p0, Lcom/kingroot/kinguser/cab;->bWa:Lcom/kingroot/kinguser/cad;

    iput-object v2, v0, Lcom/kingroot/kinguser/caf;->bWl:Lcom/kingroot/kinguser/bzr;

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/cab;->bVZ:Lcom/kingroot/kinguser/caf;

    iget-object v2, p0, Lcom/kingroot/kinguser/cab;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/caf;->f:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/cab;->bWa:Lcom/kingroot/kinguser/cad;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/cad;->X(Z)Z

    .line 267
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    return-void

    .line 238
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 267
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 255
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/cah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/cah",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kingroot/kinguser/cab;->bWc:Lcom/kingroot/kinguser/cah;

    .line 57
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kingroot/kinguser/cab;->f:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/cab;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    return-void
.end method
