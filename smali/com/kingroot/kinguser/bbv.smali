.class public Lcom/kingroot/kinguser/bbv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bbv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile bfK:I

.field private volatile bfL:I

.field private volatile bfM:I

.field private volatile bfN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/kingroot/kinguser/bbv$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bbv$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bbv;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x3e7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/kingroot/kinguser/bbv;->bfK:I

    .line 35
    iput v0, p0, Lcom/kingroot/kinguser/bbv;->bfL:I

    .line 36
    const/16 v0, 0x80

    iput v0, p0, Lcom/kingroot/kinguser/bbv;->bfM:I

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bbv$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbv;-><init>()V

    return-void
.end method

.method public static WK()Lcom/kingroot/kinguser/bbv;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kingroot/kinguser/bbv;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bbv;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized WL()I
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kingroot/kinguser/bbv;->bfK:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->getRootState()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bbv;->bfK:I

    .line 52
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/bbv;->bfK:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized WM()I
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kingroot/kinguser/bbv;->bfL:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->ES()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bbv;->bfL:I

    .line 80
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/bbv;->bfL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public WN()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/kingroot/kinguser/bbv;->bfM:I

    return v0
.end method

.method public WO()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bbv;->bfN:Z

    return v0
.end method

.method public WP()Z
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbv;->WL()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bbu;->hP(I)Z

    move-result v0

    return v0
.end method

.method public WQ()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbv;->WL()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bbu;->hO(I)Z

    move-result v0

    return v0
.end method

.method public WR()Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbv;->WL()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bbu;->hR(I)Z

    move-result v0

    return v0
.end method

.method public WS()Z
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbv;->WL()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bbu;->hQ(I)Z

    move-result v0

    return v0
.end method

.method public dC(Z)V
    .locals 0

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bbv;->bfN:Z

    .line 125
    return-void
.end method

.method public declared-synchronized hT(I)V
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/kingroot/kinguser/bbv;->bfK:I

    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/bbv;->bfK:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->setRootState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hU(I)V
    .locals 2

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/kingroot/kinguser/bbv;->bfL:I

    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/bbv;->bfL:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eI(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hV(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/kingroot/kinguser/bbv;->bfM:I

    .line 111
    return-void
.end method
