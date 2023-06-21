.class public final Lcom/kingroot/kinguser/ih;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final rW:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static rX:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static rY:Ljava/util/concurrent/CountDownLatch;

.field private static rZ:Lcom/kingroot/kinguser/if;

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ih;->rW:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kingroot/kinguser/ih;->rX:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/ih;->rY:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/kingroot/kinguser/ih;->rW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized a(Lcom/kingroot/kinguser/if;)V
    .locals 4

    .prologue
    .line 109
    const-class v1, Lcom/kingroot/kinguser/ih;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/if;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 113
    :cond_1
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/ih;->rX:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-static {p0}, Lcom/kingroot/kinguser/ih;->b(Lcom/kingroot/kinguser/if;)V

    .line 118
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bX()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :cond_2
    monitor-exit v1

    return-void
.end method

.method private static a(Lcom/kingroot/kinguser/if;Lcom/kingroot/kinguser/lp;)V
    .locals 3

    .prologue
    .line 220
    invoke-static {}, Lcom/kingroot/kinguser/hb;->aQ()Lcom/kingroot/kinguser/hb;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/kingroot/kinguser/kw;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/if;->bM()Lcom/kingroot/kinguser/hp;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/kw;-><init>(Lcom/kingroot/kinguser/hp;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/hb;->a(Lcom/kingroot/kinguser/ib;)V

    .line 222
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/hb;->a(Lcom/kingroot/kinguser/lp;)V

    .line 225
    invoke-static {}, Lcom/king/uranus/bI;->dg()Lcom/king/uranus/bI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/king/uranus/bI;->a(Lcom/kingroot/kinguser/lo;)V

    .line 226
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/kingroot/kinguser/ih;->rW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method private static b(Lcom/kingroot/kinguser/if;)V
    .locals 4

    .prologue
    .line 127
    sput-object p0, Lcom/kingroot/kinguser/ih;->rZ:Lcom/kingroot/kinguser/if;

    .line 128
    invoke-virtual {p0}, Lcom/kingroot/kinguser/if;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ih;->sContext:Landroid/content/Context;

    .line 131
    invoke-static {}, Lcom/kingroot/kinguser/nc;->eX()Lcom/kingroot/kinguser/nc;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v1

    .line 134
    invoke-static {}, Lcom/kingroot/kinguser/mz;->eS()Lcom/kingroot/kinguser/mz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/mz;->a(Lcom/kingroot/kinguser/lp;)V

    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/na;->eT()Lcom/kingroot/kinguser/na;

    move-result-object v2

    sget-object v3, Lcom/kingroot/kinguser/ih;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/na;->a(Landroid/content/Context;Lcom/kingroot/kinguser/lp;)V

    .line 138
    invoke-static {}, Lcom/kingroot/kinguser/lq;->dW()Lcom/kingroot/kinguser/lq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/lq;->a(Lcom/kingroot/kinguser/lp;)V

    .line 139
    invoke-static {}, Lcom/kingroot/kinguser/lt;->eg()Lcom/kingroot/kinguser/lt;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/lu;->ej()Lcom/kingroot/kinguser/lu;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kingroot/kinguser/if;->bG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/lt;->a(Lcom/kingroot/kinguser/ln;Ljava/lang/String;)V

    .line 142
    const-class v0, Lcom/kingroot/kinguser/hq;

    invoke-static {}, Lcom/kingroot/kinguser/kn;->db()Lcom/kingroot/kinguser/kn;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 143
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {}, Lcom/kingroot/kinguser/lw;->el()Lcom/kingroot/kinguser/lw;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 144
    const-class v0, Lcom/kingroot/kinguser/js;

    invoke-static {}, Lcom/kingroot/kinguser/ju;->cK()Lcom/kingroot/kinguser/ju;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 145
    const-class v0, Lcom/kingroot/kinguser/hm;

    invoke-static {}, Lcom/kingroot/kinguser/la;->dp()Lcom/kingroot/kinguser/la;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 146
    const-class v0, Lcom/kingroot/kinguser/ln;

    invoke-static {}, Lcom/kingroot/kinguser/lu;->ej()Lcom/kingroot/kinguser/lu;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 147
    const-class v0, Lcom/kingroot/kinguser/mt;

    invoke-static {}, Lcom/kingroot/kinguser/na;->eT()Lcom/kingroot/kinguser/na;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 148
    const-class v0, Lcom/kingroot/kinguser/hf;

    invoke-static {}, Lcom/kingroot/kinguser/lq;->dW()Lcom/kingroot/kinguser/lq;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 149
    const-class v0, Lcom/kingroot/kinguser/hn;

    invoke-static {}, Lcom/kingroot/kinguser/jl;->cA()Lcom/kingroot/kinguser/jl;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 150
    const-class v0, Lcom/kingroot/kinguser/lm;

    invoke-static {}, Lcom/kingroot/kinguser/lv;->ek()Lcom/kingroot/kinguser/lv;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 151
    const-class v0, Lcom/kingroot/kinguser/hf;

    invoke-static {}, Lcom/kingroot/kinguser/lq;->dW()Lcom/kingroot/kinguser/lq;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 158
    invoke-static {}, Lcom/king/uranus/bI;->dg()Lcom/king/uranus/bI;

    move-result-object v0

    .line 159
    sget-object v2, Lcom/kingroot/kinguser/ih;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/king/uranus/bI;->u(Landroid/content/Context;)V

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/king/uranus/bI;->a(Lcom/kingroot/kinguser/lo;)V

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/na;->eT()Lcom/kingroot/kinguser/na;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/king/uranus/bI;->a(Lcom/kingroot/kinguser/lo;)V

    .line 167
    invoke-static {v1}, Lcom/kingroot/kinguser/ih;->b(Lcom/kingroot/kinguser/lp;)V

    .line 169
    invoke-static {p0, v1}, Lcom/kingroot/kinguser/ih;->a(Lcom/kingroot/kinguser/if;Lcom/kingroot/kinguser/lp;)V

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/lw;->el()Lcom/kingroot/kinguser/lw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/if;->bR()Lcom/kingroot/kinguser/hj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/lw;->b(Lcom/kingroot/kinguser/hj;)V

    .line 173
    return-void
.end method

.method private static b(Lcom/kingroot/kinguser/lp;)V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/jm;->cB()Lcom/kingroot/kinguser/jm;

    move-result-object v0

    .line 213
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/jm;->a(Lcom/kingroot/kinguser/lp;)V

    .line 216
    invoke-static {}, Lcom/king/uranus/bI;->dg()Lcom/king/uranus/bI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/king/uranus/bI;->a(Lcom/kingroot/kinguser/lo;)V

    .line 217
    return-void
.end method

.method public static bW()Lcom/kingroot/kinguser/if;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/kingroot/kinguser/ih;->rZ:Lcom/kingroot/kinguser/if;

    return-object v0
.end method

.method private static bX()V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lcom/kingroot/kinguser/no;->fl()Lcom/kingroot/kinguser/no;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/ii;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ii;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/no;->a(Lcom/kingroot/kinguser/nj;)V

    .line 197
    return-void
.end method

.method public static bY()V
    .locals 4

    .prologue
    .line 205
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ih;->rY:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method static synthetic bZ()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/kinguser/ih;->rY:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/kingroot/kinguser/ih;->sContext:Landroid/content/Context;

    return-object v0
.end method
