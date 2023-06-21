.class public final Lcom/kingroot/kinguser/bls;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bAl:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/blt$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bls;->bAl:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kingx/cloudsdk/d;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingx/cloudsdk/d;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kingx/cloudsdk/n;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 81
    new-instance v0, Lcom/kingroot/kinguser/bmz;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/bmz;-><init>(Z)V

    .line 82
    new-instance v2, Lcom/kingroot/kinguser/bmz;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/bmz;-><init>(Z)V

    .line 84
    invoke-static {v3, v0, v2}, Lcom/kingroot/kinguser/bls;->a(ILcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;)V

    .line 86
    invoke-static {v3}, Lcom/kingroot/kinguser/blr;->eo(Z)Lcom/kingx/cloudsdk/aa;

    move-result-object v3

    .line 90
    const-string v4, "fin"

    invoke-virtual {v0, v4, v3}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v3, "req"

    invoke-virtual {v0, v3, p1}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-static {p0, v0, v2, v1}, Lcom/kingroot/kinguser/blu;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return v0

    .line 98
    :cond_0
    new-instance v0, Lcom/kingx/cloudsdk/n;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/n;-><init>()V

    .line 99
    const-string v3, "resp"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/bmz;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 101
    check-cast v0, Lcom/kingx/cloudsdk/n;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 104
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/kingx/cloudsdk/q;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingx/cloudsdk/q;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kingx/cloudsdk/u;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 111
    new-instance v0, Lcom/kingroot/kinguser/bmz;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/bmz;-><init>(Z)V

    .line 112
    new-instance v2, Lcom/kingroot/kinguser/bmz;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/bmz;-><init>(Z)V

    .line 114
    invoke-static {v1, v0, v2}, Lcom/kingroot/kinguser/bls;->a(ILcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;)V

    .line 116
    invoke-static {v3}, Lcom/kingroot/kinguser/blr;->eo(Z)Lcom/kingx/cloudsdk/aa;

    move-result-object v3

    .line 118
    const-string v4, "fin"

    invoke-virtual {v0, v4, v3}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v3, "req"

    invoke-virtual {v0, v3, p1}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-static {p0, v0, v2, v1}, Lcom/kingroot/kinguser/blu;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return v0

    .line 126
    :cond_0
    new-instance v0, Lcom/kingx/cloudsdk/u;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/u;-><init>()V

    .line 127
    const-string v3, "resp"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/bmz;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 128
    goto :goto_0
.end method

.method private static a(ILcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;)V
    .locals 3

    .prologue
    .line 64
    invoke-static {p0}, Lcom/kingroot/kinguser/bls;->jK(I)Lcom/kingroot/kinguser/blt$a;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, v0, Lcom/kingroot/kinguser/blt$a;->bAn:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/kinguser/blt$a;->bAo:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Lcom/kingroot/kinguser/bmz;->mr(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/kingroot/kinguser/bmz;->Z(I)V

    invoke-virtual {p1, v1}, Lcom/kingroot/kinguser/bmz;->aG(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/bmz;->ms(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/bmz;->mr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static jK(I)Lcom/kingroot/kinguser/blt$a;
    .locals 6

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bls;->bAl:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 44
    sput-object v0, Lcom/kingroot/kinguser/bls;->bAl:Landroid/util/SparseArray;

    const/4 v2, 0x0

    new-instance v3, Lcom/kingroot/kinguser/blt$a;

    const/4 v4, 0x0

    const-string v5, "pluginreport|reportPluginData"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/kingroot/kinguser/bls;->bAl:Landroid/util/SparseArray;

    const/4 v2, 0x1

    new-instance v3, Lcom/kingroot/kinguser/blt$a;

    const/4 v4, 0x1

    const-string v5, "pluginv2|getPluginInfos"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bls;->bAl:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/blt$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
