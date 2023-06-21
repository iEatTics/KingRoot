.class public Lcom/kingroot/kinguser/brs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bKO:Lcom/kingroot/kinguser/brs;


# instance fields
.field private bKL:Lcom/kingroot/kinguser/bsd;

.field private bKM:Lcom/kingroot/kinguser/bsb;

.field private bKN:Lcom/kingroot/kinguser/bsg;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "DbMgr()"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/kingroot/kinguser/bsf;

    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bre;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bsf;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v1, Lcom/kingroot/kinguser/bsd;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/bsd;-><init>(Lcom/kingroot/kinguser/bsf;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/brs;->bKL:Lcom/kingroot/kinguser/bsd;

    .line 27
    new-instance v1, Lcom/kingroot/kinguser/bsb;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/bsb;-><init>(Lcom/kingroot/kinguser/bsf;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/brs;->bKM:Lcom/kingroot/kinguser/bsb;

    .line 28
    new-instance v0, Lcom/kingroot/kinguser/bsg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bsg;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brs;->bKN:Lcom/kingroot/kinguser/bsg;

    .line 29
    return-void
.end method

.method public static ahJ()Lcom/kingroot/kinguser/brs;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/kingroot/kinguser/brs;->bKO:Lcom/kingroot/kinguser/brs;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/kingroot/kinguser/brs;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/brs;->bKO:Lcom/kingroot/kinguser/brs;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/kingroot/kinguser/brs;

    invoke-direct {v0}, Lcom/kingroot/kinguser/brs;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/brs;->bKO:Lcom/kingroot/kinguser/brs;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/brs;->bKO:Lcom/kingroot/kinguser/brs;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public ahK()Lcom/kingroot/kinguser/bsd;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/brs;->bKL:Lcom/kingroot/kinguser/bsd;

    return-object v0
.end method

.method public ahL()Lcom/kingroot/kinguser/bsb;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/brs;->bKM:Lcom/kingroot/kinguser/bsb;

    return-object v0
.end method

.method public ahM()Lcom/kingroot/kinguser/bsg;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/brs;->bKN:Lcom/kingroot/kinguser/bsg;

    return-object v0
.end method
