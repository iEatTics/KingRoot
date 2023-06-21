.class public Lcom/kingroot/kinguser/aer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ZE:Landroid/os/Handler;

.field private static afq:Ljava/lang/Boolean;

.field private static afr:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/aer;->afq:Ljava/lang/Boolean;

    .line 27
    new-instance v0, Lcom/kingroot/kinguser/aer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/aer$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kingroot/kinguser/aer;->ZE:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/aer$2;

    invoke-direct {v4}, Lcom/kingroot/kinguser/aer$2;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/aer;->afr:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public static aq(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/aer;->d(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    if-ne p1, v1, :cond_0

    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/aer;->uD()V

    .line 105
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized uC()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 51
    const-class v1, Lcom/kingroot/kinguser/aer;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    :goto_0
    monitor-exit v1

    return v0

    .line 54
    :cond_0
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/aer;->afq:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 55
    sget-object v0, Lcom/kingroot/kinguser/aer;->afq:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aer;->afq:Ljava/lang/Boolean;

    .line 64
    sget-object v0, Lcom/kingroot/kinguser/aer;->afq:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 67
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/aer;->afq:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kingroot/kinguser/aer;->afq:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static uD()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/aer;->afr:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 116
    :cond_0
    return-void
.end method
