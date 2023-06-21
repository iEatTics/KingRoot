.class public Lcom/kingroot/common/improve/protection/onepx/KeepAliveActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 114
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 118
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/feedback/eup/CrashReport;->handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/kingroot/common/improve/protection/onepx/KeepAliveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/kingroot/common/improve/protection/onepx/KeepAliveActivity;->finish()V

    .line 66
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 45
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 47
    if-eq v0, v1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/kingroot/common/improve/protection/onepx/KeepAliveActivity;->finish()V

    goto :goto_0

    .line 53
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/common/improve/protection/onepx/KeepAliveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 54
    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 55
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 56
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 57
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 58
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 59
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 96
    if-nez p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/kingroot/common/improve/protection/onepx/KeepAliveActivity;->finish()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v0, "uid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 103
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 105
    if-eq v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/kingroot/common/improve/protection/onepx/KeepAliveActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 84
    return-void
.end method
