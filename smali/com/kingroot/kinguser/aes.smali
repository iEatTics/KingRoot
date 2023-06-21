.class public Lcom/kingroot/kinguser/aes;
.super Lcom/kingroot/kinguser/th;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kingroot/kinguser/th;-><init>()V

    return-void
.end method

.method private ar(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 124
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 126
    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aes;->at(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    .line 132
    if-eqz v1, :cond_0

    .line 133
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 140
    :cond_0
    return-void
.end method

.method private as(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 148
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 149
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aes;->at(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 151
    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private at(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/common/framework/broadcast/KSysBroadcastReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    const-string v1, "com.kingroot.master.action.SCHEDUAL_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/32 v4, 0x36ee800

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    invoke-static {p1}, Lcom/kingroot/kinguser/bja;->bz(Landroid/content/Context;)J

    move-result-wide v0

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 61
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aes;->ar(Landroid/content/Context;)V

    .line 67
    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    const-string v0, "auto_start_optimize"

    .line 73
    :goto_0
    const-class v1, Lcom/kingroot/kinguser/aet;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tj;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 117
    :cond_1
    :goto_1
    return-void

    .line 67
    :cond_2
    const-string v0, "auto_start_optimize_recently"

    goto :goto_0

    .line 77
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aes;->as(Landroid/content/Context;)V

    .line 86
    const-string v0, "auto_start_optimize"

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/tj;->p(Ljava/lang/String;Z)V

    .line 87
    const-string v0, "auto_start_optimize_recently"

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/tj;->p(Ljava/lang/String;Z)V

    goto :goto_1

    .line 89
    :cond_4
    const-string v1, "com.kingroot.master.action.SCHEDUAL_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    invoke-static {p1}, Lcom/kingroot/kinguser/bja;->bz(Landroid/content/Context;)J

    move-result-wide v0

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 97
    cmp-long v4, v2, v6

    if-ltz v4, :cond_5

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    const-wide/32 v0, 0x2932e00

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 100
    :cond_5
    const-string v0, "auto_start_optimize"

    const-class v1, Lcom/kingroot/kinguser/aet;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tj;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    goto :goto_1

    .line 108
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/aes$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/aes$1;-><init>(Lcom/kingroot/kinguser/aes;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_1
.end method
