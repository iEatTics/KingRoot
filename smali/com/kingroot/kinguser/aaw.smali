.class public Lcom/kingroot/kinguser/aaw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aaw$a;
    }
.end annotation


# static fields
.field private static final Yx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aaw;->Yx:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/kingroot/kinguser/aaw$a;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/aaw;->a(Ljava/lang/String;Lcom/kingroot/kinguser/aaw$a;Z)V

    .line 58
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/kingroot/kinguser/aaw$a;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 61
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    if-eqz p2, :cond_2

    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 67
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 68
    invoke-virtual {p1, v3}, Lcom/kingroot/kinguser/aaw$a;->dW(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 81
    invoke-virtual {p1, v1}, Lcom/kingroot/kinguser/aaw$a;->dW(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-ne v1, v4, :cond_3

    .line 88
    :cond_4
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 89
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 88
    :goto_2
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 89
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 89
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 88
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 85
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method private static dR(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 96
    const-string v1, "/proc/mounts"

    new-instance v2, Lcom/kingroot/kinguser/aaw$1;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/aaw$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/aaw;->a(Ljava/lang/String;Lcom/kingroot/kinguser/aaw$a;)V

    .line 120
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static dS(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/aaw;->qu()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    :goto_0
    return v0

    .line 156
    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 157
    new-instance v0, Lcom/kingroot/kinguser/aaw$2;

    invoke-direct {v0, p0, v2}, Lcom/kingroot/kinguser/aaw$2;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/kingroot/kinguser/aaw;->a(Ljava/lang/String;Lcom/kingroot/kinguser/aaw$a;Z)V

    .line 181
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_0
.end method

.method private static dT(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-static {}, Lcom/kingroot/kinguser/aba;->qF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dm_num "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized dU(Ljava/lang/String;)I
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 193
    const-class v0, Lcom/kingroot/kinguser/aaw;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/kingroot/kinguser/aaw;->s(Ljava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized dV(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 237
    const-class v1, Lcom/kingroot/kinguser/aaw;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/aaw;->dU(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eq v0, v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 240
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qi()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static qu()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 125
    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 126
    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 130
    :cond_1
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 131
    const-string v5, "fstab."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 130
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 136
    const-string v6, "goldfish"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".fwup"

    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".krbak"

    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static qv()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 254
    const-string v1, "/system"

    invoke-static {v1}, Lcom/kingroot/kinguser/aaw;->dU(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized s(Ljava/lang/String;Z)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 207
    const-class v2, Lcom/kingroot/kinguser/aaw;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/kingroot/kinguser/aaw;->Yx:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/aaw;->Yx:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :goto_0
    monitor-exit v2

    return v0

    .line 216
    :cond_0
    :try_start_2
    invoke-static {p0}, Lcom/kingroot/kinguser/aaw;->dR(Ljava/lang/String;)Z

    move-result v0

    .line 217
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 218
    invoke-static {p0}, Lcom/kingroot/kinguser/aaw;->dS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/kingroot/kinguser/aaw;->dT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 221
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/kingroot/kinguser/aaw;->Yx:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v3

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 218
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 221
    :cond_3
    const/4 v1, 0x2

    goto :goto_2
.end method
