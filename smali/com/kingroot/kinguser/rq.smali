.class public Lcom/kingroot/kinguser/rq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static cu(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v1, v3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    const-string v1, "com.android.internal.app.IAppOpsService$Stub"

    .line 79
    const-string v1, "TRANSACTION_setMode"

    .line 80
    const-string v1, "appops"

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 85
    const-string v1, "com.android.internal.app.IAppOpsService$Stub"

    invoke-static {v1}, Lcom/kingroot/kinguser/abb;->ek(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    const-string v1, "TRANSACTION_setMode"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/abb;->l(Ljava/lang/String;I)I

    move-result v1

    move v3, v1

    .line 88
    :goto_1
    if-eq v3, v2, :cond_0

    .line 93
    const-string v1, "android.app.AppOpsManager"

    invoke-static {v1}, Lcom/kingroot/kinguser/abb;->ek(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-static {p0, v2}, Lcom/kingroot/kinguser/abb;->l(Ljava/lang/String;I)I

    move-result v1

    .line 96
    :goto_2
    if-eq v1, v2, :cond_0

    .line 100
    const-string v0, "service call %s %d i32 %d i32 %d s16 %s i32 %d"

    .line 101
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "appops"

    aput-object v5, v2, v6

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method public static iU()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    :try_start_0
    const-string v0, "OP_SYSTEM_ALERT_WINDOW"

    invoke-static {v0}, Lcom/kingroot/kinguser/rq;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 38
    :cond_2
    const-string v0, "ro.yunos.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ze;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/rq;->iV()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static iV()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 53
    const-string v0, "com.aliyun.permission.IPermissionService$Stub"

    invoke-static {v0}, Lcom/kingroot/kinguser/abb;->ek(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const-string v0, "TRANSACTION_notifyChangedPermission"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/abb;->l(Ljava/lang/String;I)I

    move-result v0

    .line 56
    :goto_0
    if-ne v0, v1, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 60
    :goto_1
    return-object v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "service call Permission %d s16 \"%s\" i32 1 s16 \"%s 0\" i32 1"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 62
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v4, v3, v0

    .line 60
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
