.class public Lcom/kingroot/kinguser/bwy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bRb:Lcom/kingroot/kinguser/bzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/bzc",
            "<",
            "Lcom/kingroot/kinguser/bwy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bST:Z

.field private bSU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/kingroot/kinguser/bwy$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bwy$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bwy;->bRb:Lcom/kingroot/kinguser/bzc;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bwy;->bST:Z

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bwy;->bSU:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bwy;II)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bwy;->ax(II)V

    return-void
.end method

.method public static aji()Lcom/kingroot/kinguser/bwy;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/kingroot/kinguser/bwy;->bRb:Lcom/kingroot/kinguser/bzc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bwy;

    return-object v0
.end method

.method private ax(II)V
    .locals 5

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    const-string v1, "com.tencent.turingmm.msg105008"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bnk;->c([B[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/bzd;->B([B)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v3, "t"

    const-string v4, "c"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v3, "m"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/kingroot/kinguser/bwy;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    return-void
.end method


# virtual methods
.method public ajj()Lcom/kingroot/kinguser/byh;
    .locals 6

    .prologue
    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/bwx;->aje()Lcom/kingroot/kinguser/bwx;

    move-result-object v1

    .line 107
    new-instance v2, Lcom/kingroot/kinguser/byh;

    invoke-direct {v2}, Lcom/kingroot/kinguser/byh;-><init>()V

    .line 108
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bwx;->ajf()I

    move-result v0

    iput v0, v2, Lcom/kingroot/kinguser/byh;->bTT:I

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bwx;->ajg()Ljava/util/Map;

    move-result-object v4

    .line 114
    monitor-enter v4

    .line 115
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bxb;

    .line 116
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bxb;->ajl()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    iput-object v3, v2, Lcom/kingroot/kinguser/byh;->bTU:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bwx;->gK()V

    .line 124
    return-object v2
.end method

.method public b(Landroid/content/Context;ILandroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 86
    :goto_0
    return v0

    .line 68
    :cond_0
    iget-boolean v1, p0, Lcom/kingroot/kinguser/bwy;->bST:Z

    if-nez v1, :cond_1

    .line 69
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bwy;->init(Landroid/content/Context;)V

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/bwy;->bST:Z

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bwy;->mAppContext:Landroid/content/Context;

    .line 75
    new-instance v1, Lcom/kingroot/kinguser/bxc;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bxc;-><init>()V

    new-instance v2, Lcom/kingroot/kinguser/bwy$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/bwy$2;-><init>(Lcom/kingroot/kinguser/bwy;)V

    invoke-virtual {v1, p3, v2, p2}, Lcom/kingroot/kinguser/bxc;->a(Landroid/view/View;Lcom/kingroot/kinguser/bxc$a;I)Z

    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    invoke-direct {p0, p2, v0}, Lcom/kingroot/kinguser/bwy;->ax(II)V

    :cond_2
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bwy;->bSU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/bwy;->bSU:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    new-instance v0, Lcom/kingroot/kinguser/bwz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bwz;-><init>()V

    .line 56
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    const-string v2, "com.tencent.turingmm.msg105008"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
