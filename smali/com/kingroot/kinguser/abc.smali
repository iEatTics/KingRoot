.class public Lcom/kingroot/kinguser/abc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cbw;


# static fields
.field private static final YQ:Ljava/lang/Object;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/abc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final YN:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final YO:Ljava/util/concurrent/CountDownLatch;

.field private final YP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private YR:Lcom/kingroot/kinguser/cbw$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/abc;->YQ:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/kingroot/kinguser/abc$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/abc$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/abc;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abc;->YN:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abc;->YO:Ljava/util/concurrent/CountDownLatch;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abc;->YP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Lcom/kingroot/kinguser/abc$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/abc$2;-><init>(Lcom/kingroot/kinguser/abc;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abc;->YR:Lcom/kingroot/kinguser/cbw$a;

    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/abc;->qM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/abc;->YR:Lcom/kingroot/kinguser/cbw$a;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abc;->a(Lcom/kingroot/kinguser/cbw$a;)V

    .line 50
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/abc$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kingroot/kinguser/abc;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/abc;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/abc;->YN:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/abc;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/abc;->YP:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static qK()Lcom/kingroot/kinguser/abc;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/kingroot/kinguser/abc;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/abc;

    return-object v0
.end method

.method private qL()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    return v0
.end method

.method private qM()Z
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v0

    invoke-direct {p0}, Lcom/kingroot/kinguser/abc;->qL()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 2

    .prologue
    .line 266
    sget-object v1, Lcom/kingroot/kinguser/abc;->YQ:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hW()Lcom/kingroot/kinguser/cbw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/cbw;->a(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/kingroot/kinguser/cbw$a;)V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/kingroot/kinguser/abc$3;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/abc$3;-><init>(Lcom/kingroot/kinguser/abc;Lcom/kingroot/kinguser/cbw$a;)V

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc$3;->X(Z)Z

    .line 85
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/cbw$a;)V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/kingroot/kinguser/abc$4;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/abc$4;-><init>(Lcom/kingroot/kinguser/abc;Lcom/kingroot/kinguser/cbw$a;)V

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc$4;->X(Z)Z

    .line 99
    return-void
.end method

.method public closeShell()V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/kingroot/kinguser/abc$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/abc$5;-><init>(Lcom/kingroot/kinguser/abc;)V

    const/4 v1, 0x1

    .line 163
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc$5;->X(Z)Z

    .line 164
    return-void
.end method

.method public e(Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    sget-object v1, Lcom/kingroot/kinguser/abc;->YQ:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hW()Lcom/kingroot/kinguser/cbw;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/cbw;->e(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/abc;->t(Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abc;->closeShell()V

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/abc;->YR:Lcom/kingroot/kinguser/cbw$a;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abc;->b(Lcom/kingroot/kinguser/cbw$a;)V

    .line 56
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 57
    return-void
.end method

.method public isRootPermition()Z
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/kingroot/kinguser/abc;->qM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/abc;->YP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isRootPermition(Z)Z
    .locals 3

    .prologue
    .line 190
    .line 191
    const/4 v1, 0x0

    .line 194
    :try_start_0
    const-string v0, "isRootPermition"

    invoke-static {v0}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1}, Lcom/kingroot/kinguser/tk;->lock()V

    .line 199
    :cond_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hW()Lcom/kingroot/kinguser/cbw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/cbw;->isRootPermition(Z)Z

    move-result v0

    .line 202
    iget-object v2, p0, Lcom/kingroot/kinguser/abc;->YP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v1}, Lcom/kingroot/kinguser/tk;->release()V

    .line 209
    :cond_1
    return v0

    .line 204
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {v1}, Lcom/kingroot/kinguser/tk;->release()V

    :cond_2
    throw v0
.end method

.method public isRootPermitionInBackupSu()Z
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hW()Lcom/kingroot/kinguser/cbw;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kingroot/kinguser/cbw;->isRootPermitionInBackupSu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCommand;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    sget-object v1, Lcom/kingroot/kinguser/abc;->YQ:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hW()Lcom/kingroot/kinguser/cbw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/cbw;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runRootCommands(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    sget-object v1, Lcom/kingroot/kinguser/abc;->YQ:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hW()Lcom/kingroot/kinguser/cbw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/cbw;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public t(Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 3

    .prologue
    .line 245
    if-eqz p2, :cond_0

    const-wide/32 v0, 0x1d4c0

    .line 247
    :goto_0
    new-instance v2, Lcom/kingroot/common/utils/system/VTCommand;

    invoke-direct {v2, p1, p1, v0, v1}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/abc;->a(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
