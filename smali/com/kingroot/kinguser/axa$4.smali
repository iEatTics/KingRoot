.class Lcom/kingroot/kinguser/axa$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axa;->TC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXc:Lcom/kingroot/kinguser/axa;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axa;)V
    .locals 0

    .prologue
    .line 993
    iput-object p1, p0, Lcom/kingroot/kinguser/axa$4;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 996
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 999
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/axa$4$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axa$4$1;-><init>(Lcom/kingroot/kinguser/axa$4;)V

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/aaq;->a(Ljava/lang/String;Lcom/kingroot/kinguser/aaq$a;)V

    .line 1010
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ahl;->notifyManuallyReboot()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1014
    :goto_0
    const-wide/16 v2, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    sub-long v0, v2, v0

    .line 1015
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1017
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1022
    :cond_0
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 1024
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$4;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1025
    return-void

    .line 1018
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1011
    :catch_1
    move-exception v2

    goto :goto_0
.end method
