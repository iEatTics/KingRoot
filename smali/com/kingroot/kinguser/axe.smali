.class public Lcom/kingroot/kinguser/axe;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingroot/kinguser/agd$b;


# instance fields
.field private aFj:Landroid/widget/TextView;

.field private aXI:Lcom/kingroot/kinguser/agd;

.field private aXO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agd$a;",
            ">;"
        }
    .end annotation
.end field

.field private aXP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/agd$a;",
            ">;"
        }
    .end annotation
.end field

.field private aXQ:Landroid/widget/Button;

.field private aXR:Landroid/view/View;

.field private final aXS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aXT:Z

.field private aXU:Lcom/kingroot/kinguser/bed;

.field private aXV:Lcom/kingroot/kinguser/bed;

.field private mHandler:Landroid/os/Handler;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 374
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axe;->aXO:Ljava/util/List;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axe;->aXP:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axe;->aXS:Ljava/util/Map;

    .line 94
    new-instance v0, Lcom/kingroot/kinguser/axe$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axe$1;-><init>(Lcom/kingroot/kinguser/axe;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axe;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/axe$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axe$2;-><init>(Lcom/kingroot/kinguser/axe;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axe;->aXU:Lcom/kingroot/kinguser/bed;

    .line 470
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/axe$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axe$3;-><init>(Lcom/kingroot/kinguser/axe;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axe;->aXV:Lcom/kingroot/kinguser/bed;

    .line 375
    return-void
.end method

.method private TP()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aXQ:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 451
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aXQ:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070456

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 452
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 454
    iget-object v2, p0, Lcom/kingroot/kinguser/axe;->aXS:Ljava/util/Map;

    monitor-enter v2

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aXS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 456
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 459
    iget-object v3, p0, Lcom/kingroot/kinguser/axe;->aXP:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agd$a;

    .line 460
    if-eqz v0, :cond_0

    .line 461
    const/4 v3, 0x3

    iput v3, v0, Lcom/kingroot/kinguser/agd$a;->status:I

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aXI:Lcom/kingroot/kinguser/agd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agd;->notifyDataSetChanged()V

    .line 465
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->f(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/axe;->aXV:Lcom/kingroot/kinguser/bed;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 468
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axe;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aFj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axe;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axe;->ht(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axe;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/kingroot/kinguser/axe;->aXT:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axe;)Ljava/util/List;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aXO:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axe;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axe;->hs(I)V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axe;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aXP:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axe;)Lcom/kingroot/kinguser/agd;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aXI:Lcom/kingroot/kinguser/agd;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axe;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axe;->aXT:Z

    return v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/axe;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/kingroot/kinguser/axe;->TP()V

    return-void
.end method

.method static synthetic g(Lcom/kingroot/kinguser/axe;)Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aXR:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/axe;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aXQ:Landroid/widget/Button;

    return-object v0
.end method

.method private hs(I)V
    .locals 2

    .prologue
    .line 436
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 437
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 438
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 439
    iget-object v1, p0, Lcom/kingroot/kinguser/axe;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 440
    return-void
.end method

.method private ht(I)V
    .locals 2

    .prologue
    .line 443
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 444
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 445
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 446
    iget-object v1, p0, Lcom/kingroot/kinguser/axe;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 447
    return-void
.end method

.method static synthetic i(Lcom/kingroot/kinguser/axe;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aXU:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/axe;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aXS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/axe;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/agd$a;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 419
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/activitys/DefaultAppChosenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    const-string v1, "def_setting_info"

    iget-object v2, p1, Lcom/kingroot/kinguser/agd$a;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v1, "default_item_id"

    iget v2, p1, Lcom/kingroot/kinguser/agd$a;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    const-string v1, "default_item_recommend_app_id"

    iget-object v2, p1, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axe;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 426
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18910

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 427
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 390
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 391
    const v1, 0x7f03005f

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 392
    const v0, 0x7f0f0163

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axe;->aFj:Landroid/widget/TextView;

    .line 393
    const v0, 0x7f0f0165

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axe;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 394
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 395
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 396
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axe;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 397
    new-instance v0, Lcom/kingroot/kinguser/agd;

    iget-object v2, p0, Lcom/kingroot/kinguser/axe;->aXO:Ljava/util/List;

    invoke-direct {v0, v2, p0, v4, v4}, Lcom/kingroot/kinguser/agd;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/agd$b;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axe;->aXI:Lcom/kingroot/kinguser/agd;

    .line 398
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/axe;->aXI:Lcom/kingroot/kinguser/agd;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 399
    const v0, 0x7f0f0166

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axe;->aXR:Landroid/view/View;

    .line 400
    const v0, 0x7f0f0167

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/axe;->aXQ:Landroid/widget/Button;

    .line 401
    iget-object v0, p0, Lcom/kingroot/kinguser/axe;->aXQ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    return-object v1
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 370
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axe;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f07046c

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axe;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 407
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/ym;->onActivityResult(IILandroid/content/Intent;)V

    .line 408
    const/16 v0, 0x400

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axe;->aXU:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 431
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1890f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 432
    invoke-direct {p0}, Lcom/kingroot/kinguser/axe;->TP()V

    .line 433
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 379
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 380
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axe;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_0

    .line 382
    const-string v1, "defaultSetting_optimize_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axe;->aXT:Z

    .line 384
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axe;->aXU:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 386
    return-void
.end method
