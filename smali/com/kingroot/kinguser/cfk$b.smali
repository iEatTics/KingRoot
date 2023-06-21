.class Lcom/kingroot/kinguser/cfk$b;
.super Ltmsdk/common/BaseTMSReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic ccF:Lcom/kingroot/kinguser/cfk;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/cfk;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/kingroot/kinguser/cfk$b;->ccF:Lcom/kingroot/kinguser/cfk;

    invoke-direct {p0}, Ltmsdk/common/BaseTMSReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/cfk;Lcom/kingroot/kinguser/cfk$1;)V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfk$b;-><init>(Lcom/kingroot/kinguser/cfk;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 527
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 530
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    const-string v1, "action_keep_alive_cycle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk$b;->ccF:Lcom/kingroot/kinguser/cfk;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfk;->e(Lcom/kingroot/kinguser/cfk;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 537
    :cond_2
    const-string v1, "action_keep_alive_close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk$b;->ccF:Lcom/kingroot/kinguser/cfk;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfk;->e(Lcom/kingroot/kinguser/cfk;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
