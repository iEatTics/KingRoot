.class public Lcom/kingroot/kinguser/bej;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static blf:Lcom/kingroot/kinguser/bed;

.field private static mCount:I

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bej;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static c(Lcom/kingroot/kinguser/bek;)Lcom/kingroot/kinguser/bed;
    .locals 3

    .prologue
    .line 15
    sget-object v1, Lcom/kingroot/kinguser/bej;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bej;->blf:Lcom/kingroot/kinguser/bed;

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/kingroot/kinguser/bej;->blf:Lcom/kingroot/kinguser/bed;

    .line 18
    iget-object v2, v0, Lcom/kingroot/kinguser/bed;->bkv:Lcom/kingroot/kinguser/bed;

    sput-object v2, Lcom/kingroot/kinguser/bej;->blf:Lcom/kingroot/kinguser/bed;

    .line 19
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/kingroot/kinguser/bed;->bkv:Lcom/kingroot/kinguser/bed;

    .line 20
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bed;->a(Lcom/kingroot/kinguser/bek;)V

    .line 21
    sget v2, Lcom/kingroot/kinguser/bej;->mCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/kingroot/kinguser/bej;->mCount:I

    .line 22
    monitor-exit v1

    .line 28
    :goto_0
    return-object v0

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    new-instance v0, Lcom/kingroot/kinguser/bed;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    .line 27
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/bed;->bkD:Z

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static g(Lcom/kingroot/kinguser/bed;)V
    .locals 3

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bed;->recycle()V

    .line 37
    sget-object v1, Lcom/kingroot/kinguser/bej;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    sget v0, Lcom/kingroot/kinguser/bej;->mCount:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bed;->bkD:Z

    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Lcom/kingroot/kinguser/bej;->blf:Lcom/kingroot/kinguser/bed;

    iput-object v0, p0, Lcom/kingroot/kinguser/bed;->bkv:Lcom/kingroot/kinguser/bed;

    .line 40
    sput-object p0, Lcom/kingroot/kinguser/bej;->blf:Lcom/kingroot/kinguser/bed;

    .line 41
    sget v0, Lcom/kingroot/kinguser/bej;->mCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/kingroot/kinguser/bej;->mCount:I

    .line 43
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
