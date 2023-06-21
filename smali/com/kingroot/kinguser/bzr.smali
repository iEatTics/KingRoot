.class public Lcom/kingroot/kinguser/bzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bzr$a;,
        Lcom/kingroot/kinguser/bzr$b;
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

.field private volatile bVQ:Lcom/kingroot/kinguser/bzr$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/bzr;->MO:Ljava/util/List;

    .line 28
    sput v2, Lcom/kingroot/kinguser/bzr;->MR:I

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/bzr;->MS:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzr;->MQ:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bzr;Lcom/kingroot/kinguser/bzr$b;)Lcom/kingroot/kinguser/bzr$b;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bzr;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bzr;->MQ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bzr;)Lcom/kingroot/kinguser/bzr$b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    return-object v0
.end method

.method static synthetic bF(I)I
    .locals 0

    .prologue
    .line 20
    sput p0, Lcom/kingroot/kinguser/bzr;->MR:I

    return p0
.end method

.method static synthetic nC()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/kingroot/kinguser/bzr;->MS:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic nD()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/kingroot/kinguser/bzr;->MR:I

    return v0
.end method

.method static synthetic nE()Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/kingroot/kinguser/bzr;->MO:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public X(Z)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0, v1, p1}, Lcom/kingroot/kinguser/bzr;->b(Ljava/lang/String;ILjava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/kingroot/kinguser/bzr$a;)V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bzr;->run()V

    .line 187
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
    const/4 v1, 0x1

    .line 123
    const/4 v0, 0x0

    .line 124
    iget-object v2, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    if-nez v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/kingroot/kinguser/bzr;->MQ:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    if-nez v3, :cond_2

    .line 127
    new-instance v3, Lcom/kingroot/kinguser/bzs;

    invoke-direct {v3, p0, p3, p4}, Lcom/kingroot/kinguser/bzs;-><init>(Lcom/kingroot/kinguser/bzr;Ljava/util/List;Z)V

    iput-object v3, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    .line 156
    iget-object v3, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    if-nez p1, :cond_0

    const-string p1, "SingleThread"

    :cond_0
    invoke-virtual {v3, p1}, Lcom/kingroot/kinguser/bzr$b;->setName(Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    invoke-virtual {v3, p2}, Lcom/kingroot/kinguser/bzr$b;->setPriority(I)V

    .line 158
    iget-object v3, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/bzr$b;->setDaemon(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :try_start_1
    iget-object v3, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bzr$b;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :try_start_2
    iget-object v3, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    if-eqz v3, :cond_2

    .line 169
    if-eqz p4, :cond_1

    .line 170
    sget-object v0, Lcom/kingroot/kinguser/bzr;->MO:Ljava/util/List;

    iget-object v3, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v1

    .line 176
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    :cond_3
    return v0

    .line 164
    :catch_0
    move-exception v3

    .line 165
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    :try_start_4
    iget-object v3, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    if-eqz v3, :cond_2

    .line 169
    if-eqz p4, :cond_4

    .line 170
    sget-object v0, Lcom/kingroot/kinguser/bzr;->MO:Ljava/util/List;

    iget-object v3, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v0, v1

    .line 172
    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    if-eqz v1, :cond_5

    .line 169
    if-eqz p4, :cond_5

    .line 170
    sget-object v1, Lcom/kingroot/kinguser/bzr;->MO:Ljava/util/List;

    iget-object v3, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_5
    throw v0

    .line 176
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public nA()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    if-eqz v0, :cond_1

    .line 200
    iget-object v1, p0, Lcom/kingroot/kinguser/bzr;->MQ:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    .line 203
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/bzr;->bVQ:Lcom/kingroot/kinguser/bzr$b;

    .line 204
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 206
    :cond_0
    monitor-exit v1

    .line 208
    :cond_1
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ny()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/kingroot/kinguser/bzr;->b(Ljava/lang/String;ILjava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
