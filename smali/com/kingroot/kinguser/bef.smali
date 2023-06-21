.class public Lcom/kingroot/kinguser/bef;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bkS:Lcom/kingroot/kinguser/bee;

.field private static mCount:I

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bef;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static b(Lcom/kingroot/kinguser/bed;)Lcom/kingroot/kinguser/bee;
    .locals 3

    .prologue
    .line 14
    sget-object v1, Lcom/kingroot/kinguser/bef;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bef;->bkS:Lcom/kingroot/kinguser/bee;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lcom/kingroot/kinguser/bef;->bkS:Lcom/kingroot/kinguser/bee;

    .line 17
    iget-object v2, v0, Lcom/kingroot/kinguser/bee;->bkG:Lcom/kingroot/kinguser/bee;

    sput-object v2, Lcom/kingroot/kinguser/bef;->bkS:Lcom/kingroot/kinguser/bee;

    .line 18
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/kingroot/kinguser/bee;->bkG:Lcom/kingroot/kinguser/bee;

    .line 19
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bee;->a(Lcom/kingroot/kinguser/bed;)V

    .line 20
    sget v2, Lcom/kingroot/kinguser/bef;->mCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/kingroot/kinguser/bef;->mCount:I

    .line 21
    monitor-exit v1

    .line 25
    :goto_0
    return-object v0

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    new-instance v0, Lcom/kingroot/kinguser/bee;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bee;-><init>(Lcom/kingroot/kinguser/bed;)V

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static e(Lcom/kingroot/kinguser/bee;)V
    .locals 3

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 33
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/bef;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bee;->recycle()V

    .line 35
    sget v0, Lcom/kingroot/kinguser/bef;->mCount:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    .line 36
    sget-object v0, Lcom/kingroot/kinguser/bef;->bkS:Lcom/kingroot/kinguser/bee;

    iput-object v0, p0, Lcom/kingroot/kinguser/bee;->bkG:Lcom/kingroot/kinguser/bee;

    .line 37
    sput-object p0, Lcom/kingroot/kinguser/bef;->bkS:Lcom/kingroot/kinguser/bee;

    .line 38
    sget v0, Lcom/kingroot/kinguser/bef;->mCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/kingroot/kinguser/bef;->mCount:I

    .line 40
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
