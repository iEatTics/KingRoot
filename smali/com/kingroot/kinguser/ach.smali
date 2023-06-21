.class Lcom/kingroot/kinguser/ach;
.super Lcom/kingroot/kinguser/abw;
.source "SourceFile"


# static fields
.field private static aad:Landroid/os/IBinder;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/ach;->aad:Landroid/os/IBinder;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ach;->mLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kingroot/kinguser/abw;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ach;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ach;->ex(Ljava/lang/String;)V

    return-void
.end method

.method private ex(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ach;->aad:Landroid/os/IBinder;

    .line 140
    invoke-static {v0}, Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/RootServiceStub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/IRootService;

    move-result-object v0

    .line 142
    :try_start_0
    invoke-interface {v0, p1}, Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/IRootService;->shareRootRunCmd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/kingroot/kinguser/ach;->aad:Landroid/os/IBinder;

    return-object p0
.end method

.method private r(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 68
    sget-object v0, Lcom/kingroot/kinguser/ach;->aad:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/ach;->aad:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/ach;->ex(Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    sget-object v1, Lcom/kingroot/kinguser/ach;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/kingroot/kinguser/ach$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/kingroot/kinguser/ach$1;-><init>(Lcom/kingroot/kinguser/ach;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 115
    sget-object v0, Lcom/kingroot/kinguser/ach;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 117
    new-instance v0, Lcom/kingroot/kinguser/aci;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/kingroot/kinguser/aci$a;

    const/4 v5, 0x0

    sget-object v6, Lcom/kingroot/kinguser/aci$a;->aap:Lcom/kingroot/kinguser/aci$a;

    aput-object v6, v4, v5

    invoke-direct {v0, v4}, Lcom/kingroot/kinguser/aci;-><init>([Lcom/kingroot/kinguser/aci$a;)V

    .line 119
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aci;->rE()Lcom/kingroot/kinguser/abw;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_1

    .line 121
    iget-object v4, p0, Lcom/kingroot/kinguser/ach;->ZZ:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abw;->rr()Lcom/kingroot/kinguser/abm;

    move-result-object v0

    iput-object v0, v4, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ach;->ZZ:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abw$a;->rs()Z

    move-result v0

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const/4 v4, 0x7

    .line 125
    invoke-static {v2, v3, v0, v4}, Lcom/kingroot/kinguser/aco;->a(JZI)V

    .line 128
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic rD()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kingroot/kinguser/ach;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public ao(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ach;->rC()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ach;->r(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected rA()Lcom/kingroot/kinguser/abm;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ach;->ao(Landroid/content/Context;)V

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/ach;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    return-object v0
.end method

.method protected rB()Lcom/kingroot/kinguser/aci$a;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/kingroot/kinguser/aci$a;->aas:Lcom/kingroot/kinguser/aci$a;

    return-object v0
.end method

.method public rC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/aco;->rS()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v0, ""

    .line 157
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
