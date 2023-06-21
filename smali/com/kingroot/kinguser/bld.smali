.class public Lcom/kingroot/kinguser/bld;
.super Lcom/kingroot/kinguser/bkw;
.source "SourceFile"


# static fields
.field private static mStartTime:J


# instance fields
.field private aiY:Lcom/kingroot/kinguser/bed;

.field private bzE:Lcom/kingroot/kinguser/bed;

.field private bzF:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 102
    invoke-direct {p0}, Lcom/kingroot/kinguser/bkw;-><init>()V

    .line 270
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bld$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bld$2;-><init>(Lcom/kingroot/kinguser/bld;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bld;->bzE:Lcom/kingroot/kinguser/bed;

    .line 282
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bld$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bld$3;-><init>(Lcom/kingroot/kinguser/bld;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bld;->bzF:Lcom/kingroot/kinguser/bed;

    .line 349
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bld$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bld$4;-><init>(Lcom/kingroot/kinguser/bld;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bld;->aiY:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bld;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/kingroot/kinguser/bld;->aff()V

    return-void
.end method

.method private afb()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/kingroot/kinguser/zl;->pu()V

    .line 230
    invoke-direct {p0}, Lcom/kingroot/kinguser/bld;->rn()V

    .line 233
    invoke-static {}, Lcom/kingroot/kinguser/adl;->init()V

    .line 236
    invoke-direct {p0}, Lcom/kingroot/kinguser/bld;->afd()V

    .line 239
    invoke-static {}, Lcom/kingroot/kinguser/bav;->VO()V

    .line 241
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bld;->bzE:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 244
    invoke-static {}, Lcom/kingroot/kinguser/ajg;->zh()V

    .line 247
    invoke-direct {p0}, Lcom/kingroot/kinguser/bld;->afc()V

    .line 250
    invoke-direct {p0}, Lcom/kingroot/kinguser/bld;->vy()V

    .line 252
    return-void
.end method

.method private afc()V
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->xO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bld;->bzF:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 261
    :cond_0
    return-void
.end method

.method private afd()V
    .locals 0

    .prologue
    .line 497
    invoke-static {}, Lcom/kingroot/kinguser/bja;->adw()Z

    .line 500
    invoke-static {}, Lcom/kingroot/kinguser/afg;->vc()Z

    .line 501
    return-void
.end method

.method private afe()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 513
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 515
    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 516
    sget-wide v2, Lcom/kingroot/kinguser/bld;->mStartTime:J

    sget-wide v4, Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast;->Mo:J

    add-long/2addr v2, v4

    sget-wide v4, Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast;->Mo:J

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 517
    return-void
.end method

.method private aff()V
    .locals 2

    .prologue
    .line 524
    invoke-static {}, Lcom/kingroot/kinguser/aim;->xV()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aio;->d(Lcom/kingroot/kinguser/abc;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aiv;->dD(I)V

    goto :goto_0
.end method

.method private rn()V
    .locals 3

    .prologue
    .line 474
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 475
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/kingroot/common/framework/broadcast/KSysBroadcastReceiver;

    invoke-direct {v2}, Lcom/kingroot/common/framework/broadcast/KSysBroadcastReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 490
    return-void
.end method

.method private vy()V
    .locals 2

    .prologue
    .line 267
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bld;->aiY:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 268
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 209
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bld;->afb()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 214
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->aeT()V

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public iv()Lcom/kingroot/kinguser/rh;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/kingroot/kinguser/ble;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ble;-><init>()V

    return-object v0
.end method

.method public iw()I
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x2

    return v0
.end method

.method public iy()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/kingroot/kinguser/bkw;->iy()V

    .line 122
    return-void
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/kingroot/kinguser/bld;->mStartTime:J

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bld;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/wa;->initCrashReport(Landroid/content/Context;Z)V

    .line 134
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bld;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wa;->W(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bld;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wa;->startANRMonitor(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bld;->afe()V

    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awn;->init()V

    .line 145
    invoke-static {}, Lcom/kingroot/kinguser/bli;->init()V

    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/ahn;->xu()Z

    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/abr;->rk()Lcom/kingroot/kinguser/abr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abr;->rl()V

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/auy;->Ra()Lcom/kingroot/kinguser/auy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bld;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/auy;->bb(Landroid/content/Context;)V

    .line 161
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bld;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v4, Lcom/kingroot/kinguser/bld$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/bld$1;-><init>(Lcom/kingroot/kinguser/bld;)V

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 173
    invoke-static {}, Lcom/kingroot/kinguser/awc;->SB()Lcom/kingroot/kinguser/awc;

    .line 177
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/ayg;->h(Landroid/content/Context;Z)V

    .line 178
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->UW()V

    .line 180
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bld;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/alo;->GW()Lcom/kingroot/kinguser/alo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alo;->init()V

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/bgg;->abA()V

    .line 188
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bld;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "rd"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bbj;->kp(Ljava/lang/String;)Z

    .line 190
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/bfi;->ZW()V

    .line 191
    return-void

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method
