.class public Lcom/kingroot/kinguser/ase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aMt:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/asc;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ase;->aMt:Landroid/util/SparseArray;

    .line 63
    sget-object v0, Lcom/kingroot/kinguser/ase;->aMt:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-class v2, Lcom/kingroot/kinguser/asa;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/kingroot/kinguser/ase;->aMt:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-class v2, Lcom/kingroot/kinguser/arx;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/kingroot/kinguser/ase;->aMt:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-class v2, Lcom/kingroot/kinguser/arz;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/kingroot/kinguser/ase;->aMt:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-class v2, Lcom/kingroot/kinguser/ary;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/kingroot/kinguser/ase;->aMt:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-class v2, Lcom/kingroot/kinguser/asb;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/kingroot/kinguser/ase;->aMt:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-class v2, Lcom/kingroot/kinguser/arw;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static gt(I)Lcom/kingroot/kinguser/asc;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/kingroot/kinguser/ase;->aMt:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 74
    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
