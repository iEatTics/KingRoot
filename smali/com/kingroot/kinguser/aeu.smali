.class public Lcom/kingroot/kinguser/aeu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static afu:Landroid/os/IBinder;

.field private static final afv:[B

.field private static afw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static afx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final afy:[B

.field private static final afz:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/aeu;->afu:Landroid/os/IBinder;

    .line 38
    new-array v0, v1, [B

    sput-object v0, Lcom/kingroot/kinguser/aeu;->afv:[B

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aeu;->afw:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    .line 42
    new-array v0, v1, [B

    sput-object v0, Lcom/kingroot/kinguser/aeu;->afy:[B

    .line 356
    new-instance v0, Lcom/kingroot/kinguser/aeu$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aeu$2;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aeu;->afz:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public static Y(Ljava/util/List;)V
    .locals 7
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
    .line 287
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 289
    if-eqz p0, :cond_5

    .line 290
    invoke-static {}, Lcom/kingroot/kinguser/aem;->ux()Lcom/kingroot/kinguser/aem;

    move-result-object v1

    sget-object v0, Lcom/kingroot/kinguser/aeu;->afz:Lcom/kingroot/kinguser/cce;

    .line 291
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aem;->a(Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;)Lcom/kingroot/kingmaster/network/updatalist/CommonList;

    move-result-object v4

    .line 292
    const/4 v1, 0x0

    .line 295
    if-eqz v4, :cond_4

    .line 296
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_4

    .line 297
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 299
    invoke-static {v5, v0}, Lcom/kingroot/kinguser/bja;->d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 301
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 296
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {v4, v0}, Lcom/kingroot/kingmaster/network/updatalist/CommonList;->eQ(Ljava/lang/String;)I

    move-result v5

    .line 306
    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 307
    invoke-static {v0}, Lcom/kingroot/kinguser/bja;->lV(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    :cond_2
    if-nez v1, :cond_3

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    :cond_4
    const/4 v0, 0x1

    invoke-static {p0, v3, v0}, Lcom/kingroot/kinguser/aeu;->a(Ljava/util/List;Landroid/os/Bundle;I)V

    .line 320
    const/4 v0, 0x2

    invoke-static {v1, v3, v0}, Lcom/kingroot/kinguser/aeu;->a(Ljava/util/List;Landroid/os/Bundle;I)V

    .line 325
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aeu;->uF()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService;

    move-result-object v0

    .line 326
    if-nez v0, :cond_6

    .line 334
    :goto_2
    return-void

    .line 330
    :cond_6
    invoke-interface {v0, v3}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService;->initConfigMap(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 331
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private static a(Ljava/util/List;Landroid/os/Bundle;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 135
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 142
    :cond_0
    return-void

    .line 139
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic f(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/kingroot/kinguser/aeu;->afu:Landroid/os/IBinder;

    return-object p0
.end method

.method public static isWodAvailible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 237
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aeu;->uF()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService;

    move-result-object v1

    .line 238
    if-nez v1, :cond_0

    .line 247
    :goto_0
    return v0

    .line 242
    :cond_0
    invoke-interface {v1}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService;->isWodAvailible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setConfigMap(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 271
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aeu;->uF()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService;

    move-result-object v0

    .line 272
    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-interface {v0, p0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService;->setConfigMap(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static uF()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService;
    .locals 6

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 48
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService;->uL()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService;

    move-result-object v0

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    sget-object v1, Lcom/kingroot/kinguser/aeu;->afu:Landroid/os/IBinder;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/kingroot/kinguser/aeu;->afu:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_5

    .line 51
    :cond_2
    sget-object v2, Lcom/kingroot/kinguser/aeu;->afv:[B

    monitor-enter v2

    .line 52
    :try_start_0
    sget-object v1, Lcom/kingroot/kinguser/aeu;->afu:Landroid/os/IBinder;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/kingroot/kinguser/aeu;->afu:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_4

    .line 54
    :cond_3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 55
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    new-instance v3, Lcom/kingroot/kinguser/aeu$1;

    invoke-direct {v3, v1}, Lcom/kingroot/kinguser/aeu$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 84
    invoke-virtual {v3}, Lcom/kingroot/kinguser/aeu$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    sget-object v3, Lcom/kingroot/kinguser/aeu;->afv:[B

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 99
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :cond_5
    sget-object v1, Lcom/kingroot/kinguser/aeu;->afu:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kingroot/kinguser/aeu;->afu:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afu:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService;

    move-result-object v0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static uG()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 148
    sget-object v3, Lcom/kingroot/kinguser/aeu;->afy:[B

    monitor-enter v3

    .line 149
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 151
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afw:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v4, v2}, Lcom/kingroot/kinguser/aeu;->a(Ljava/util/List;Landroid/os/Bundle;I)V

    .line 154
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 159
    if-lez v0, :cond_6

    .line 160
    invoke-static {}, Lcom/kingroot/kinguser/aem;->ux()Lcom/kingroot/kinguser/aem;

    move-result-object v2

    const/4 v5, 0x0

    .line 161
    invoke-virtual {v2, v5}, Lcom/kingroot/kinguser/aem;->a(Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;)Lcom/kingroot/kingmaster/network/updatalist/CommonList;

    move-result-object v5

    .line 165
    if-eqz v5, :cond_5

    .line 166
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_5

    .line 167
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 169
    invoke-static {v6, v0}, Lcom/kingroot/kinguser/bja;->d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    sget-object v6, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 166
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v5, v0}, Lcom/kingroot/kingmaster/network/updatalist/CommonList;->eQ(Ljava/lang/String;)I

    move-result v6

    .line 176
    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 177
    invoke-static {v0}, Lcom/kingroot/kinguser/bja;->lV(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 178
    :cond_2
    if-nez v1, :cond_3

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v6, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 188
    :cond_5
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v4, v2}, Lcom/kingroot/kinguser/aeu;->a(Ljava/util/List;Landroid/os/Bundle;I)V

    .line 190
    const/4 v0, 0x2

    invoke-static {v1, v4, v0}, Lcom/kingroot/kinguser/aeu;->a(Ljava/util/List;Landroid/os/Bundle;I)V

    .line 193
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    :cond_6
    invoke-static {v4}, Lcom/kingroot/kinguser/aeu;->setConfigMap(Landroid/os/Bundle;)V

    .line 198
    monitor-exit v3

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static uH()V
    .locals 2

    .prologue
    .line 205
    sget-object v1, Lcom/kingroot/kinguser/aeu;->afy:[B

    monitor-enter v1

    .line 206
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 207
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 211
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    :cond_1
    monitor-exit v1

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static uI()Z
    .locals 2

    .prologue
    .line 224
    sget-object v1, Lcom/kingroot/kinguser/aeu;->afy:[B

    monitor-enter v1

    .line 225
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/aeu;->afw:Ljava/util/List;

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    .line 225
    return v0

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic uJ()[B
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afv:[B

    return-object v0
.end method

.method public static w(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 116
    sget-object v1, Lcom/kingroot/kinguser/aeu;->afy:[B

    monitor-enter v1

    .line 117
    if-eqz p1, :cond_1

    .line 118
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    :goto_0
    monitor-exit v1

    .line 131
    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afw:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 124
    :cond_1
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afw:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afw:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/aeu;->afx:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
