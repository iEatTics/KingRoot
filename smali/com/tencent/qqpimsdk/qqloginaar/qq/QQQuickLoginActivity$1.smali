.class Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;
.super Loicq/wlogin_sdk/request/WtloginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public OnException(Loicq/wlogin_sdk/tools/ErrMsg;ILoicq/wlogin_sdk/request/WUserSigInfo;)V
    .locals 0

    return-void
.end method

.method public onQuickLogin(Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;ILoicq/wlogin_sdk/tools/ErrMsg;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;->bNc:Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;->a(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1$1;-><init>(Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity$1;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
