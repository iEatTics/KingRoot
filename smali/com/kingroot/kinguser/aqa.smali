.class public Lcom/kingroot/kinguser/aqa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aqa$b;,
        Lcom/kingroot/kinguser/aqa$a;
    }
.end annotation


# instance fields
.field private aKL:Lcom/kingroot/kinguser/apz;

.field private volatile aKM:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/kingroot/kinguser/aqa$b;",
            ">;"
        }
    .end annotation
.end field

.field private aKN:Ljava/util/concurrent/atomic/AtomicLong;

.field private aKO:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/aqa$a;",
            ">;"
        }
    .end annotation
.end field

.field private aKP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final aKQ:Lcom/kingroot/kinguser/aqf;

.field private mHandler:Landroid/os/Handler;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;ZLcom/kingroot/kinguser/apz$b;)V
    .locals 6

    .prologue
    .line 161
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/aqa;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;ZZLcom/kingroot/kinguser/apz$b;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;ZZLcom/kingroot/kinguser/apz$b;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKM:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKN:Ljava/util/concurrent/atomic/AtomicLong;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Lcom/kingroot/kinguser/aqa$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aqa$1;-><init>(Lcom/kingroot/kinguser/aqa;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKQ:Lcom/kingroot/kinguser/aqf;

    .line 149
    new-instance v0, Lcom/kingroot/kinguser/aqa$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/aqa$2;-><init>(Lcom/kingroot/kinguser/aqa;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqa;->mHandler:Landroid/os/Handler;

    .line 165
    iput-object p1, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 167
    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 169
    new-instance v0, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    invoke-direct {v0, p2}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 170
    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 171
    new-instance v0, Lcom/kingroot/kinguser/apz;

    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->aKQ:Lcom/kingroot/kinguser/aqf;

    invoke-direct {v0, v1, p5}, Lcom/kingroot/kinguser/apz;-><init>(Lcom/kingroot/kinguser/aqf;Lcom/kingroot/kinguser/apz$b;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-static {}, Lcom/kingroot/kinguser/aqd;->MA()Ljava/util/List;

    move-result-object v1

    .line 174
    if-eqz p4, :cond_0

    .line 175
    invoke-static {}, Lcom/kingroot/kinguser/aqc;->Mz()Lcom/kingroot/kinguser/aqc;

    move-result-object v2

    .line 176
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    if-eqz p3, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apz;->aZ(Ljava/util/List;)V

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apz;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 184
    sget-object v0, Lcom/kingroot/kinguser/apz$b;->aKw:Lcom/kingroot/kinguser/apz$b;

    if-ne p5, v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apz;->Mq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 186
    iget-object v2, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v2, v2, Lcom/kingroot/kinguser/aqj;

    if-eqz v2, :cond_1

    .line 187
    iget-object v0, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    check-cast v0, Lcom/kingroot/kinguser/aqj;

    .line 188
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqj;->vs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqj;->MQ()V

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/apz;->cG(Z)V

    .line 191
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x188db

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 179
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :cond_3
    return-void
.end method

.method private Ms()Lcom/kingroot/kinguser/aqa$a;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKO:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKO:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqa$a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Mu()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKM:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqa$b;

    .line 290
    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 296
    iget-object v1, v0, Lcom/kingroot/kinguser/aqa$b;->aKS:Lcom/kingroot/kinguser/aqc;

    if-eqz v1, :cond_2

    iget-wide v4, v0, Lcom/kingroot/kinguser/aqa$b;->aKT:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKM:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 299
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKP:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 300
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqa;->Ms()Lcom/kingroot/kinguser/aqa$a;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0}, Lcom/kingroot/kinguser/aqa$a;->Mx()V

    goto :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->aKN:Ljava/util/concurrent/atomic/AtomicLong;

    .line 306
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 305
    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->aKP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 315
    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->aKN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_9

    .line 317
    iget-object v1, v0, Lcom/kingroot/kinguser/aqa$b;->aKS:Lcom/kingroot/kinguser/aqc;

    .line 318
    iget v2, v1, Lcom/kingroot/kinguser/aqc;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 319
    iget-object v2, v1, Lcom/kingroot/kinguser/aqc;->aKY:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/aqd;->a(Ljava/lang/String;Lcom/kingroot/kinguser/aqc;)V

    .line 320
    iget-object v2, p0, Lcom/kingroot/kinguser/aqa;->aKM:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 321
    iget-object v2, p0, Lcom/kingroot/kinguser/aqa;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    invoke-static {v0}, Lcom/kingroot/kinguser/aqa$b;->a(Lcom/kingroot/kinguser/aqa$b;)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/kingroot/kinguser/aqa;->b(ILcom/kingroot/kinguser/aqc;)V

    .line 323
    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->aKN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/kingroot/kinguser/aqa$b;->aKT:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 326
    :cond_5
    iget v2, v1, Lcom/kingroot/kinguser/aqc;->type:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    .line 328
    iget v2, v0, Lcom/kingroot/kinguser/aqa$b;->aKU:I

    if-lez v2, :cond_6

    .line 329
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqa;->Ms()Lcom/kingroot/kinguser/aqa$a;

    move-result-object v2

    .line 330
    if-eqz v2, :cond_6

    .line 331
    iget v3, v0, Lcom/kingroot/kinguser/aqa$b;->aKU:I

    invoke-interface {v2, v3}, Lcom/kingroot/kinguser/aqa$a;->gn(I)V

    .line 335
    :cond_6
    invoke-static {v0}, Lcom/kingroot/kinguser/aqa$b;->a(Lcom/kingroot/kinguser/aqa$b;)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/kingroot/kinguser/aqa;->b(ILcom/kingroot/kinguser/aqc;)V

    .line 338
    :cond_7
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqa;->Ms()Lcom/kingroot/kinguser/aqa$a;

    move-result-object v2

    .line 339
    if-eqz v2, :cond_8

    .line 340
    invoke-static {v0}, Lcom/kingroot/kinguser/aqa$b;->a(Lcom/kingroot/kinguser/aqa$b;)I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/kingroot/kinguser/aqa$a;->c(ILcom/kingroot/kinguser/aqc;)V

    .line 344
    :cond_8
    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->aKM:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 345
    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->aKN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/kingroot/kinguser/aqa$b;->aKT:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 346
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 349
    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingroot/kinguser/aqa;->aKN:Ljava/util/concurrent/atomic/AtomicLong;

    .line 350
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 349
    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aqa;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKP:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aqa;)Lcom/kingroot/kinguser/apz;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    return-object v0
.end method

.method private b(ILcom/kingroot/kinguser/aqc;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apz;->Mq()Ljava/util/List;

    move-result-object v3

    .line 356
    iget v0, p2, Lcom/kingroot/kinguser/aqc;->type:I

    if-ne v4, v0, :cond_3

    .line 357
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 358
    invoke-interface {v3, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/apz;->aZ(Ljava/util/List;)V

    .line 360
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apz;->notifyItemInserted(I)V

    .line 361
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 366
    invoke-static {v0, p2}, Lcom/kingroot/kinguser/aqc;->a(Lcom/kingroot/kinguser/aqc;Lcom/kingroot/kinguser/aqc;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/aqc;->e(Lcom/kingroot/kinguser/aqc;)V

    .line 368
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apz;->notifyItemChanged(I)V

    goto :goto_0

    .line 370
    :cond_2
    invoke-interface {v3, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/apz;->aZ(Ljava/util/List;)V

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apz;->notifyItemInserted(I)V

    .line 373
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 375
    :cond_3
    iget v0, p2, Lcom/kingroot/kinguser/aqc;->type:I

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    iget v2, p2, Lcom/kingroot/kinguser/aqc;->type:I

    if-eq v0, v2, :cond_4

    const/4 v0, 0x6

    iget v2, p2, Lcom/kingroot/kinguser/aqc;->type:I

    if-ne v0, v2, :cond_a

    .line 378
    :cond_4
    iget-object v0, p2, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v0, v0, Lcom/kingroot/kinguser/aqq;

    if-eqz v0, :cond_6

    .line 380
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x187d6

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 396
    :cond_5
    :goto_1
    invoke-interface {v3, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/apz;->aZ(Ljava/util/List;)V

    .line 398
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apz;->notifyItemInserted(I)V

    .line 399
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 381
    :cond_6
    iget-object v0, p2, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v0, v0, Lcom/kingroot/kinguser/aqp;

    if-eqz v0, :cond_7

    .line 383
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x187d8

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 384
    :cond_7
    iget-object v0, p2, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v0, v0, Lcom/kingroot/kinguser/aqn;

    if-eqz v0, :cond_8

    .line 386
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x187da

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 387
    :cond_8
    iget-object v0, p2, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v0, v0, Lcom/kingroot/kinguser/aqi;

    if-eqz v0, :cond_9

    .line 389
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x187ff

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 390
    :cond_9
    iget-object v0, p2, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v0, v0, Lcom/kingroot/kinguser/aqm;

    if-eqz v0, :cond_5

    .line 392
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x18918

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 400
    :cond_a
    const/4 v0, 0x2

    iget v2, p2, Lcom/kingroot/kinguser/aqc;->type:I

    if-ne v0, v2, :cond_0

    .line 401
    invoke-static {v3}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    const/4 v2, -0x1

    .line 403
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 404
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    iget v0, v0, Lcom/kingroot/kinguser/aqc;->type:I

    if-ne v0, v4, :cond_b

    .line 409
    :goto_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/kingroot/kinguser/aqa;->a(ILcom/kingroot/kinguser/aqc;I)V

    goto/16 :goto_0

    .line 403
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_c
    move v1, v2

    goto :goto_3
.end method

.method static synthetic c(Lcom/kingroot/kinguser/aqa;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/aqa;)Lcom/kingroot/kinguser/aqa$a;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqa;->Ms()Lcom/kingroot/kinguser/aqa$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/aqa;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqa;->Mu()V

    return-void
.end method


# virtual methods
.method public final Mt()V
    .locals 4

    .prologue
    .line 231
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/aqa;->a(ILcom/kingroot/kinguser/aqc;J)V

    .line 232
    return-void
.end method

.method public Mv()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apz;->Mq()Ljava/util/List;

    move-result-object v6

    .line 415
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    const/4 v4, 0x0

    move v1, v2

    .line 421
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 422
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 423
    iget v7, v0, Lcom/kingroot/kinguser/aqc;->type:I

    if-ne v7, v3, :cond_3

    move-object v4, v0

    .line 430
    :goto_2
    if-eq v1, v5, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apz$c;

    .line 433
    invoke-static {}, Lcom/kingroot/kinguser/aqd;->MC()Ljava/util/HashMap;

    move-result-object v1

    .line 434
    iget-object v5, v4, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 435
    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 436
    invoke-virtual {v0, v4, v1}, Lcom/kingroot/kinguser/apz$c;->a(Lcom/kingroot/kinguser/aqc;Ljava/util/List;)V

    .line 437
    iget-boolean v0, v4, Lcom/kingroot/kinguser/aqc;->akd:Z

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, v4, Lcom/kingroot/kinguser/aqc;->akd:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    goto :goto_0

    .line 421
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_2
.end method

.method public Mw()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public final a(ILcom/kingroot/kinguser/aqc;)V
    .locals 7

    .prologue
    .line 235
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/aqa;->a(ILcom/kingroot/kinguser/aqc;JI)V

    .line 236
    return-void
.end method

.method public a(ILcom/kingroot/kinguser/aqc;I)V
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apz$c;

    .line 464
    invoke-static {}, Lcom/kingroot/kinguser/aqd;->MC()Ljava/util/HashMap;

    move-result-object v1

    .line 465
    iget-object v2, p2, Lcom/kingroot/kinguser/aqc;->aKY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 466
    if-eqz v0, :cond_0

    .line 467
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/kingroot/kinguser/apz$c;->a(ILjava/util/List;Z)V

    .line 469
    :cond_0
    return-void
.end method

.method public final a(ILcom/kingroot/kinguser/aqc;J)V
    .locals 7

    .prologue
    .line 239
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/aqa;->a(ILcom/kingroot/kinguser/aqc;JI)V

    .line 240
    return-void
.end method

.method public a(ILcom/kingroot/kinguser/aqc;JI)V
    .locals 3
    .param p2    # Lcom/kingroot/kinguser/aqc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKM:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/kingroot/kinguser/aqa$b;->b(ILcom/kingroot/kinguser/aqc;JI)Lcom/kingroot/kinguser/aqa$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 473
    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 451
    :cond_0
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/aqa$a;)V
    .locals 1

    .prologue
    .line 227
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKO:Ljava/lang/ref/WeakReference;

    .line 228
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 477
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/aqc;)V
    .locals 4

    .prologue
    .line 270
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apz;->Mq()Ljava/util/List;

    move-result-object v2

    .line 275
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 276
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 277
    invoke-static {v0, p1}, Lcom/kingroot/kinguser/aqc;->a(Lcom/kingroot/kinguser/aqc;Lcom/kingroot/kinguser/aqc;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 278
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aqc;->e(Lcom/kingroot/kinguser/aqc;)V

    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apz;->notifyItemChanged(I)V

    goto :goto_0

    .line 275
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    return-object v0
.end method

.method public ij(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apz;->Mq()Ljava/util/List;

    move-result-object v1

    .line 200
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    iget v0, v0, Lcom/kingroot/kinguser/aqc;->type:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 202
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 203
    iput-object p1, v0, Lcom/kingroot/kinguser/aqc;->aKW:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/apz;->notifyItemChanged(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public ik(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apz;->Mq()Ljava/util/List;

    move-result-object v1

    .line 210
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    iget v0, v0, Lcom/kingroot/kinguser/aqc;->type:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 212
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 213
    iput-object p1, v0, Lcom/kingroot/kinguser/aqc;->aKV:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/apz;->notifyItemChanged(I)V

    .line 216
    :cond_0
    return-void
.end method

.method public il(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apz;->Mq()Ljava/util/List;

    move-result-object v2

    .line 254
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 255
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 256
    iget-object v0, v0, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/apz;->aZ(Ljava/util/List;)V

    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apz;->notifyItemRemoved(I)V

    .line 263
    :cond_0
    return-void

    .line 254
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public t(IZ)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa;->aKL:Lcom/kingroot/kinguser/apz;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/apz;->t(IZ)V

    goto :goto_0
.end method
