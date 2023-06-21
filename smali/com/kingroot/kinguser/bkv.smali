.class public Lcom/kingroot/kinguser/bkv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bkv$a;,
        Lcom/kingroot/kinguser/bkv$b;
    }
.end annotation


# static fields
.field private static MO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static MR:I

.field private static MS:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final MQ:Ljava/lang/Object;

.field private volatile bzn:Lcom/kingroot/kinguser/bkv$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/bkv;->MO:Ljava/util/List;

    .line 27
    sput v2, Lcom/kingroot/kinguser/bkv;->MR:I

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/bkv;->MS:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bkv;->MQ:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bkv;Lcom/kingroot/kinguser/bkv$b;)Lcom/kingroot/kinguser/bkv$b;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bkv;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv;->MQ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bkv;)Lcom/kingroot/kinguser/bkv$b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    return-object v0
.end method

.method static synthetic bF(I)I
    .locals 0

    .prologue
    .line 19
    sput p0, Lcom/kingroot/kinguser/bkv;->MR:I

    return p0
.end method

.method static synthetic nC()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kingroot/kinguser/bkv;->MS:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic nD()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/kingroot/kinguser/bkv;->MR:I

    return v0
.end method

.method static synthetic nE()Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kingroot/kinguser/bkv;->MO:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bkv$a;)V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkv;->run()V

    .line 185
    return-void
.end method

.method public b(Ljava/lang/String;ILjava/util/List;Z)Z
    .locals 5
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
    const/4 v2, 0x1

    .line 121
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    if-nez v1, :cond_3

    .line 123
    iget-object v3, p0, Lcom/kingroot/kinguser/bkv;->MQ:Ljava/lang/Object;

    monitor-enter v3

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    if-nez v1, :cond_2

    .line 125
    new-instance v1, Lcom/kingroot/kinguser/bkv$1;

    invoke-direct {v1, p0, p3, p4}, Lcom/kingroot/kinguser/bkv$1;-><init>(Lcom/kingroot/kinguser/bkv;Ljava/util/List;Z)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    .line 154
    iget-object v1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    if-nez p1, :cond_0

    const-string p1, "SingleThread"

    :cond_0
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/bkv$b;->setName(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    invoke-virtual {v1, p2}, Lcom/kingroot/kinguser/bkv$b;->setPriority(I)V

    .line 156
    iget-object v1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/bkv$b;->setDaemon(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bkv$b;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    if-eqz v1, :cond_2

    .line 167
    if-eqz p4, :cond_1

    .line 168
    sget-object v0, Lcom/kingroot/kinguser/bkv;->MO:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v2

    .line 174
    :cond_2
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 176
    :cond_3
    return v0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    .line 164
    invoke-static {v1}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    :try_start_4
    iget-object v1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    if-eqz v1, :cond_2

    .line 167
    if-eqz p4, :cond_4

    .line 168
    sget-object v0, Lcom/kingroot/kinguser/bkv;->MO:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v0, v2

    .line 170
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    if-eqz v1, :cond_5

    .line 167
    if-eqz p4, :cond_5

    .line 168
    sget-object v1, Lcom/kingroot/kinguser/bkv;->MO:Ljava/util/List;

    iget-object v2, p0, Lcom/kingroot/kinguser/bkv;->bzn:Lcom/kingroot/kinguser/bkv$b;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_5
    throw v0

    .line 174
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public ny()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/kingroot/kinguser/bkv;->b(Ljava/lang/String;ILjava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method
