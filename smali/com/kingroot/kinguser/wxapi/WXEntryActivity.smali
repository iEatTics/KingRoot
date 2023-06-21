.class public Lcom/kingroot/kinguser/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# instance fields
.field aiK:Lcom/kingroot/kinguser/wd;

.field private bud:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private declared-synchronized lQ(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/wxapi/WXEntryActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/wxapi/WXEntryActivity$1;-><init>(Lcom/kingroot/kinguser/wxapi/WXEntryActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->b(Lcom/kingroot/kinguser/bek;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Lcom/kingroot/kinguser/wd;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/wd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->aiK:Lcom/kingroot/kinguser/wd;

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->aiK:Lcom/kingroot/kinguser/wd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wd;->nm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->bud:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->bud:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v1, p0, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->aiK:Lcom/kingroot/kinguser/wd;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/wd;->nm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->bud:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 44
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->bud:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 52
    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    iget v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    packed-switch v0, :pswitch_data_0

    .line 77
    :pswitch_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    invoke-static {v0, v2, v1}, Lcom/kingroot/kinguser/we;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/wd$a;)V

    .line 82
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->finish()V

    .line 83
    return-void

    .line 61
    :pswitch_1
    instance-of v0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    iget-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    .line 64
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/wxapi/WXEntryActivity;->lQ(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_2
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    invoke-static {v0, v2, v1}, Lcom/kingroot/kinguser/we;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/wd$a;)V

    goto :goto_0

    .line 74
    :pswitch_3
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    invoke-static {v0, v2, v1}, Lcom/kingroot/kinguser/we;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/wd$a;)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 93
    return-void
.end method
