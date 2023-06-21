.class public Lcom/kingroot/kinguser/bre;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static bJQ:Lcom/kingroot/kinguser/bre;


# instance fields
.field private appid:I

.field private bJR:Landroid/content/Context;

.field private bJS:Lcom/kingroot/kinguser/bri;

.field private bJT:Lcom/kingroot/kinguser/brq;

.field private bJU:Lcom/kingroot/kinguser/bry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "DiscoverySdk"

    sput-object v0, Lcom/kingroot/kinguser/bre;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p2, p0, Lcom/kingroot/kinguser/bre;->appid:I

    .line 27
    iput-object p1, p0, Lcom/kingroot/kinguser/bre;->bJR:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/kingroot/kinguser/brq;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/brq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bre;->bJT:Lcom/kingroot/kinguser/brq;

    .line 29
    new-instance v0, Lcom/kingroot/kinguser/bry;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/bry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bre;->bJU:Lcom/kingroot/kinguser/bry;

    .line 30
    return-void
.end method

.method public static ahy()Lcom/kingroot/kinguser/bre;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/kingroot/kinguser/bre;->bJQ:Lcom/kingroot/kinguser/bre;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "please call sdkInitialize() firstly!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bre;->bJQ:Lcom/kingroot/kinguser/bre;

    return-object v0
.end method

.method public static eD(Z)V
    .locals 0

    .prologue
    .line 82
    invoke-static {p0}, Lcom/kingroot/kinguser/bth;->eD(Z)V

    .line 83
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/kingroot/kinguser/bre;->bJQ:Lcom/kingroot/kinguser/bre;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized n(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/kingroot/kinguser/bre;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bre;->bJQ:Lcom/kingroot/kinguser/bre;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    monitor-exit v1

    return-void

    .line 36
    :cond_0
    :try_start_1
    new-instance v0, Lcom/kingroot/kinguser/bre;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bre;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/kingroot/kinguser/bre;->bJQ:Lcom/kingroot/kinguser/bre;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/brg;)V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/kingroot/kinguser/brw;->ahO()Lcom/kingroot/kinguser/brw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/brw;->b(Lcom/kingroot/kinguser/brg;)V

    .line 79
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/brh;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/bre;->bJU:Lcom/kingroot/kinguser/bry;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bry;->b(Lcom/kingroot/kinguser/brh;)V

    .line 71
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bri;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/bre;->bJS:Lcom/kingroot/kinguser/bri;

    .line 56
    return-void
.end method

.method public ahA()Lcom/kingroot/kinguser/brq;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/bre;->bJT:Lcom/kingroot/kinguser/brq;

    return-object v0
.end method

.method public ahB()Lcom/kingroot/kinguser/brh;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/bre;->bJU:Lcom/kingroot/kinguser/bry;

    return-object v0
.end method

.method public ahz()Lcom/kingroot/kinguser/bri;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bre;->bJS:Lcom/kingroot/kinguser/bri;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "please call setIProNetwork() firstly!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bre;->bJS:Lcom/kingroot/kinguser/bri;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/bre;->bJR:Landroid/content/Context;

    return-object v0
.end method
