.class public Lcom/kingroot/kinguser/receiver/SuRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static bfb:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 46
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/receiver/SuRequestReceiver$1;

    invoke-direct {v4}, Lcom/kingroot/kinguser/receiver/SuRequestReceiver$1;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/receiver/SuRequestReceiver;->bfb:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static vz()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/kingroot/common/framework/service/KSysService;->jT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/receiver/SuRequestReceiver;->bfb:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-static {}, Lcom/kingroot/kinguser/receiver/SuRequestReceiver;->vz()V

    .line 23
    if-nez p2, :cond_0

    .line 44
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    invoke-direct {v0}, Lcom/kingroot/kinguser/model/SuRequestCmdModel;-><init>()V

    .line 35
    const-string v1, "srr1"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    .line 36
    const-string v1, "srr2"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRn:I

    .line 37
    const-string v1, "srr3"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRo:Ljava/lang/String;

    .line 38
    const-string v1, "srr4"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRp:Ljava/lang/String;

    .line 39
    const-string v1, "srr5"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRq:I

    .line 40
    const-string v1, "srr6"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRr:I

    .line 43
    invoke-static {p1, v0}, Lcom/kingroot/kinguser/root/mgr/SuNotifyService;->b(Landroid/content/Context;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    goto :goto_0
.end method
