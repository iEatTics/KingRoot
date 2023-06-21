.class public final Lcom/kingroot/kinguser/jk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private tb:I

.field private tc:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/kingroot/kinguser/kt;->dj()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/jk;->tb:I

    .line 25
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/jk;->tc:I

    .line 26
    return-void
.end method

.method private a(IILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/kingroot/kinguser/jk;->tb:I

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/jk;->tc:I

    if-eq p1, v0, :cond_0

    .line 107
    invoke-static {p1}, Lcom/kingroot/kinguser/kt;->ac(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cy()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/kt;->di()Ljava/util/List;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 56
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/kingroot/kinguser/jk;->a(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_1
    return-object v1
.end method

.method private cz()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/la;->dp()Lcom/kingroot/kinguser/la;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/la;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;

    .line 82
    invoke-virtual {v0}, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->getUid()I

    move-result v3

    invoke-virtual {v0}, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->getPid()I

    move-result v4

    invoke-virtual {v0}, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->fn()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/kingroot/kinguser/jk;->a(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->getPid()I

    move-result v3

    invoke-virtual {v0}, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->fn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_1
    return-object v1
.end method


# virtual methods
.method public cx()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/mf;->ev()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/jk;->cy()Landroid/util/SparseArray;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/jk;->cz()Landroid/util/SparseArray;

    move-result-object v0

    goto :goto_0
.end method
