.class public Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;
.super Landroid/app/Activity;


# instance fields
.field private bMZ:Lcom/kingroot/kinguser/btm;

.field private bNa:Loicq/wlogin_sdk/request/WtloginListener;

.field private bNb:Lqqpimaccount/AccountInfo;

.field private final d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x138c

    iput v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->h:Ljava/lang/String;

    const-string v0, "36BBDE2CED94994C"

    iput-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;)Lcom/kingroot/kinguser/btm;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->bMZ:Lcom/kingroot/kinguser/btm;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    const/16 v2, 0x138c

    const-class v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    invoke-interface {v0, v2}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->getRunningPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->launchPlugin(I)Z

    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/btk;

    invoke-direct {v1}, Lcom/kingroot/kinguser/btk;-><init>()V

    iput p1, v1, Lcom/kingroot/kinguser/btk;->a:I

    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->bNb:Lqqpimaccount/AccountInfo;

    iput-object v0, v1, Lcom/kingroot/kinguser/btk;->bMY:Lqqpimaccount/AccountInfo;

    const-class v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/btk;->transferToBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->talkWithPlugin(ILandroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->a(I)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;)Lqqpimaccount/AccountInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->bNb:Lqqpimaccount/AccountInfo;

    return-object v0
.end method

.method private c(Ljava/lang/String;[B[BLjava/lang/String;)Lcom/kingroot/kinguser/bti;
    .locals 3

    sget-object v0, Lcom/tencent/qqpimsdk/qqloginaar/QQLogin;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/btl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bti;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bti;-><init>()V

    const/4 v2, 0x5

    iput v2, v1, Lcom/kingroot/kinguser/bti;->a:I

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, v1, Lcom/kingroot/kinguser/bti;->b:Ljava/lang/String;

    const-string v2, "36BBDE2CED94994C"

    iput-object v2, v1, Lcom/kingroot/kinguser/bti;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iput-object v0, v1, Lcom/kingroot/kinguser/bti;->e:Ljava/lang/String;

    const/16 v0, 0x804

    iput-short v0, v1, Lcom/kingroot/kinguser/bti;->bMW:S

    iput-object p2, v1, Lcom/kingroot/kinguser/bti;->i:[B

    const-string v0, ""

    iput-object v0, v1, Lcom/kingroot/kinguser/bti;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v1, Lcom/kingroot/kinguser/bti;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v1, Lcom/kingroot/kinguser/bti;->f:Ljava/lang/String;

    iput-object p3, v1, Lcom/kingroot/kinguser/bti;->j:[B

    iput-object p4, v1, Lcom/kingroot/kinguser/bti;->c:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;[B[BLjava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->b(Ljava/lang/String;[B[BLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->bNb:Lqqpimaccount/AccountInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lqqpimaccount/AccountInfo;->setAccountType(I)V

    invoke-virtual {v1, p1}, Lqqpimaccount/AccountInfo;->setAccount(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lqqpimaccount/AccountInfo;->setLoginKey(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lqqpimaccount/AccountInfo;->setLoginRefreshKey(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method protected b(Ljava/lang/String;[B[BLjava/lang/String;)I
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->c(Ljava/lang/String;[B[BLjava/lang/String;)Lcom/kingroot/kinguser/bti;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/btj;

    invoke-direct {v2}, Lcom/kingroot/kinguser/btj;-><init>()V

    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-static {}, Lcom/kingroot/kinguser/btn;->ahZ()Lcom/kingroot/kinguser/btn;

    move-result-object v4

    const/16 v5, 0x1b6b

    new-instance v6, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$2;

    invoke-direct {v6, p0, v3}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$2;-><init>(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v4, v5, v0, v2, v6}, Lcom/kingroot/kinguser/btn;->sendShark(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cci;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/btj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->e:Ljava/lang/String;

    const/16 v0, -0x64

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/kingroot/kinguser/btj;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/16 v0, 0xc9

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/kingroot/kinguser/btj;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/kingroot/kinguser/btj;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->f:Ljava/lang/String;

    iget-object v1, v0, Lcom/kingroot/kinguser/btj;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->g:Ljava/lang/String;

    iget v1, v0, Lcom/kingroot/kinguser/btj;->a:I

    iget-object v0, v0, Lcom/kingroot/kinguser/btj;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->e(ILjava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method protected e(ILjava/lang/String;)I
    .locals 2

    const/16 v0, -0x65

    sparse-switch p1, :sswitch_data_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iput-object p2, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->h:Ljava/lang/String;

    const/16 v0, -0x66

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xcf

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xd1

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x3eb

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x65

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x3ec

    goto :goto_0

    :sswitch_6
    const/16 v0, 0xcb

    goto :goto_0

    :sswitch_7
    const/16 v0, 0xff

    goto :goto_0

    :sswitch_8
    const/16 v0, 0xfe

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_8
        0x6 -> :sswitch_2
        0x65 -> :sswitch_4
        0x66 -> :sswitch_3
        0x6b -> :sswitch_5
        0xc8 -> :sswitch_7
        0xcb -> :sswitch_6
        0xff -> :sswitch_7
        0x190 -> :sswitch_1
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_5
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->bMZ:Lcom/kingroot/kinguser/btm;

    sget-object v0, Lcom/kingroot/kinguser/btm;->bNh:Loicq/wlogin_sdk/request/WtloginHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->SetListener(Loicq/wlogin_sdk/request/WtloginListener;)Loicq/wlogin_sdk/request/WtloginListener;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->bMZ:Lcom/kingroot/kinguser/btm;

    sget-object v0, Lcom/kingroot/kinguser/btm;->bNh:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-static {}, Lcom/kingroot/kinguser/btm;->ahY()Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->onQuickLoginActivityResultData(Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;Landroid/content/Intent;)I

    move-result v0

    const/16 v1, -0x3e9

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->a(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lqqpimaccount/AccountInfo;

    invoke-direct {v0}, Lqqpimaccount/AccountInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->bNb:Lqqpimaccount/AccountInfo;

    invoke-static {p0}, Lcom/kingroot/kinguser/btm;->bO(Landroid/content/Context;)Lcom/kingroot/kinguser/btm;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->bMZ:Lcom/kingroot/kinguser/btm;

    new-instance v0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;-><init>(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;)V

    iput-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->bNa:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->bMZ:Lcom/kingroot/kinguser/btm;

    iget-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->bNa:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v0, p0, v1}, Lcom/kingroot/kinguser/btm;->a(Landroid/app/Activity;Loicq/wlogin_sdk/request/WtloginListener;)V

    return-void
.end method
