.class public Lcom/kingroot/kinguser/abp;
.super Lcom/kingroot/kinguser/abo;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/abp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Zs:Landroid/app/ActivityManager$RunningTaskInfo;

.field private Zt:Z

.field private Zu:Z

.field mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/kingroot/kinguser/abp$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/abp$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/abp;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/kingroot/kinguser/abo;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/abp;->Zu:Z

    .line 42
    new-instance v0, Lcom/kingroot/kinguser/abp$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/abp$2;-><init>(Lcom/kingroot/kinguser/abp;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abp;->mHandler:Landroid/os/Handler;

    .line 72
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/abp;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/abp;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/abp;->c(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private c(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/kingroot/kinguser/abp;->Zu:Z

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/abp;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_2

    .line 83
    iput-object p1, p0, Lcom/kingroot/kinguser/abp;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/abp;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, v0, p1}, Lcom/kingroot/kinguser/abp;->a(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v1

    .line 86
    if-lez v1, :cond_3

    .line 87
    const-string v0, "common_TopAppAccessibilityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "top change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "common_TopAppAccessibilityMonitor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastRunningTask: pkg "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/kingroot/kinguser/abp;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kingroot/kinguser/abp;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", currentTask: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 89
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "common_TopAppAccessibilityMonitor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastRunningTask: activity "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/kingroot/kinguser/abp;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/kingroot/kinguser/abp;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", currentTask: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 92
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/abp;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 96
    iput-object p1, p0, Lcom/kingroot/kinguser/abp;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 99
    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/abp;->c(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 104
    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/abp;->c(Landroid/content/ComponentName;)Z

    move-result v1

    .line 107
    iget-boolean v2, p0, Lcom/kingroot/kinguser/abp;->Zt:Z

    if-eq v2, v1, :cond_5

    .line 108
    if-eqz v1, :cond_a

    .line 109
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abp;->qV()V

    .line 113
    :goto_5
    iput-boolean v1, p0, Lcom/kingroot/kinguser/abp;->Zt:Z

    .line 116
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/abp;->d(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/abp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/aap;->ad(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abp;->S(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abp;->l(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 88
    :cond_6
    const-string v0, "null"

    goto/16 :goto_1

    .line 89
    :cond_7
    const-string v0, "null"

    goto/16 :goto_2

    .line 91
    :cond_8
    const-string v0, "null"

    goto :goto_3

    .line 92
    :cond_9
    const-string v0, "null"

    goto :goto_4

    .line 111
    :cond_a
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abp;->qU()V

    goto :goto_5
.end method

.method public static qW()Lcom/kingroot/kinguser/abp;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/kingroot/kinguser/abp;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/abp;

    return-object v0
.end method


# virtual methods
.method public d(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/kingroot/kinguser/abp;->Zu:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/abp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 141
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 142
    const-string v2, "extra_runningtaskinfo"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    :cond_0
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/kingroot/kinguser/abp;->Zu:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/kingroot/kinguser/abp;->Zu:Z

    .line 130
    return-void
.end method
