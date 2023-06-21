.class public abstract Lcom/kingroot/kinguser/acq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/acq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Landroid/view/View;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static aaP:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/acq",
            "<*+",
            "Landroid/view/View;",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static aba:Lcom/kingroot/kinguser/wo;


# instance fields
.field private aaQ:Lcom/kingroot/kinguser/wo;

.field private aaR:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/kingroot/kinguser/acq",
            "<TR;TC;TD;>.a;>;"
        }
    .end annotation
.end field

.field private aaS:I

.field private aaT:Ljava/lang/Object;

.field private aaU:Z

.field private aaV:I

.field private aaW:Z

.field private aaX:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "TR;>;"
        }
    .end annotation
.end field

.field private aaY:Z

.field private aaZ:Ljava/lang/Exception;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/acq;->aaP:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/acq;->aba:Lcom/kingroot/kinguser/wo;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/kingroot/kinguser/acq;->aaQ:Lcom/kingroot/kinguser/wo;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/acq;->aaT:Ljava/lang/Object;

    .line 44
    iput-boolean v2, p0, Lcom/kingroot/kinguser/acq;->aaU:Z

    .line 50
    iput-boolean v2, p0, Lcom/kingroot/kinguser/acq;->aaY:Z

    .line 52
    iput-object v1, p0, Lcom/kingroot/kinguser/acq;->aaZ:Ljava/lang/Exception;

    .line 420
    new-instance v0, Lcom/kingroot/kinguser/acq$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/acq$4;-><init>(Lcom/kingroot/kinguser/acq;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/acq;->mHandler:Landroid/os/Handler;

    .line 89
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2, v2}, Lcom/kingroot/kinguser/acq;->b(IZI)V

    .line 90
    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v2, p0, Lcom/kingroot/kinguser/acq;->aaQ:Lcom/kingroot/kinguser/wo;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/acq;->aaT:Ljava/lang/Object;

    .line 44
    iput-boolean v1, p0, Lcom/kingroot/kinguser/acq;->aaU:Z

    .line 50
    iput-boolean v1, p0, Lcom/kingroot/kinguser/acq;->aaY:Z

    .line 52
    iput-object v2, p0, Lcom/kingroot/kinguser/acq;->aaZ:Ljava/lang/Exception;

    .line 420
    new-instance v0, Lcom/kingroot/kinguser/acq$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/acq$4;-><init>(Lcom/kingroot/kinguser/acq;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/acq;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/acq;->b(IZI)V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/acq;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kingroot/kinguser/acq;->aaZ:Ljava/lang/Exception;

    return-object p1
.end method

.method private a(Lcom/kingroot/kinguser/acq$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/acq",
            "<TR;TC;TD;>.a;)V"
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/kingroot/kinguser/acq;->sa()V

    .line 406
    :try_start_0
    iget v0, p1, Lcom/kingroot/kinguser/acq$a;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaR:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaR:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/acq;->aaS:I

    if-ne v0, v1, :cond_1

    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaR:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaR:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/acq;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/kingroot/kinguser/acq;->aaY:Z

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/acq;)Lcom/kingroot/kinguser/wo;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaQ:Lcom/kingroot/kinguser/wo;

    return-object v0
.end method

.method private b(IZI)V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/kingroot/kinguser/acq;->rZ()V

    .line 181
    iput-boolean p2, p0, Lcom/kingroot/kinguser/acq;->aaW:Z

    .line 182
    iput p3, p0, Lcom/kingroot/kinguser/acq;->aaV:I

    .line 183
    iget-boolean v0, p0, Lcom/kingroot/kinguser/acq;->aaW:Z

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lcom/kingroot/kinguser/acq$2;

    iget v1, p0, Lcom/kingroot/kinguser/acq;->aaV:I

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/acq$2;-><init>(Lcom/kingroot/kinguser/acq;I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/acq;->aaX:Landroid/support/v4/util/LruCache;

    .line 201
    :cond_0
    iput p1, p0, Lcom/kingroot/kinguser/acq;->aaS:I

    .line 202
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/acq;->aaR:Ljava/util/concurrent/BlockingQueue;

    .line 203
    invoke-direct {p0}, Lcom/kingroot/kinguser/acq;->sa()V

    .line 204
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/acq;)Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaZ:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/acq;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/acq;->sb()V

    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/acq;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/kingroot/kinguser/acq;->aaW:Z

    return v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/acq;)Landroid/support/v4/util/LruCache;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaX:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/acq;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/acq;->release()V

    return-void
