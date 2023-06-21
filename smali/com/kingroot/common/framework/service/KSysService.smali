.class public Lcom/kingroot/common/framework/service/KSysService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static Hz:Z


# instance fields
.field private HA:Lcom/kingroot/kinguser/tt;

.field private HB:Lcom/kingroot/kinguser/tt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/common/framework/service/KSysService;->Hz:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/kingroot/common/framework/service/KSysService;->HA:Lcom/kingroot/kinguser/tt;

    .line 30
    iput-object v0, p0, Lcom/kingroot/common/framework/service/KSysService;->HB:Lcom/kingroot/kinguser/tt;

    return-void
.end method

.method public static a(Landroid/content/ServiceConnection;I)V
    .locals 4

    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 136
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 137
    const-class v2, Lcom/kingroot/common/framework/service/KSysService;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    const-string v2, "extra_access_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)Lcom/kingroot/kinguser/tt;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p1, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 54
    :cond_0
    :try_start_0
    const-string v1, "extra_access_type"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 70
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KSysService;->HB:Lcom/kingroot/kinguser/tt;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lcom/kingroot/kinguser/tr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/tr;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/framework/service/KSysService;->HB:Lcom/kingroot/kinguser/tt;

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KSysService;->HB:Lcom/kingroot/kinguser/tt;

    goto :goto_0

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KSysService;->HA:Lcom/kingroot/kinguser/tt;

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Lcom/kingroot/kinguser/ts;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/common/framework/service/KSysService;->HA:Lcom/kingroot/kinguser/tt;

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KSysService;->HA:Lcom/kingroot/kinguser/tt;

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    goto :goto_1

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static jS()V
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kingroot/common/framework/service/KSysService;->o(ILjava/lang/String;)V

    .line 149
    return-void
.end method

.method public static jT()Z
    .locals 1

    .prologue
    .line 190
    sget-boolean v0, Lcom/kingroot/common/framework/service/KSysService;->Hz:Z

    return v0
.end method

.method public static o(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 155
    const-class v1, Lcom/kingroot/common/framework/service/KSysService;

    monitor-enter v1

    .line 157
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 158
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    :cond_0
    const-string v3, "extra_start_type"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v3, "extra_access_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-class v3, Lcom/kingroot/common/framework/service/KSysService;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 166
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1}, Lcom/kingroot/common/framework/service/KSysService;->b(Landroid/content/Intent;)Lcom/kingroot/kinguser/tt;

    move-result-object v1

    .line 114
    if-nez v1, :cond_0

    .line 126
    :goto_0
    return-object v0

    .line 121
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/kingroot/kinguser/tt;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 80
    sput-boolean v0, Lcom/kingroot/common/framework/service/KSysService;->Hz:Z

    .line 82
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/abh;->a(Landroid/app/Service;Z)V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/abh;->a(Landroid/app/Service;Z)V

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/common/framework/service/KSysService;->Hz:Z

    .line 90
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 96
    invoke-direct {p0, p1}, Lcom/kingroot/common/framework/service/KSysService;->b(Landroid/content/Intent;)Lcom/kingroot/kinguser/tt;

    move-result-object v0

    .line 97
    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/tt;->onStart(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method
