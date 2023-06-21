.class Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$1;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;


# direct methods
.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;)V
    .locals 0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$1;->this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$1;->this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->start()V

    return-void
.end method
