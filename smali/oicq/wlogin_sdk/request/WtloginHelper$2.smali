.class Loicq/wlogin_sdk/request/WtloginHelper$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Loicq/wlogin_sdk/request/WtloginHelper;


# direct methods
.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$2;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Loicq/wlogin_sdk/tools/RSACrypt;

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$2;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-static {v1}, Loicq/wlogin_sdk/request/WtloginHelper;->access$000(Loicq/wlogin_sdk/request/WtloginHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/tools/RSACrypt;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Loicq/wlogin_sdk/tools/RSACrypt;->GenRSAKey()I

    return-void
.end method
