.class public Lcom/kingroot/kinguser/bty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bOe:Lcom/kingroot/kinguser/bty;


# instance fields
.field private bOf:Lcom/kingroot/kinguser/buk;

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/kingroot/kinguser/bty;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static aie()Lcom/kingroot/kinguser/bty;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/kingroot/kinguser/bty;->bOe:Lcom/kingroot/kinguser/bty;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "please call sdkInitialize() firstly!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bty;->bOe:Lcom/kingroot/kinguser/bty;

    return-object v0
.end method

.method public static declared-synchronized bP(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/kingroot/kinguser/bty;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/bty;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bty;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/bty;->bOe:Lcom/kingroot/kinguser/bty;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v1

    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/buk;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/kingroot/kinguser/bty;->bOf:Lcom/kingroot/kinguser/buk;

    .line 49
    return-void
.end method

.method public aif()Lcom/kingroot/kinguser/buk;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bty;->bOf:Lcom/kingroot/kinguser/buk;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "please call setmProNetWork() firstly!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bty;->bOf:Lcom/kingroot/kinguser/buk;

    return-object v0
.end method

.method public eF(Z)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p1}, Lcom/kingroot/kinguser/but;->eF(Z)V

    .line 31
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/bty;->context:Landroid/content/Context;

    return-object v0
.end method
