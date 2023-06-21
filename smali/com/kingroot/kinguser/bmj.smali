.class public Lcom/kingroot/kinguser/bmj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bBT:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bmj;->bBT:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Lcom/kingroot/kinguser/bme;)Ljava/lang/ClassLoader;
    .locals 7

    .prologue
    .line 27
    iget v1, p0, Lcom/kingroot/kinguser/bme;->bBq:I

    .line 28
    sget-object v0, Lcom/kingroot/kinguser/bmj;->bBT:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 29
    if-nez v0, :cond_1

    .line 31
    sget-object v2, Lcom/kingroot/kinguser/bmj;->bBT:Landroid/util/SparseArray;

    monitor-enter v2

    .line 32
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bmj;->bBT:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 33
    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v3, p0, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bme;->vv:Ljava/lang/String;

    const/4 v5, 0x0

    const-class v6, Lcom/kingroot/kinguser/bmj;

    .line 37
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v0, v3, v4, v5, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 38
    sget-object v3, Lcom/kingroot/kinguser/bmj;->bBT:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static jM(I)V
    .locals 2

    .prologue
    .line 53
    sget-object v1, Lcom/kingroot/kinguser/bmj;->bBT:Landroid/util/SparseArray;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bmj;->bBT:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
