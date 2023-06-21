.class public Lcom/kingroot/common/framework/task/KTaskSysService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static Ik:Lcom/kingroot/kinguser/ud;


# instance fields
.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static kv()Lcom/kingroot/kinguser/ud;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/kingroot/common/framework/task/KTaskSysService;->Ik:Lcom/kingroot/kinguser/ud;

    return-object v0
.end method


# virtual methods
.method public kp()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/kingroot/common/framework/task/KTaskSysService;->mStartTime:J

    sub-long/2addr v0, v4

    .line 59
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/common/framework/task/KTaskSysService;->mStartTime:J

    .line 28
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/abh;->a(Landroid/app/Service;Z)V

    .line 29
    new-instance v0, Lcom/kingroot/kinguser/ud;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ud;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/common/framework/task/KTaskSysService;->Ik:Lcom/kingroot/kinguser/ud;

    .line 30
    invoke-virtual {p0}, Lcom/kingroot/common/framework/task/KTaskSysService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/uf;->J(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/abh;->a(Landroid/app/Service;Z)V

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 55
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 43
    sget-object v0, Lcom/kingroot/common/framework/task/KTaskSysService;->Ik:Lcom/kingroot/kinguser/ud;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ud;->f(Landroid/content/Intent;)V

    .line 44
    return-void
.end method
