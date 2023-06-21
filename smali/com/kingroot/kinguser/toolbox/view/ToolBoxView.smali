.class public Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;,
        Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;
    }
.end annotation


# instance fields
.field private aEC:Landroid/widget/ImageView;

.field private aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

.field private blM:Lcom/kingroot/kinguser/bfc;

.field private blW:Z

.field private bmA:I

.field private bmB:I

.field private bmC:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

.field private final bmD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;",
            ">;"
        }
    .end annotation
.end field

.field private bmt:Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;

.field private final bmu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;",
            ">;"
        }
    .end annotation
.end field

.field private bmv:Landroid/widget/ImageView;

.field private bmw:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

.field private bmx:I

.field private bmy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bmz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    .line 72
    sget-object v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->bmN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmw:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmz:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$1;-><init>(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mHandler:Landroid/os/Handler;

    .line 94
    iput-boolean v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blW:Z

    .line 95
    iput v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmB:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmD:Ljava/util/List;

    .line 143
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->init()V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    .line 72
    sget-object v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->bmN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmw:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmz:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$1;-><init>(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mHandler:Landroid/os/Handler;

    .line 94
    iput-boolean v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blW:Z

    .line 95
    iput v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmB:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmD:Ljava/util/List;

    .line 149
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->init()V

    .line 151
    return-void
.end method

.method private ZM()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$2;-><init>(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method private ZT()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 451
    iget-object v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    monitor-enter v2

    move v1, v0

    .line 452
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmJ:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->aEC:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    monitor-exit v2

    .line 460
    :goto_1
    return-void

    .line 452
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->aEC:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmx:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmC:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blW:Z

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/bfc;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blM:Lcom/kingroot/kinguser/bfc;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmD:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmz:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmC:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmx:I

    return v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZT()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->setOrientation(I)V

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03013b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 157
    const v0, 0x7f0f00f1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmv:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f0f00cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->aEC:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f0f01f1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mHeaderView:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmA:I

    if-eqz v2, :cond_0

    .line 162
    iget v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmA:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 163
    iget-object v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    :cond_0
    const v0, 0x7f0f0338

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmt:Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;

    .line 167
    new-instance v0, Lcom/kingroot/kinguser/bfc;

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bfc;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blM:Lcom/kingroot/kinguser/bfc;

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blM:Lcom/kingroot/kinguser/bfc;

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfc;->j(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blM:Lcom/kingroot/kinguser/bfc;

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfc;->setHandler(Landroid/os/Handler;)V

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmt:Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blM:Lcom/kingroot/kinguser/bfc;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    invoke-direct {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZT()V

    .line 177
    return-void
.end method


# virtual methods
.method public ZF()V
    .locals 0

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZO()V

    .line 444
    return-void
.end method

.method protected ZN()V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZP()V

    .line 193
    invoke-static {}, Lcom/kingroot/kinguser/ais;->yp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZQ()V

    .line 197
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/anf;->IU()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZS()V

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZR()V

    .line 201
    return-void
.end method

.method protected ZO()V
    .locals 6

    .prologue
    .line 205
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;-><init>(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 331
    return-void
.end method

.method protected ZP()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 341
    new-instance v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;-><init>()V

    .line 342
    iput v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    .line 343
    iput v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    .line 344
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    const v2, 0x7f070179

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    .line 345
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    const v2, 0x7f070364

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->softTitle:Ljava/lang/String;

    .line 346
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    return-void
.end method

.method protected ZQ()V
    .locals 3

    .prologue
    .line 350
    new-instance v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;-><init>()V

    .line 351
    const/4 v1, 0x2

    iput v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    .line 352
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    const v2, 0x7f070177

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    const v2, 0x7f070362

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->softTitle:Ljava/lang/String;

    .line 354
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    return-void
.end method

.method protected ZR()V
    .locals 3

    .prologue
    .line 358
    new-instance v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;-><init>()V

    .line 359
    const/4 v1, 0x1

    iput v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    .line 360
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    const v2, 0x7f070168

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    const v2, 0x7f07035b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->softTitle:Ljava/lang/String;

    .line 362
    const/4 v1, 0x2

    iput v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    .line 363
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method

.method protected ZS()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 367
    new-instance v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;-><init>()V

    .line 368
    iput v5, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    .line 369
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    const v2, 0x7f070400

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    .line 370
    iget-boolean v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blW:Z

    if-eqz v1, :cond_1

    .line 371
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070443

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmB:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->softTitle:Ljava/lang/String;

    .line 375
    :goto_0
    const/4 v1, 0x3

    iput v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    .line 376
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/akl;->AX()Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    iput-boolean v5, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmJ:Z

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    return-void

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    const v2, 0x7f070402

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->softTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blM:Lcom/kingroot/kinguser/bfc;

    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmt:Lcom/kingroot/kinguser/toolbox/view/ToolBoxListView;

    return-object v0
.end method

.method protected lb(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 334
    new-instance v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;-><init>()V

    .line 335
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    .line 336
    iput-object p1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blM:Lcom/kingroot/kinguser/bfc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfc;->onDestroy()V

    .line 120
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blM:Lcom/kingroot/kinguser/bfc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfc;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZF()V

    .line 116
    return-void
.end method

.method public setHeaderHeight(I)V
    .locals 2

    .prologue
    .line 100
    if-gtz p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iput p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmA:I

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSlidingUpPanelLayout(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)V
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blM:Lcom/kingroot/kinguser/bfc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blM:Lcom/kingroot/kinguser/bfc;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bfc;->j(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)V

    .line 127
    :cond_0
    return-void
.end method

.method public setToolBoxState(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;)V
    .locals 9
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const-wide/16 v4, 0xfa

    const/4 v8, 0x3

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v1, 0x0

    const/4 v7, 0x5

    .line 392
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmw:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    if-ne p1, v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 395
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->bmM:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    if-ne p1, v0, :cond_b

    .line 396
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmv:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v4, v5}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    .line 397
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmD:Ljava/util/List;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    .line 400
    iget v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    if-ne v0, v8, :cond_1

    .line 401
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x188a0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    .line 407
    iget v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    if-ne v0, v7, :cond_3

    .line 408
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x1895f

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 412
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 413
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    monitor-enter v1

    .line 414
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    .line 415
    iget v3, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    if-ne v3, v8, :cond_6

    .line 416
    iget-boolean v3, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blW:Z

    if-nez v3, :cond_6

    .line 418
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    const v4, 0x188e9

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 422
    :cond_6
    iget v3, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_7

    iget v3, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    if-ne v3, v7, :cond_8

    .line 423
    :cond_7
    invoke-static {}, Lcom/kingroot/kinguser/als;->Hi()Lcom/kingroot/kinguser/amt;

    move-result-object v3

    iget-object v4, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/kingroot/kinguser/amt;->C(Ljava/lang/String;I)V

    .line 424
    iget-object v3, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    if-eqz v3, :cond_8

    .line 425
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iget-object v6, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v6, v6, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v3, v4, v5, v6}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    .line 429
    :cond_8
    iget v3, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    if-ne v3, v7, :cond_5

    iget-object v3, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    if-eqz v3, :cond_5

    .line 430
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v3, v4, v5, v0}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    goto :goto_1

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 412
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 433
    :cond_9
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 438
    :cond_a
    :goto_2
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmw:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    goto/16 :goto_0

    .line 435
    :cond_b
    sget-object v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->bmN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    if-ne p1, v0, :cond_a

    .line 436
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmv:Landroid/widget/ImageView;

    invoke-static {v0, v2, v1, v4, v5}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    goto :goto_2
.end method

.method public setWellChosenCount(I)V
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmB:I

    if-eq p1, v0, :cond_0

    .line 131
    iput p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->bmB:I

    .line 132
    invoke-direct {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZM()V

    .line 134
    :cond_0
    return-void
.end method

.method public setWellChosenMode(Z)V
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blW:Z

    if-eq v0, p1, :cond_0

    .line 464
    iput-boolean p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->blW:Z

    .line 465
    invoke-direct {p0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZM()V

    .line 467
    :cond_0
    return-void
.end method
