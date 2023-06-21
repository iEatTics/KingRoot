.class public abstract Lcom/kingroot/kinguser/alz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/alz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private azr:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private azs:Z

.field private azt:I

.field private final azu:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/kingroot/kinguser/alz;->azs:Z

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/alz;->azt:I

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alz;->azu:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private HS()V
    .locals 1

    .prologue
    .line 76
    :goto_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/alz;->azs:Z

    if-nez v0, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alz;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/kingroot/kinguser/alz;->azr:Ljava/io/Serializable;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alz;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/kingroot/kinguser/alz;->azs:Z

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/alz;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/kingroot/kinguser/alz;->azs:Z

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/alz;)Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/alz;->azr:Ljava/io/Serializable;

    return-object v0
.end method


# virtual methods
.method public HQ()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/alz;->a(Lcom/kingroot/kinguser/alz$a;)V

    .line 28
    return-void
.end method

.method public HR()Ljava/io/Serializable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/alz;->HS()V

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/alz;->azr:Ljava/io/Serializable;

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public HT()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/kingroot/kinguser/alz;->azu:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alz;->azu:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v2, p0, Lcom/kingroot/kinguser/alz;->azt:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/alz;->azu:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 89
    new-instance v0, Lcom/kingroot/kinguser/alz$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alz$2;-><init>(Lcom/kingroot/kinguser/alz;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wp;->e(Ljava/lang/Runnable;)V

    .line 96
    :cond_0
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract Ha()Ljava/io/File;
.end method

.method public abstract Hc()Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public a(Lcom/kingroot/kinguser/alz$a;)V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/kingroot/kinguser/alz$1;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/alz$1;-><init>(Lcom/kingroot/kinguser/alz;Lcom/kingroot/kinguser/alz$a;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wp;->e(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public fn(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/kingroot/kinguser/alz;->azt:I

    .line 101
    return-void
.end method
