.class public Lcom/kingroot/kinguser/yr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static VE:Lcom/kingroot/kinguser/acr;

.field private static VF:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/yr;->VF:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pb()Lcom/kingroot/kinguser/acr;
    .locals 4

    .prologue
    .line 23
    sget-object v0, Lcom/kingroot/kinguser/yr;->VE:Lcom/kingroot/kinguser/acr;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/kingroot/kinguser/yr;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/yr;->VE:Lcom/kingroot/kinguser/acr;

    if-nez v0, :cond_0

    .line 26
    new-instance v2, Lcom/kingroot/kinguser/acr$a;

    invoke-direct {v2}, Lcom/kingroot/kinguser/acr$a;-><init>()V

    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    .line 31
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    check-cast v0, Landroid/app/ActivityManager;

    .line 32
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 34
    const/high16 v3, 0x100000

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x8

    iput v0, v2, Lcom/kingroot/kinguser/acr$a;->abg:I

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/acr;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/acr;-><init>(Lcom/kingroot/kinguser/acr$a;)V

    sput-object v0, Lcom/kingroot/kinguser/yr;->VE:Lcom/kingroot/kinguser/acr;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/yr;->VF:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 43
    sget-object v0, Lcom/kingroot/kinguser/yr;->VE:Lcom/kingroot/kinguser/acr;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static pc()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/kingroot/kinguser/yr;->VF:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 54
    sget-object v0, Lcom/kingroot/kinguser/yr;->VF:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/kingroot/kinguser/yr;->VE:Lcom/kingroot/kinguser/acr;

    if-eqz v0, :cond_1

    .line 55
    const-class v1, Lcom/kingroot/kinguser/yr;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/yr;->VF:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/yr;->VE:Lcom/kingroot/kinguser/acr;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/kingroot/kinguser/yr;->VE:Lcom/kingroot/kinguser/acr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acr;->close()V

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/yr;->VE:Lcom/kingroot/kinguser/acr;

    .line 60
    sget-object v0, Lcom/kingroot/kinguser/yr;->VF:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 62
    :cond_0
    monitor-exit v1

    .line 64
    :cond_1
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
