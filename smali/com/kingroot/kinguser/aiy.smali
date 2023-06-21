.class public Lcom/kingroot/kinguser/aiy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile asM:Lcom/kingroot/kinguser/aiy;

.field public static volatile asP:Z

.field public static volatile asQ:I


# instance fields
.field private asK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private asL:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final asN:Ljava/lang/Object;

.field private asO:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StartupInspector"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aiy;->TAG:Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/aiy;->asP:Z

    .line 169
    const/4 v0, 0x1

    sput v0, Lcom/kingroot/kinguser/aiy;->asQ:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aiy;->asL:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aiy;->asN:Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/aiy$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/aiy$1;-><init>(Lcom/kingroot/kinguser/aiy;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aiy;->asO:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private a(IIILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/aiy;->asK:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/aiy;->asK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 6

    .prologue
    .line 179
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/aiy$2;

    invoke-direct {v5, p1, p0}, Lcom/kingroot/kinguser/aiy$2;-><init>(ILandroid/app/Activity;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 277
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aiy;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/aiy;->yK()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aiy;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aiy;->dJ(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aiy;IIILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/aiy;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method private dJ(I)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/aiy;->asL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 160
    return-void
.end method

.method public static yI()Lcom/kingroot/kinguser/aiy;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/kingroot/kinguser/aiy;->asM:Lcom/kingroot/kinguser/aiy;

    if-nez v0, :cond_1

    .line 58
    const-class v1, Lcom/kingroot/kinguser/aiy;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aiy;->asM:Lcom/kingroot/kinguser/aiy;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/kingroot/kinguser/aiy;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aiy;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aiy;->asM:Lcom/kingroot/kinguser/aiy;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aiy;->asM:Lcom/kingroot/kinguser/aiy;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private yK()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/aiy;->asL:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 155
    return-void
.end method

.method private yL()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/aiy;->asL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 74
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 75
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aiy;->asK:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-direct {p0}, Lcom/kingroot/kinguser/aiy;->yL()I

    move-result v0

    .line 77
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 78
    const/16 v1, 0x27d9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ll()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/kingroot/kinguser/aiy;->asN:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/aiy;->asO:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 141
    monitor-exit v1

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized yJ()V
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/kingroot/kinguser/aiy;->asK:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
