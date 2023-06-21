.class public Lcom/kingroot/common/framework/main/MainExitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static Hh:Lcom/kingroot/kinguser/wo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/kingroot/common/framework/main/MainExitReceiver$1;

    invoke-direct {v0}, Lcom/kingroot/common/framework/main/MainExitReceiver$1;-><init>()V

    sput-object v0, Lcom/kingroot/common/framework/main/MainExitReceiver;->Hh:Lcom/kingroot/kinguser/wo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static jF()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.kingroot.master.action.MAIN_EXIT_CHECK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method private static jG()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/tk;->dump()V

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/tk;->jL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hU()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    instance-of v1, v0, Lcom/kingroot/kinguser/rf;

    if-eqz v1, :cond_2

    .line 85
    check-cast v0, Lcom/kingroot/kinguser/rf;

    .line 86
    invoke-virtual {v0}, Lcom/kingroot/kinguser/rf;->hN()V

    .line 90
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/wo;->nB()Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jI()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 102
    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 104
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :goto_3
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_4
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/kingroot/common/framework/main/MainExitReceiver$2;

    invoke-direct {v0}, Lcom/kingroot/common/framework/main/MainExitReceiver$2;-><init>()V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_1

    .line 105
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private static jH()V
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.kingroot.master.action.NAIN_EXIT_NOTIFY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public static jI()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 179
    if-eqz v0, :cond_0

    .line 180
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 183
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 192
    :goto_0
    return v0

    .line 188
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic jJ()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jG()V

    return-void
.end method

.method static synthetic jK()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jH()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 40
    const-string v0, "com.kingroot.master.action.MAIN_EXIT_CHECK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/kingroot/common/framework/main/MainExitReceiver;->Hh:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wo;->ny()Z

    .line 46
    :cond_0
    return-void
.end method
