.class public abstract Lcom/kingroot/common/uilib/template/AbsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/uilib/template/AbsActivity$SelfKillReceiver;
    }
.end annotation


# instance fields
.field private UZ:Lcom/kingroot/kinguser/ym;

.field private Va:Lcom/kingroot/common/uilib/template/AbsActivity$SelfKillReceiver;

.field private volatile mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private oD()V
    .locals 3

    .prologue
    .line 471
    :try_start_0
    new-instance v0, Lcom/kingroot/common/uilib/template/AbsActivity$SelfKillReceiver;

    invoke-direct {v0, p0}, Lcom/kingroot/common/uilib/template/AbsActivity$SelfKillReceiver;-><init>(Lcom/kingroot/common/uilib/template/AbsActivity;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->Va:Lcom/kingroot/common/uilib/template/AbsActivity$SelfKillReceiver;

    .line 472
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->Va:Lcom/kingroot/common/uilib/template/AbsActivity$SelfKillReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "action_self_kill"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/common/uilib/template/AbsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ih()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private oE()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->Va:Lcom/kingroot/common/uilib/template/AbsActivity$SelfKillReceiver;

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/template/AbsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 482
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 317
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public oB()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    return-object v0
.end method

.method public abstract oC()Lcom/kingroot/kinguser/ym;
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/ym;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 230
    return-void

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/ym;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 341
    return-void

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    iget-object v1, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v1, :cond_0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ym;->onBackPressed()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 390
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 392
    :try_start_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 397
    :cond_1
    :goto_1
    return-void

    .line 393
    :catch_0
    move-exception v0

    goto :goto_1

    .line 385
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/template/AbsActivity;->requestWindowFeature(I)Z

    .line 99
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/template/AbsActivity;->oC()Lcom/kingroot/kinguser/ym;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    .line 100
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->oF()V

    .line 104
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->getWholeView()Landroid/view/View;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/common/uilib/template/AbsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kingroot/common/uilib/template/AbsActivity;->oD()V

    .line 115
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kingroot/common/uilib/template/AbsActivity;->oE()V

    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 218
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/ym;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 252
    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    .line 255
    :catch_0
    move-exception v0

    .line 259
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/ym;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x1

    .line 406
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/ym;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/ym;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 237
    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    .line 240
    :catch_0
    move-exception v0

    .line 244
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->onLowMemory()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 439
    return-void

    .line 434
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 174
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ym;->onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 193
    return-void

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ym;->onPostCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 365
    return-void

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->onPostResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 377
    return-void

    .line 372
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->onRestart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 145
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ym;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 353
    return-void

    .line 348
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 150
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->onStart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->onStop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 205
    return-void

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ym;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x1

    .line 426
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->onUserInteraction()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 272
    return-void

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->onUserLeaveHint()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 284
    return-void

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    iget-object v0, v0, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "Title"

    iget-object v1, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    iget-object v1, v1, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/yp;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    :goto_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_1
    return-void

    .line 291
    :cond_0
    const-string v0, "Title"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    iget-object v0, v0, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "Title"

    iget-object v1, p0, Lcom/kingroot/common/uilib/template/AbsActivity;->UZ:Lcom/kingroot/kinguser/ym;

    iget-object v1, v1, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/yp;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :goto_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_1
    return-void

    .line 305
    :cond_0
    const-string v0, "Title"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    goto :goto_1
.end method
