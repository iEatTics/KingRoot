.class public Lcom/kingroot/kinguser/bmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bmq$a;,
        Lcom/kingroot/kinguser/bmq$b;
    }
.end annotation


# static fields
.field private static bCh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static bCk:I

.field private static bCl:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private volatile bCi:Lcom/kingroot/kinguser/bmq$b;

.field private final bCj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/bmq;->bCh:Ljava/util/List;

    .line 27
    sput v2, Lcom/kingroot/kinguser/bmq;->bCk:I

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/bmq;->bCl:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bmq;->bCj:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bmq;Lcom/kingroot/kinguser/bmq$b;)Lcom/kingroot/kinguser/bmq$b;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bmq;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq;->bCj:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;ILjava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 122
    .line 123
    iget-object v2, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    if-nez v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/kingroot/kinguser/bmq;->bCj:Ljava/lang/Object;

    monitor-enter v2

    .line 125
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    if-nez v3, :cond_0

    .line 126
    new-instance v3, Lcom/kingroot/kinguser/bmq$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/kingroot/kinguser/bmq$1;-><init>(Lcom/kingroot/kinguser/bmq;Ljava/util/List;Z)V

    iput-object v3, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    .line 155
    iget-object v3, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    const-string v4, "SingleThread"

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/bmq$b;->setName(Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/bmq$b;->setPriority(I)V

    .line 157
    iget-object v3, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/bmq$b;->setDaemon(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    iget-object v3, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bmq$b;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :try_start_2
    iget-object v3, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    if-eqz v3, :cond_0

    move v0, v1

    .line 175
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    :cond_1
    return v0

    .line 164
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    :try_start_4
    iget-object v3, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    if-eqz v3, :cond_0

    move v0, v1

    .line 168
    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    .line 168
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic afW()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kingroot/kinguser/bmq;->bCl:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic afX()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/kingroot/kinguser/bmq;->bCk:I

    return v0
.end method

.method static synthetic afY()Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kingroot/kinguser/bmq;->bCh:Ljava/util/List;

    return-object v0
.end method

.method static synthetic ai(I)I
    .locals 0

    .prologue
    .line 19
    sput p0, Lcom/kingroot/kinguser/bmq;->bCk:I

    return p0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bmq;)Lcom/kingroot/kinguser/bmq$b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq;->bCi:Lcom/kingroot/kinguser/bmq$b;

    return-object v0
.end method


# virtual methods
.method public final afV()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bmq;->run()V

    .line 186
    return-void
.end method

.method public final co()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Lcom/kingroot/kinguser/bmq;->a(Ljava/lang/String;ILjava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method
