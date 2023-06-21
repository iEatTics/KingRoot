.class public Lcom/kingroot/kinguser/bkf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bzf:Lcom/kingroot/kinguser/bkf;


# instance fields
.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bkf;->bzf:Lcom/kingroot/kinguser/bkf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bkf;->b:Landroid/util/SparseArray;

    return-void
.end method

.method public static aeJ()Lcom/kingroot/kinguser/bkf;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/bkf;->bzf:Lcom/kingroot/kinguser/bkf;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/kingroot/kinguser/bkf;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bkf;->bzf:Lcom/kingroot/kinguser/bkf;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/kingroot/kinguser/bkf;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bkf;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bkf;->bzf:Lcom/kingroot/kinguser/bkf;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bkf;->bzf:Lcom/kingroot/kinguser/bkf;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public jA(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 13
    iget-object v1, p0, Lcom/kingroot/kinguser/bkf;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bkf;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/kingroot/kinguser/bkf;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    :cond_0
    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
