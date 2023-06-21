.class public Lcom/kingroot/kinguser/bwg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bQY:Lcom/kingroot/kinguser/bwg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bwg;->bQY:Lcom/kingroot/kinguser/bwg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static declared-synchronized aiJ()Lcom/kingroot/kinguser/bwg;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/kingroot/kinguser/bwg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bwg;->bQY:Lcom/kingroot/kinguser/bwg;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/kingroot/kinguser/bwg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bwg;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bwg;->bQY:Lcom/kingroot/kinguser/bwg;

    .line 49
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bwg;->bQY:Lcom/kingroot/kinguser/bwg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bT(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-static {}, Lcom/kingroot/kinguser/bra;->ahv()Lcom/kingroot/kinguser/bra;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bra;->setContext(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/cgp;->isEnable()Z

    move-result v1

    const-string v2, "TMSLog"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bra;->d(ZLjava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/cgp;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bra;->er(Z)V

    .line 68
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bra;->es(Z)V

    .line 70
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bra;->et(Z)V

    .line 73
    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bra;->eu(Z)V

    .line 75
    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bra;->ev(Z)V

    .line 77
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bra;->ew(Z)V

    .line 79
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bra;->ex(Z)V

    .line 81
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bra;->ey(Z)V

    .line 88
    const-string v1, "tms.pService_5_1"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bra;->mW(Ljava/lang/String;)V

    .line 90
    const-string v1, "_tms"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bra;->mX(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bra;->ez(Z)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bra;->j([I)V

    .line 96
    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bra;->eA(Z)V

    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 100
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bra;->eB(Z)V

    .line 104
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.tmsecure.ACTION_PKG_MONITOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bra;->p(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bra;->eC(Z)V

    .line 108
    return-void

    .line 102
    :cond_0
    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bra;->eB(Z)V

    goto :goto_0
.end method
