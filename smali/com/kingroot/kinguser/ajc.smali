.class public Lcom/kingroot/kinguser/ajc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aje;


# static fields
.field private static final asY:Ljava/lang/Object;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ajc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private asZ:Lcom/kingroot/kinguser/bed;

.field private ata:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ajc;->asY:Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/kingroot/kinguser/ajc$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajc$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ajc;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/ajc$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/ajc$2;-><init>(Lcom/kingroot/kinguser/ajc;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ajc;->asZ:Lcom/kingroot/kinguser/bed;

    .line 105
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/ajc$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/ajc$3;-><init>(Lcom/kingroot/kinguser/ajc;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ajc;->ata:Lcom/kingroot/kinguser/bed;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ajc$1;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/kingroot/kinguser/ajc;-><init>()V

    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/cd;)V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/kingroot/kinguser/cd;->ly:Lcom/kingroot/kinguser/cx;

    .line 370
    if-eqz v0, :cond_0

    .line 373
    iget v1, v0, Lcom/kingroot/kinguser/cx;->mF:I

    .line 375
    iget v0, v0, Lcom/kingroot/kinguser/cx;->mE:I

    .line 378
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 379
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    sget v1, Lcom/kingroot/kinguser/ajc;->atB:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->ej(I)V

    .line 383
    :cond_0
    return-void
.end method

.method private static a(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/kingroot/kinguser/common/check/ISuCheckListener;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ajf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 191
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DA()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    const-string v0, "su"

    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->en(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return v2

    .line 198
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/aks;->bI(Z)V

    .line 201
    :cond_1
    if-nez p3, :cond_2

    .line 202
    invoke-static {}, Lcom/kingroot/kinguser/ajc;->yZ()Ljava/util/List;

    move-result-object p3

    .line 208
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ajf;

    .line 212
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/kingroot/kinguser/ajf;->e(ZZ)Z
    :try_end_0
    .catch Lcom/kingroot/kinguser/ajd; {:try_start_0 .. :try_end_0} :catch_4

    move-result v6

    .line 218
    if-nez v6, :cond_11

    .line 222
    invoke-interface {v0}, Lcom/kingroot/kinguser/ajf;->ze()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    move v1, v4

    :goto_2
    move v3, v1

    move v1, v0

    .line 226
    goto :goto_1

    .line 229
    :cond_3
    if-eqz v3, :cond_e

    .line 230
    if-eqz v1, :cond_4

    if-nez p0, :cond_4

    move v6, v4

    .line 231
    :goto_3
    if-eqz v6, :cond_5

    sget-object v0, Lcom/kingroot/kinguser/bho;->bqT:Ljava/lang/Object;

    move-object v3, v0

    .line 233
    :goto_4
    monitor-enter v3

    .line 235
    :try_start_1
    const-string v0, "checkE"

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/kingroot/kinguser/bho;->S(Ljava/lang/String;I)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v7

    .line 238
    if-eqz v6, :cond_7

    .line 240
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/kingroot/kinguser/bho;->a(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 244
    iget v0, v7, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootPeekCount:I

    if-lt v0, v8, :cond_6

    .line 245
    monitor-exit v3

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v6, v2

    .line 230
    goto :goto_3

    .line 231
    :cond_5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    goto :goto_4

    .line 249
    :cond_6
    const/4 v0, 0x1

    const/4 v5, 0x0

    :try_start_2
    invoke-static {v7, v0, v5}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 255
    :cond_7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v4

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ajf;

    .line 256
    invoke-interface {v0}, Lcom/kingroot/kinguser/ajf;->yR()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 258
    invoke-interface {v0}, Lcom/kingroot/kinguser/ajf;->ze()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "/system"

    invoke-static {v9}, Lcom/kingroot/kinguser/aaw;->dV(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-nez v9, :cond_8

    move v5, v2

    .line 260
    goto :goto_5

    .line 266
    :cond_8
    :try_start_3
    invoke-interface {v0}, Lcom/kingroot/kinguser/ajf;->yS()Z
    :try_end_3
    .catch Lcom/kingroot/kinguser/ajd; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    .line 273
    if-nez v9, :cond_9

    move v5, v2

    .line 278
    :cond_9
    :try_start_4
    instance-of v0, v0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_f

    if-eqz p2, :cond_f

    .line 280
    if-eqz v9, :cond_a

    move v0, v2

    :goto_6
    :try_start_5
    invoke-interface {p2, v0}, Lcom/kingroot/kinguser/common/check/ISuCheckListener;->onSuCheckEvent(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v5

    :goto_7
    move v5, v0

    .line 287
    goto :goto_5

    .line 267
    :catch_0
    move-exception v0

    .line 269
    :try_start_6
    monitor-exit v3

    goto/16 :goto_0

    :cond_a
    move v0, v4

    .line 280
    goto :goto_6

    .line 282
    :catch_1
    move-exception v0

    move v0, v5

    goto :goto_7

    .line 290
    :cond_b
    if-eqz v1, :cond_c

    .line 292
    invoke-static {}, Lcom/kingroot/kinguser/ajc;->za()V

    .line 294
    if-eqz v6, :cond_c

    .line 297
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v7, v0, v1}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 300
    iget v0, v7, Lcom/kingroot/kinguser/util/protect/RebootStat;->successPeekCount:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lt v0, v10, :cond_d

    .line 303
    const-wide/16 v0, 0x320

    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 315
    :goto_8
    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_8
    invoke-static {v7, v0, v1}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/kingroot/kinguser/bho;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 321
    :cond_c
    monitor-exit v3

    move v2, v5

    goto/16 :goto_0

    .line 304
    :catch_2
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    .line 310
    :cond_d
    const-wide/16 v0, 0xbb8

    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    .line 311
    :catch_3
    move-exception v0

    .line 312
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_8

    .line 326
    :cond_e
    invoke-static {v4}, Lcom/kingroot/kinguser/wb;->U(Z)V

    move v2, v4

    .line 329
    goto/16 :goto_0

    .line 213
    :catch_4
    move-exception v0

    goto/16 :goto_0

    :cond_f
    move v0, v5

    goto :goto_7

    :cond_10
    move v0, v1

    move v1, v4

    goto/16 :goto_2

    :cond_11
    move v0, v1

    move v1, v3

    goto/16 :goto_2
.end method

.method public static yX()Lcom/kingroot/kinguser/ajc;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/kingroot/kinguser/ajc;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ajc;

    return-object v0
.end method

.method private yY()V
    .locals 8

    .prologue
    .line 337
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 339
    const v1, 0x36ee800

    .line 340
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cr()J

    move-result-wide v2

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 342
    int-to-long v6, v1

    add-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-lez v6, :cond_0

    int-to-long v6, v1

    sub-long/2addr v2, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 348
    :cond_0
    const/4 v1, 0x0

    .line 349
    invoke-static {v1}, Lcom/kingroot/kinguser/aif;->dx(I)Lcom/kingroot/kinguser/cd;

    move-result-object v1

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 351
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-static {}, Lcom/kingroot/kinguser/wm;->nu()Lcom/kingroot/kinguser/wm;

    move-result-object v3

    new-instance v4, Lcom/kingroot/kinguser/ajc$4;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/kingroot/kinguser/ajc$4;-><init>(Lcom/kingroot/kinguser/ajc;Ljava/util/ArrayList;Lcom/kingroot/kinguser/aks;Lcom/kingroot/kinguser/cd;)V

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/wm;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static yZ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ajf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    new-instance v1, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;

    invoke-direct {v1}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    const-string v1, "/system"

    invoke-static {v1}, Lcom/kingroot/kinguser/aaw;->dV(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    new-instance v1, Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit;

    invoke-direct {v1}, Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;

    invoke-direct {v1}, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-static {}, Lcom/kingroot/kinguser/aaw;->qv()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    new-instance v1, Lcom/kingroot/kinguser/common/check/VirtualXbinCheckUnit;

    invoke-direct {v1}, Lcom/kingroot/kinguser/common/check/VirtualXbinCheckUnit;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_1
    new-instance v1, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;

    invoke-direct {v1}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-static {}, Lcom/kingroot/kinguser/ajb;->yV()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 413
    return-object v0
.end method

.method private static za()V
    .locals 2

    .prologue
    .line 420
    new-instance v0, Lcom/kingroot/kinguser/ajc$5;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajc$5;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-void
.end method


# virtual methods
.method public checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    if-eqz p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    if-eqz p2, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/ajc;->asZ:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 76
    :cond_0
    return-void

    .line 70
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 71
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public checkSync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/kingroot/kinguser/common/check/ISuCheckListener;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ajf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 142
    sget-object v1, Lcom/kingroot/kinguser/ajc;->asY:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ajc;->yY()V

    .line 146
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    .line 147
    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {v2}, Lcom/kingroot/kinguser/abc;->isRootPermitionInBackupSu()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    monitor-exit v1

    .line 181
    :goto_0
    return v0

    .line 152
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    monitor-exit v1

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 158
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    invoke-static {}, Lcom/kingroot/kinguser/zl;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "chr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 162
    if-nez p1, :cond_2

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "htc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    monitor-exit v1

    goto :goto_0

    .line 181
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/kingroot/kinguser/ajc;->a(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;Ljava/util/List;)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public delayCheckAgain()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ajc;->ata:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 100
    return-void
.end method
