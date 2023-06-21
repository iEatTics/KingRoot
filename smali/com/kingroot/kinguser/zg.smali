.class public Lcom/kingroot/kinguser/zg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Wo:Ljava/lang/String;

.field private static Wp:Z

.field private static Wq:Z

.field private static Wr:I

.field private static Ws:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Wt:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/zg;->Wo:Ljava/lang/String;

    .line 36
    sput-boolean v1, Lcom/kingroot/kinguser/zg;->Wp:Z

    .line 38
    sput-boolean v1, Lcom/kingroot/kinguser/zg;->Wq:Z

    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/kingroot/kinguser/zg;->Wr:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/zg;->Ws:Ljava/util/List;

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WRITE_LOG_HANDLER"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/kingroot/kinguser/zg;->Wt:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 163
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zg;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p0}, Lcom/kingroot/kinguser/zg;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/zg;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-boolean v0, Lcom/kingroot/kinguser/zg;->Wp:Z

    if-eqz v0, :cond_1

    .line 134
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/zg;->dt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/kingroot/kinguser/zg;->ds(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/zg;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    return-void
.end method

.method public static d(ZI)V
    .locals 0

    .prologue
    .line 85
    sput-boolean p0, Lcom/kingroot/kinguser/zg;->Wq:Z

    .line 86
    sput p1, Lcom/kingroot/kinguser/zg;->Wr:I

    .line 87
    return-void
.end method

.method private static ds(Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 424
    sget-object v0, Lcom/kingroot/kinguser/zg;->Ws:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 434
    :goto_0
    return v0

    .line 428
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/zg;->Ws:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 434
    goto :goto_0
.end method

.method private static dt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    const-string v1, "k_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-static {}, Lcom/kingroot/kinguser/zg;->pp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs g([Ljava/lang/String;)V
    .locals 1
    .param p0    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    sget-object v0, Lcom/kingroot/kinguser/zg;->Ws:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    sget-object v0, Lcom/kingroot/kinguser/zg;->Ws:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    :cond_0
    if-eqz p0, :cond_1

    .line 65
    sget-object v0, Lcom/kingroot/kinguser/zg;->Ws:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 67
    :cond_1
    return-void
.end method

.method private static ih()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/kingroot/kinguser/zg;->Wq:Z

    return v0
.end method

.method private static pp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    sget-object v0, Lcom/kingroot/kinguser/zg;->Wo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lcom/kingroot/kinguser/zg;->Wo:Ljava/lang/String;

    .line 447
    :goto_0
    return-object v0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ptag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/kingroot/kinguser/zg;->Wr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/zg;->Wo:Ljava/lang/String;

    .line 447
    sget-object v0, Lcom/kingroot/kinguser/zg;->Wo:Ljava/lang/String;

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/zg;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "k_"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method