.end method

.method private rZ()V
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/zj;->pt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/acq;->aba:Lcom/kingroot/kinguser/wo;

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Lcom/kingroot/kinguser/acq$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/acq$1;-><init>(Lcom/kingroot/kinguser/acq;)V

    sput-object v0, Lcom/kingroot/kinguser/acq;->aba:Lcom/kingroot/kinguser/wo;

    .line 174
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/acq;->aba:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wo;->ny()Z

    goto :goto_0
.end method

.method private release()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaX:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaX:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/acq;->aaX:Landroid/support/v4/util/LruCache;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sa()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaQ:Lcom/kingroot/kinguser/wo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaQ:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wo;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 333
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/acq$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/acq$3;-><init>(Lcom/kingroot/kinguser/acq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/acq;->aaQ:Lcom/kingroot/kinguser/wo;

    .line 339
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaQ:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wo;->ny()Z

    .line 341
    :cond_1
    return-void
.end method

.method private declared-synchronized sb()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 347
    monitor-enter p0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/acq;->aaT:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    :try_start_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/acq;->aaU:Z

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaT:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 351
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaR:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/acq$a;

    .line 356
    iget v1, v0, Lcom/kingroot/kinguser/acq$a;->mType:I

    if-ne v1, v3, :cond_2

    .line 357
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    monitor-exit p0

    return-void

    .line 351
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 374
    :catch_0
    move-exception v0

    goto :goto_0

    .line 362
    :cond_2
    :try_start_5
    iget-object v1, v0, Lcom/kingroot/kinguser/acq$a;->mInfo:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/acq;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/acq$a;->mData:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 368
    :goto_1
    :try_start_6
    iget-object v1, v0, Lcom/kingroot/kinguser/acq$a;->mData:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 369
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 370
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 371
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 347
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 363
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic sc()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/kingroot/kinguser/acq;->aaP:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TR;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TC;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/kingroot/kinguser/acq;->a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TC;",
            "Ljava/lang/Integer;",
            "TR;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 248
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 249
    iget-boolean v1, p0, Lcom/kingroot/kinguser/acq;->aaW:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 253
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/acq;->aaX:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 258
    :goto_0
    if-eqz v0, :cond_0

    .line 259
    :try_start_2
    invoke-virtual {p0, p2, v0}, Lcom/kingroot/kinguser/acq;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 277
    :goto_1
    return-void

    .line 264
    :cond_0
    if-eqz p4, :cond_1

    .line 265
    invoke-virtual {p0, p2, p4}, Lcom/kingroot/kinguser/acq;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 268
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/acq$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/acq$a;-><init>(Lcom/kingroot/kinguser/acq;Lcom/kingroot/kinguser/acq$1;)V

    .line 269
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/acq$a;->mType:I

    .line 270
    iput-object p2, v0, Lcom/kingroot/kinguser/acq$a;->abc:Landroid/view/View;

    .line 271
    iput-object p1, v0, Lcom/kingroot/kinguser/acq$a;->mInfo:Ljava/lang/Object;

    .line 272
    iput-object p3, v0, Lcom/kingroot/kinguser/acq$a;->abd:Ljava/lang/Integer;

    .line 273
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/acq;->a(Lcom/kingroot/kinguser/acq$a;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 274
    :catch_0
    move-exception v0

    goto :goto_1

    .line 254
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 314
    iput-boolean v2, p0, Lcom/kingroot/kinguser/acq;->aaY:Z

    .line 315
    new-instance v0, Lcom/kingroot/kinguser/acq$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/acq$a;-><init>(Lcom/kingroot/kinguser/acq;Lcom/kingroot/kinguser/acq$1;)V

    .line 316
    iput v2, v0, Lcom/kingroot/kinguser/acq$a;->mType:I

    .line 317
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/acq;->a(Lcom/kingroot/kinguser/acq$a;)V

    .line 318
    return-void
.end method

.method public abstract l(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TR;"
        }
    .end annotation
.end method

.method public abstract m(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)I"
        }
    .end annotation
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 384
    iget-object v1, p0, Lcom/kingroot/kinguser/acq;->aaT:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/acq;->aaU:Z

    .line 386
    monitor-exit v1

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/acq;->aaT:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/acq;->aaU:Z

    .line 396
    iget-object v0, p0, Lcom/kingroot/kinguser/acq;->aaT:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 397
    monitor-exit v1

    .line 401
    :goto_0
    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 398
    :catch_0
    move-exception v0

    goto :goto_0
.end method
