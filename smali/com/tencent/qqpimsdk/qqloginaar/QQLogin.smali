.class public Lcom/tencent/qqpimsdk/qqloginaar/QQLogin;
.super Ljava/lang/Object;


# static fields
.field public static CONTEXT:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;)V
    .locals 1

    invoke-static {}, Lcom/kingroot/kinguser/btn;->ahZ()Lcom/kingroot/kinguser/btn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/btn;->a(Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;)V

    sput-object p0, Lcom/tencent/qqpimsdk/qqloginaar/QQLogin;->CONTEXT:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public login(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsdk/qqloginaar/qq/QQQuickLoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
