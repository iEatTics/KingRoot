.class public Lcom/kingroot/kinguser/cfr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cdy:Lcom/kingroot/kinguser/cee$b;


# direct methods
.method public static a(Lcom/kingroot/kinguser/cee$b;)V
    .locals 0

    .prologue
    .line 23
    sput-object p0, Lcom/kingroot/kinguser/cfr;->cdy:Lcom/kingroot/kinguser/cee$b;

    .line 24
    return-void
.end method

.method public static aa(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/cfr;->cdy:Lcom/kingroot/kinguser/cee$b;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/kingroot/kinguser/cfr;->cdy:Lcom/kingroot/kinguser/cee$b;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/cee$b;->nJ(Ljava/lang/String;)V

    .line 114
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 117
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 39
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/cfr;->cdy:Lcom/kingroot/kinguser/cee$b;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/kingroot/kinguser/cfr$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cfr$1;-><init>()V

    invoke-static {v0}, Lcom/kingroot/kinguser/cfr;->a(Lcom/kingroot/kinguser/cee$b;)V

    .line 55
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    :try_start_1
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 60
    sget-object v2, Lcom/kingroot/kinguser/cfr;->cdy:Lcom/kingroot/kinguser/cee$b;

    if-eqz v2, :cond_1

    .line 61
    sget-object v2, Lcom/kingroot/kinguser/cfr;->cdy:Lcom/kingroot/kinguser/cee$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-interface {v2, p1, v4, v5}, Lcom/kingroot/kinguser/cee$b;->q(Ljava/lang/String;J)V

    .line 63
    :cond_1
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 68
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
