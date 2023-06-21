.class public Lcom/kingroot/kinguser/ahl;
.super Lcom/kingroot/kinguser/tu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/tu",
        "<",
        "Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static volatile aqg:Lcom/kingroot/kinguser/ahl;

.field private static final aqh:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "anti_inject_AntiInjectClientManager"

    sput-object v0, Lcom/kingroot/kinguser/ahl;->TAG:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kingroot/kinguser/ahl;->aqh:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/tu;-><init>()V

    return-void
.end method

.method public static fQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v1, 0xf

    const/4 v0, 0x0

    .line 124
    invoke-static {p1}, Lcom/kingroot/kinguser/ahl;->fQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v4, Lcom/kingroot/kinguser/zm$a;

    invoke-direct {v4, v2, p0, v0}, Lcom/kingroot/kinguser/zm$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v4}, Lcom/kingroot/kinguser/zm;->a(Lcom/kingroot/kinguser/zm$d;)Z

    .line 130
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    :goto_0
    return v0

    .line 135
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    invoke-static {v2, p2}, Lcom/kingroot/kinguser/zn;->H(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 142
    new-instance v1, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v1}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 143
    iput v0, v1, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 144
    iput v0, v1, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 145
    const/16 v3, 0x1ed

    iput v3, v1, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 146
    const-string v3, "u:object_r:system_file:s0"

    iput-object v3, v1, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 147
    invoke-static {p2, v1}, Lcom/kingroot/kinguser/zn;->a(Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I

    move-result v1

    or-int/2addr v0, v1

    .line 157
    :goto_1
    if-eqz v0, :cond_3

    .line 158
    invoke-static {v2, p2, v0}, Lcom/kingroot/kinguser/aau;->b(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 150
    goto :goto_1

    :cond_2
    move v0, v1

    .line 154
    goto :goto_1

    .line 161
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static o(IZ)V
    .locals 4

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-static {}, Lcom/kingroot/kinguser/hz;->br()Lcom/kingroot/kinguser/hz$a;

    move-result-object v0

    .line 170
    packed-switch p0, :pswitch_data_0

    .line 176
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/hz$a;->at(Ljava/lang/String;)Lcom/kingroot/kinguser/hz$a;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/hz$a;->ar(Ljava/lang/String;)Lcom/kingroot/kinguser/hz$a;

    move-result-object v1

    const-string v2, "hello"

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/hz$a;->as(Ljava/lang/String;)Lcom/kingroot/kinguser/hz$a;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/hz$a;->au(Ljava/lang/String;)Lcom/kingroot/kinguser/hz$a;

    .line 181
    :goto_0
    new-instance v1, Lcom/kingroot/kinguser/ahl$1;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ahl$1;-><init>()V

    .line 229
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/if;->n(Landroid/content/Context;)Lcom/kingroot/kinguser/if$a;

    move-result-object v2

    const-string v3, "kr"

    .line 230
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/if$a;->ay(Ljava/lang/String;)Lcom/kingroot/kinguser/if$a;

    move-result-object v2

    .line 231
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aav;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/if$a;->az(Ljava/lang/String;)Lcom/kingroot/kinguser/if$a;

    move-result-object v2

    .line 232
    invoke-virtual {v0}, Lcom/kingroot/kinguser/hz$a;->bs()Lcom/kingroot/kinguser/hz;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/if$a;->a(Lcom/kingroot/kinguser/hz;)Lcom/kingroot/kinguser/if$a;

    move-result-object v0

    .line 233
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bfw;->abf()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/if$a;->g(Z)Lcom/kingroot/kinguser/if$a;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/ahl$2;

    invoke-direct {v2}, Lcom/kingroot/kinguser/ahl$2;-><init>()V

    .line 235
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/if$a;->a(Lcom/kingroot/kinguser/hj;)Lcom/kingroot/kinguser/if$a;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/if$a;->a(Lcom/kingroot/kinguser/he;)Lcom/kingroot/kinguser/if$a;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if$a;->bV()Lcom/kingroot/kinguser/if;

    move-result-object v0

    .line 254
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Lcom/kingroot/kinguser/if;)V

    .line 255
    return-void

    .line 172
    :pswitch_0
    const-string v1, "asset://libgothook.so"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/hz$a;->at(Ljava/lang/String;)Lcom/kingroot/kinguser/hz$a;

    move-result-object v1

    const-string v2, "explode"

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/hz$a;->ar(Ljava/lang/String;)Lcom/kingroot/kinguser/hz$a;

    move-result-object v1

    const-string v2, "hello"

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/hz$a;->as(Ljava/lang/String;)Lcom/kingroot/kinguser/hz$a;

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/if;->n(Landroid/content/Context;)Lcom/kingroot/kinguser/if$a;

    move-result-object v0

    const-string v1, "kr"

    .line 250
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/if$a;->ay(Ljava/lang/String;)Lcom/kingroot/kinguser/if$a;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if$a;->bV()Lcom/kingroot/kinguser/if;

    move-result-object v0

    goto :goto_1

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static xi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data-lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/kingroot/kinguser/akf;->An()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "libai.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    return-object v0
.end method

.method private static xj()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data-lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/kingroot/kinguser/akf;->An()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "libai.arm64.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method public static xk()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xj()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    sget-object v2, Lcom/kingroot/kinguser/ahl;->aqh:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 92
    :try_start_0
    sget-object v3, Lcom/kingroot/kinguser/ahl;->aqh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 114
    :goto_1
    return v0

    .line 90
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xi()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 102
    :cond_2
    :try_start_2
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/kingroot/kinguser/ahl;->aqh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :goto_2
    :try_start_3
    sget-object v0, Lcom/kingroot/kinguser/ahl;->aqh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 104
    :catch_0
    move-exception v1

    .line 107
    :try_start_4
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/kingroot/kinguser/ahl;->aqh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 109
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static xl()Z
    .locals 3

    .prologue
    .line 119
    const-string v0, "libai.so"

    const-string v1, "libai.so"

    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/ahl;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "libai.so.arm64"

    const-string v1, "libai.arm64.so"

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/ahl;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xm()Lcom/kingroot/kinguser/ahl;
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/kingroot/kinguser/ahl;->aqg:Lcom/kingroot/kinguser/ahl;

    if-nez v0, :cond_1

    .line 260
    const-class v1, Lcom/kingroot/kinguser/ahl;

    monitor-enter v1

    .line 261
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ahl;->aqg:Lcom/kingroot/kinguser/ahl;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/kingroot/kinguser/ahl;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ahl;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ahl;->aqg:Lcom/kingroot/kinguser/ahl;

    .line 264
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ahl;->aqg:Lcom/kingroot/kinguser/ahl;

    return-object v0

    .line 264
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V
    .locals 1

    .prologue
    .line 291
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;->setSwitcher(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addProtectedPackages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    .line 315
    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;->addProtectedPackages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ahl;->j(Landroid/os/IBinder;)Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    move-result-object v0

    return-object v0
.end method

.method public getAllLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ai/AntiInjectLogModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    .line 350
    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;->getAllLogs()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 356
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getRebootStat()Lcom/kingroot/kinguser/util/protect/RebootStat;
    .locals 1

    .prologue
    .line 361
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    .line 362
    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;->getRebootStat()Lcom/kingroot/kinguser/util/protect/RebootStat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 365
    :catch_0
    move-exception v0

    .line 368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j(Landroid/os/IBinder;)Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;
    .locals 1

    .prologue
    .line 281
    invoke-static {p1}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    move-result-object v0

    return-object v0
.end method

.method protected jU()I
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic jV()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahl;->xn()Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    move-result-object v0

    return-object v0
.end method

.method protected jW()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public notifyManuallyReboot()V
    .locals 1

    .prologue
    .line 395
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    .line 396
    if-eqz v0, :cond_0

    .line 397
    invoke-interface {v0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;->notifyManuallyReboot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerClient()V
    .locals 1

    .prologue
    .line 373
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    .line 374
    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;->registerClient()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeProtectedPackages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    .line 327
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;->removeProtectedPackages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public syncListWithDaemon()V
    .locals 1

    .prologue
    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    .line 385
    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;->syncListWithDaemon()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected xn()Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService;->xf()Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    move-result-object v0

    return-object v0
.end method

.method public xo()Z
    .locals 1

    .prologue
    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;->getSwitcher()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 344
    :goto_0
    return v0

    .line 341
    :catch_0
    move-exception v0

    .line 344
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
