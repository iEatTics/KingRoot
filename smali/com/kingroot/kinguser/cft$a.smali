.class Lcom/kingroot/kinguser/cft$a;
.super Ltmsdk/common/BaseTMSReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic cdG:Lcom/kingroot/kinguser/cft;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/cft;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/kingroot/kinguser/cft$a;->cdG:Lcom/kingroot/kinguser/cft;

    invoke-direct {p0}, Ltmsdk/common/BaseTMSReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/cft;Lcom/kingroot/kinguser/cft$1;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cft$a;-><init>(Lcom/kingroot/kinguser/cft;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 142
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v1, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/cft$a;->cdG:Lcom/kingroot/kinguser/cft;

    invoke-static {v0}, Lcom/kingroot/kinguser/cft;->d(Lcom/kingroot/kinguser/cft;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
