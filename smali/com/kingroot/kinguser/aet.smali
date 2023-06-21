.class public Lcom/kingroot/kinguser/aet;
.super Lcom/kingroot/kinguser/tz;
.source "SourceFile"


# instance fields
.field private aft:Lcom/kingroot/kinguser/abc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/kingroot/kinguser/tz;-><init>()V

    return-void
.end method

.method private static a(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;ZLcom/kingroot/kinguser/abc;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adA()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

    .line 261
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    const-string v5, "pm %s \'%s/%s\'"

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string v1, "enable"

    :goto_0
    aput-object v1, v6, v2

    .line 269
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 268
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 285
    :goto_1
    return v0

    .line 262
    :catch_0
    move-exception v0

    move v0, v2

    .line 265
    goto :goto_1

    .line 268
    :cond_1
    const-string v1, "disable"

    goto :goto_0

    :cond_2
    move v0, v3

    .line 285
    goto :goto_1
.end method

.method private a(Ljava/util/List;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;",
            "Landroid/content/pm/ApplicationInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 222
    :goto_0
    return v0

    .line 217
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 218
    iget v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    iget v4, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_2

    iget-object v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 222
    goto :goto_0
.end method

.method private ax(Z)Z
    .locals 14

    .prologue
    .line 136
    new-instance v5, Lcom/kingroot/kinguser/bjg;

    const-string v0, "autostart_enable_settings.conf"

    invoke-direct {v5, v0}, Lcom/kingroot/kinguser/bjg;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v5}, Lcom/kingroot/kinguser/bjg;->adJ()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bjg;->u(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v6

    .line 139
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 204
    :cond_1
    :goto_0
    return v0

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/aet;->uE()Ljava/lang/String;

    move-result-object v7

    .line 146
    new-instance v8, Lcom/kingroot/kinguser/biz;

    invoke-direct {v8}, Lcom/kingroot/kinguser/biz;-><init>()V

    .line 147
    invoke-virtual {v8}, Lcom/kingroot/kinguser/biz;->adr()Z

    .line 150
    invoke-static {}, Lcom/kingroot/common/utils/system/ProcessUtils;->qJ()Ljava/util/List;

    move-result-object v9

    .line 152
    const/4 v0, 0x0

    .line 153
    const/4 v2, 0x1

    move v1, v0

    .line 155
    :cond_3
    :goto_1
    invoke-virtual {v8}, Lcom/kingroot/kinguser/biz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 156
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aet;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 201
    :goto_2
    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/bjg;->t(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {v8}, Lcom/kingroot/kinguser/biz;->ads()Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    move-result-object v10

    .line 161
    if-eqz v10, :cond_3

    .line 163
    invoke-virtual {v10}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 164
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 165
    if-nez v0, :cond_10

    .line 166
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    .line 169
    :goto_3
    if-eqz v7, :cond_5

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 171
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    :cond_6
    const/4 v0, 0x1

    move v3, v0

    .line 173
    :goto_4
    if-eqz p1, :cond_7

    invoke-virtual {v10}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adC()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v0, v12, :cond_8

    :cond_7
    if-eqz v3, :cond_e

    .line 174
    :cond_8
    invoke-direct {p0}, Lcom/kingroot/kinguser/aet;->rQ()V

    .line 176
    const/4 v0, 0x0

    .line 178
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_5
    if-eqz v0, :cond_9

    invoke-direct {p0, v9, v0}, Lcom/kingroot/kinguser/aet;->a(Ljava/util/List;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_c

    :cond_a
    const/4 v0, 0x1

    .line 191
    :goto_6
    iget-object v4, p0, Lcom/kingroot/kinguser/aet;->aft:Lcom/kingroot/kinguser/abc;

    invoke-static {v10, v0, v4}, Lcom/kingroot/kinguser/aet;->a(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;ZLcom/kingroot/kinguser/abc;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 192
    const/4 v0, 0x0

    .line 193
    goto :goto_2

    .line 171
    :cond_b
    const/4 v0, 0x0

    move v3, v0

    goto :goto_4

    .line 190
    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    .line 195
    :cond_d
    if-eqz v3, :cond_e

    .line 196
    const/4 v1, 0x1

    .line 197
    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    move v0, v1

    move v1, v0

    .line 200
    goto/16 :goto_1

    .line 197
    :cond_f
    const/4 v0, 0x1

    goto :goto_7

    .line 179
    :catch_0
    move-exception v12

    goto :goto_5

    :cond_10
    move-object v4, v0

    goto :goto_3

    :cond_11
    move v0, v2

    goto/16 :goto_2
.end method

.method private d(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    const/4 v0, 0x1

    const-string v1, "MyWakelockTag"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->y(ILjava/lang/String;)V

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aet;->kq()Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    const-string v1, "auto_start_optimize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aet;->ax(Z)Z

    move-result v1

    .line 78
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bja;->c(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    const-string v0, "MyWakelockTag"

    invoke-static {v0}, Lcom/kingroot/kinguser/zk;->dw(Ljava/lang/String;)V

    .line 86
    iput-object v4, p0, Lcom/kingroot/kinguser/aet;->aft:Lcom/kingroot/kinguser/abc;

    .line 90
    :goto_0
    return-object v4

    .line 82
    :catch_0
    move-exception v0

    .line 85
    const-string v0, "MyWakelockTag"

    invoke-static {v0}, Lcom/kingroot/kinguser/zk;->dw(Ljava/lang/String;)V

    .line 86
    iput-object v4, p0, Lcom/kingroot/kinguser/aet;->aft:Lcom/kingroot/kinguser/abc;

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    const-string v1, "MyWakelockTag"

    invoke-static {v1}, Lcom/kingroot/kinguser/zk;->dw(Ljava/lang/String;)V

    .line 86
    iput-object v4, p0, Lcom/kingroot/kinguser/aet;->aft:Lcom/kingroot/kinguser/abc;

    throw v0
.end method

.method private rQ()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/aet;->aft:Lcom/kingroot/kinguser/abc;

    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aet;->aft:Lcom/kingroot/kinguser/abc;

    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/aet;->aft:Lcom/kingroot/kinguser/abc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no root permission granted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    return-void
.end method

.method private uE()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aet;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    .line 232
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 233
    if-nez v0, :cond_0

    move-object v0, v1

    .line 244
    :goto_0
    return-object v0

    .line 236
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 239
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 240
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 241
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 244
    goto :goto_0
.end method


# virtual methods
.method protected b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 58
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aet;->d(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aet;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected kr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "OptimizeTask"

    return-object v0
.end method
