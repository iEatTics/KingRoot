.class public Lcom/kingroot/kinguser/btm;
.super Ljava/lang/Object;


# static fields
.field private static bNg:Lcom/kingroot/kinguser/btm;

.field public static bNh:Loicq/wlogin_sdk/request/WtloginHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/btm;->bNh:Loicq/wlogin_sdk/request/WtloginHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/btm;->bNh:Loicq/wlogin_sdk/request/WtloginHelper;

    return-void
.end method

.method public static ahY()Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;
    .locals 4

    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;

    invoke-direct {v0}, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;-><init>()V

    const-wide/32 v2, 0x5f5e1052

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    const-wide/16 v2, 0x1

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    const v1, 0x1090e0

    iput v1, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    iget-object v1, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iget-object v1, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iget-object v1, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    const-string v2, "bangbang.qq.com"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iget-object v1, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    const-string v2, "game.qq.com"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static bO(Landroid/content/Context;)Lcom/kingroot/kinguser/btm;
    .locals 2

    sget-object v0, Lcom/kingroot/kinguser/btm;->bNg:Lcom/kingroot/kinguser/btm;

    if-nez v0, :cond_1

    const-class v1, Lcom/kingroot/kinguser/btm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/btm;->bNg:Lcom/kingroot/kinguser/btm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/kingroot/kinguser/btm;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/btm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/btm;->bNg:Lcom/kingroot/kinguser/btm;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/btm;->bNg:Lcom/kingroot/kinguser/btm;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Loicq/wlogin_sdk/request/WtloginListener;)V
    .locals 8

    sget-object v0, Lcom/kingroot/kinguser/btm;->bNh:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-virtual {v0, p2}, Loicq/wlogin_sdk/request/WtloginHelper;->SetListener(Loicq/wlogin_sdk/request/WtloginListener;)Loicq/wlogin_sdk/request/WtloginListener;

    sget-object v0, Lcom/kingroot/kinguser/btm;->bNh:Loicq/wlogin_sdk/request/WtloginHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->SetImgType(I)V

    sget-object v0, Lcom/kingroot/kinguser/btm;->bNh:Loicq/wlogin_sdk/request/WtloginHelper;

    const-wide/32 v2, 0x5f5e1052

    const-wide/16 v4, 0x1

    const-string v6, "6.6.6"

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Loicq/wlogin_sdk/request/WtloginHelper;->quickLogin(Landroid/app/Activity;JJLjava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I

    return-void
.end method

.method public a(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Z
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/btm;->bNh:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-virtual {v0, p1, p2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
