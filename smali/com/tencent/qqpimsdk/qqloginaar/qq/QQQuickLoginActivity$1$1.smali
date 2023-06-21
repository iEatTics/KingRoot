.class Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->onQuickLogin(Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;ILoicq/wlogin_sdk/tools/ErrMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic bNd:Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;

.field final synthetic bNe:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNe:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;

    iput-object p2, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNd:Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;

    iput-object p3, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNd:Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    const/16 v1, 0x40

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetTicketSig(Loicq/wlogin_sdk/request/WUserSigInfo;I)[B

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/btn;->ahZ()Lcom/kingroot/kinguser/btn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/btn;->getGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNe:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;

    iget-object v2, v2, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    iget-object v3, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->b:Ljava/lang/String;

    new-array v4, v5, [B

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->a(Ljava/lang/String;[B[BLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNe:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;

    iget-object v1, v1, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->a(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;)Lcom/kingroot/kinguser/btm;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/btm;->a(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Z

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_gender:[B

    if-eqz v1, :cond_1

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_gender:[B

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_gender:[B

    aget-byte v1, v1, v5

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNe:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;

    iget-object v1, v1, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->b(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;)Lqqpimaccount/AccountInfo;

    move-result-object v1

    sget-object v2, Lqqpimaccount/GenderTypeEnum;->UNKNOWN:Lqqpimaccount/GenderTypeEnum;

    invoke-virtual {v1, v2}, Lqqpimaccount/AccountInfo;->setGender(Lqqpimaccount/GenderTypeEnum;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNe:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;

    iget-object v1, v1, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->b(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;)Lqqpimaccount/AccountInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_nick:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lqqpimaccount/AccountInfo;->setNickName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNe:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;

    iget-object v1, v1, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->b(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;)Lqqpimaccount/AccountInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v0, v0, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_url:[B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lqqpimaccount/AccountInfo;->setPortraitUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNe:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;

    iget-object v0, v0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->a(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;I)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNe:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;

    iget-object v1, v1, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->b(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;)Lqqpimaccount/AccountInfo;

    move-result-object v1

    sget-object v2, Lqqpimaccount/GenderTypeEnum;->UNKNOWN:Lqqpimaccount/GenderTypeEnum;

    invoke-virtual {v1, v2}, Lqqpimaccount/AccountInfo;->setGender(Lqqpimaccount/GenderTypeEnum;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNe:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;

    iget-object v1, v1, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->b(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;)Lqqpimaccount/AccountInfo;

    move-result-object v1

    sget-object v2, Lqqpimaccount/GenderTypeEnum;->MALE:Lqqpimaccount/GenderTypeEnum;

    invoke-virtual {v1, v2}, Lqqpimaccount/AccountInfo;->setGender(Lqqpimaccount/GenderTypeEnum;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNe:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;

    iget-object v1, v1, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->b(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;)Lqqpimaccount/AccountInfo;

    move-result-object v1

    sget-object v2, Lqqpimaccount/GenderTypeEnum;->FEMALE:Lqqpimaccount/GenderTypeEnum;

    invoke-virtual {v1, v2}, Lqqpimaccount/AccountInfo;->setGender(Lqqpimaccount/GenderTypeEnum;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;->bNe:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;

    iget-object v0, v0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->a(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
