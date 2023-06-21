.class public Lcom/kingroot/kinguser/alj;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/alj$i;,
        Lcom/kingroot/kinguser/alj$j;,
        Lcom/kingroot/kinguser/alj$b;,
        Lcom/kingroot/kinguser/alj$h;,
        Lcom/kingroot/kinguser/alj$d;,
        Lcom/kingroot/kinguser/alj$g;,
        Lcom/kingroot/kinguser/alj$f;,
        Lcom/kingroot/kinguser/alj$k;,
        Lcom/kingroot/kinguser/alj$l;,
        Lcom/kingroot/kinguser/alj$a;,
        Lcom/kingroot/kinguser/alj$e;,
        Lcom/kingroot/kinguser/alj$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private VM:Z

.field private akC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aoj:Lcom/kingroot/kinguser/alf;

.field private final axb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private axc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/amm;",
            ">;"
        }
    .end annotation
.end field

.field private axd:Lcom/kingroot/kinguser/alj$j;

.field private axe:Lcom/kingroot/kinguser/alj$i;

.field private axf:Z

.field private final axg:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private axh:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_MainRVAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/alj;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/amm;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/alj;->akC:Ljava/util/HashMap;

    .line 80
    iput-object v2, p0, Lcom/kingroot/kinguser/alj;->axd:Lcom/kingroot/kinguser/alj$j;

    .line 82
    iput-object v2, p0, Lcom/kingroot/kinguser/alj;->axe:Lcom/kingroot/kinguser/alj$i;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/alj;->VM:Z

    .line 84
    iput-boolean v1, p0, Lcom/kingroot/kinguser/alj;->axf:Z

    .line 87
    new-instance v0, Lcom/kingroot/kinguser/alj$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alj$1;-><init>(Lcom/kingroot/kinguser/alj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alj;->axg:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 101
    iput-boolean v1, p0, Lcom/kingroot/kinguser/alj;->axh:Z

    .line 105
    iput-object p2, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    .line 106
    iput-object p1, p0, Lcom/kingroot/kinguser/alj;->mContext:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lcom/kingroot/kinguser/alj;->axb:Ljava/util/List;

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axg:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/alj;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alj;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->akC:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/alj$a;)V
    .locals 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axe:Lcom/kingroot/kinguser/alj$i;

    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/kingroot/kinguser/alj;->axe:Lcom/kingroot/kinguser/alj$i;

    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/alj$a;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amd;->Io()Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/alj$i;->c(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 512
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alj;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/alj;->j(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alj;Lcom/kingroot/kinguser/alj$a;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/alj;->a(Lcom/kingroot/kinguser/alj$a;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alj;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/kingroot/kinguser/alj;->VM:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/alj;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/alj;)Ljava/util/List;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    return-object v0
.end method

.method private j(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amm;

    .line 516
    instance-of v1, v0, Lcom/kingroot/kinguser/amd;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Lcom/kingroot/kinguser/amd;

    iget-object v0, v0, Lcom/kingroot/kinguser/amd;->azI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 519
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/alf;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/kingroot/kinguser/alj;->aoj:Lcom/kingroot/kinguser/alf;

    .line 835
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/alj$i;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/kingroot/kinguser/alj;->axe:Lcom/kingroot/kinguser/alj$i;

    .line 554
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/alj$j;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/kingroot/kinguser/alj;->axd:Lcom/kingroot/kinguser/alj$j;

    .line 544
    return-void
.end method

.method public cw(Z)V
    .locals 0

    .prologue
    .line 562
    iput-boolean p1, p0, Lcom/kingroot/kinguser/alj;->axf:Z

    .line 563
    return-void
.end method

.method public cx(Z)V
    .locals 0

    .prologue
    .line 588
    iput-boolean p1, p0, Lcom/kingroot/kinguser/alj;->axh:Z

    .line 589
    return-void
.end method

.method public fg(I)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amm;

    .line 568
    instance-of v1, v0, Lcom/kingroot/kinguser/amd;

    if-nez v1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    check-cast v0, Lcom/kingroot/kinguser/amd;

    .line 572
    iget-object v1, v0, Lcom/kingroot/kinguser/amd;->azJ:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, v0, Lcom/kingroot/kinguser/amd;->azJ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 576
    instance-of v2, v1, Lcom/kingroot/kinguser/alj$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 579
    check-cast v2, Lcom/kingroot/kinguser/alj$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/alj$a;->axs:Lcom/kingroot/kinguser/amd;

    if-ne v2, v0, :cond_0

    .line 582
    iget-object v0, v0, Lcom/kingroot/kinguser/amd;->azI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    check-cast v1, Lcom/kingroot/kinguser/alj$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/alj$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 584
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 582
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 529
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amm;

    invoke-interface {v0}, Lcom/kingroot/kinguser/amm;->getType()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const v12, 0x7f02010d

    const/4 v4, 0x1

    const/high16 v7, 0x42200000    # 40.0f

    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/alj;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 506
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p1

    .line 153
    check-cast v0, Lcom/kingroot/kinguser/alj$a;

    .line 154
    iget-object v1, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/amd;

    .line 155
    invoke-virtual {v1}, Lcom/kingroot/kinguser/amd;->Io()Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v2

    .line 156
    iget-object v5, v0, Lcom/kingroot/kinguser/alj$a;->afV:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v5, v0, Lcom/kingroot/kinguser/alj$a;->awc:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v7

    const v8, 0x7f0703e1

    new-array v4, v4, [Ljava/lang/Object;

    iget v9, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->downloadCount:I

    int-to-long v10, v9

    .line 158
    invoke-static {v10, v11}, Lcom/kingroot/kinguser/anf;->bP(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v3

    .line 157
    invoke-virtual {v7, v8, v4}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    .line 158
    invoke-static {v6, v7}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v4, v0, Lcom/kingroot/kinguser/alj$a;->awd:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->describe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v4, v0, Lcom/kingroot/kinguser/alj$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 163
    iget-object v4, v0, Lcom/kingroot/kinguser/alj$a;->awb:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Landroid/widget/ImageView;)V

    .line 165
    iget-object v4, v0, Lcom/kingroot/kinguser/alj$a;->awh:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Landroid/widget/LinearLayout;)V

    .line 166
    iget-boolean v4, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isExpand:Z

    if-eqz v4, :cond_1

    .line 168
    iget-object v3, p0, Lcom/kingroot/kinguser/alj;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/alf;->b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 172
    :goto_1
    iget-object v3, v0, Lcom/kingroot/kinguser/alj$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v4, Lcom/kingroot/kinguser/alj$7;

    invoke-direct {v4, p0, v0}, Lcom/kingroot/kinguser/alj$7;-><init>(Lcom/kingroot/kinguser/alj;Lcom/kingroot/kinguser/alj$a;)V

    invoke-virtual {v3, v4}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v3, v0, Lcom/kingroot/kinguser/alj$a;->itemView:Landroid/view/View;

    new-instance v4, Lcom/kingroot/kinguser/alj$8;

    invoke-direct {v4, p0, p1}, Lcom/kingroot/kinguser/alj$8;-><init>(Lcom/kingroot/kinguser/alj;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v3, v0, Lcom/kingroot/kinguser/alj$a;->awb:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v3, p0, Lcom/kingroot/kinguser/alj;->akC:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/kingroot/kinguser/alj$a;->awb:Landroid/widget/ImageView;

    iget-object v5, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v3

    iget-object v4, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    new-instance v5, Lcom/kingroot/kinguser/alj$9;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/alj$9;-><init>(Lcom/kingroot/kinguser/alj;Lcom/kingroot/kinguser/alj$a;)V

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 214
    iput-object v1, v0, Lcom/kingroot/kinguser/alj$a;->axs:Lcom/kingroot/kinguser/amd;

    .line 215
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/kingroot/kinguser/amd;->azJ:Ljava/lang/ref/WeakReference;

    .line 216
    iget-object v0, v0, Lcom/kingroot/kinguser/alj$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 217
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v3, 0x7f0703e8

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kingroot/kinguser/alj;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v0, v1, v3, v2}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    goto/16 :goto_0

    .line 170
    :cond_1
    iget-object v4, v0, Lcom/kingroot/kinguser/alj$a;->awh:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 223
    :pswitch_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ami;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ami;->It()Ljava/util/List;

    move-result-object v2

    move-object v0, p1

    .line 225
    check-cast v0, Lcom/kingroot/kinguser/alj$c;

    .line 226
    invoke-static {v2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kingroot/kinguser/alj;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 228
    iget-boolean v2, p0, Lcom/kingroot/kinguser/alj;->axh:Z

    if-nez v2, :cond_2

    .line 230
    const v2, 0x7f02010e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    :cond_2
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 233
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, v0, Lcom/kingroot/kinguser/alj$c;->axw:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-virtual {v0, v5}, Lcom/kingroot/common/uilib/banner/BannerView;->setData(Ljava/util/List;)V

    goto/16 :goto_0

    .line 236
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v2, v0, Lcom/kingroot/kinguser/alj$c;->axw:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-virtual {v2, v4}, Lcom/kingroot/common/uilib/banner/BannerView;->setDoubleMode(Z)V

    :goto_2
    move v2, v3

    .line 246
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 247
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/kingroot/kinguser/alj;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 243
    :cond_4
    iget-object v1, v0, Lcom/kingroot/kinguser/alj$c;->axw:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-virtual {v1, v3}, Lcom/kingroot/common/uilib/banner/BannerView;->setDoubleMode(Z)V

    move-object v1, v2

    goto :goto_2

    .line 250
    :cond_5
    iget-object v2, v0, Lcom/kingroot/kinguser/alj$c;->axw:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {v2, v3}, Lcom/kingroot/common/uilib/banner/BannerView;->setAutoPlayAble(Z)V

    .line 251
    iget-object v2, v0, Lcom/kingroot/kinguser/alj$c;->axw:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-virtual {v2, v5, v1, v8}, Lcom/kingroot/common/uilib/banner/BannerView;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 252
    iget-object v1, v0, Lcom/kingroot/kinguser/alj$c;->axw:Lcom/kingroot/common/uilib/banner/BannerView;

    new-instance v2, Lcom/kingroot/kinguser/alj$10;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/alj$10;-><init>(Lcom/kingroot/kinguser/alj;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/common/uilib/banner/BannerView;->setDelegate(Lcom/kingroot/common/uilib/banner/BannerView$c;)V

    .line 262
    iget-object v0, v0, Lcom/kingroot/kinguser/alj$c;->axw:Lcom/kingroot/common/uilib/banner/BannerView;

    new-instance v1, Lcom/kingroot/kinguser/alj$11;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/alj$11;-><init>(Lcom/kingroot/kinguser/alj;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/banner/BannerView;->setAdapter(Lcom/kingroot/common/uilib/banner/BannerView$a;)V

    goto/16 :goto_0

    .line 292
    :pswitch_2
    check-cast p1, Lcom/kingroot/kinguser/alj$e;

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amk;

    .line 294
    invoke-virtual {v0}, Lcom/kingroot/kinguser/amk;->It()Ljava/util/List;

    move-result-object v1

    .line 295
    invoke-static {p1}, Lcom/kingroot/kinguser/alj$e;->a(Lcom/kingroot/kinguser/alj$e;)Lcom/kingroot/kinguser/ali;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/ali;->aw(Ljava/util/List;)V

    .line 299
    invoke-static {p1}, Lcom/kingroot/kinguser/alj$e;->a(Lcom/kingroot/kinguser/alj$e;)Lcom/kingroot/kinguser/ali;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ali;->notifyDataSetChanged()V

    .line 300
    invoke-static {p1}, Lcom/kingroot/kinguser/alj$e;->b(Lcom/kingroot/kinguser/alj$e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amk;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-static {p1}, Lcom/kingroot/kinguser/alj$e;->c(Lcom/kingroot/kinguser/alj$e;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amk;->Iw()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 304
    :pswitch_3
    check-cast p1, Lcom/kingroot/kinguser/alj$k;

    iget-object v1, p1, Lcom/kingroot/kinguser/alj$k;->ajP:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amq;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 307
    :pswitch_4
    check-cast p1, Lcom/kingroot/kinguser/alj$l;

    .line 308
    invoke-static {p1}, Lcom/kingroot/kinguser/alj$l;->a(Lcom/kingroot/kinguser/alj$l;)Lcom/kingroot/kinguser/alk;

    move-result-object v1

    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amr;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/alk;->a(Lcom/kingroot/kinguser/amr;)V

    goto/16 :goto_0

    .line 311
    :pswitch_5
    check-cast p1, Lcom/kingroot/kinguser/alj$f;

    .line 312
    invoke-virtual {p0}, Lcom/kingroot/kinguser/alj;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_7

    iget-boolean v0, p0, Lcom/kingroot/kinguser/alj;->axf:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/kingroot/kinguser/alj;->VM:Z

    if-nez v0, :cond_7

    .line 313
    iget-object v0, p1, Lcom/kingroot/kinguser/alj$f;->axD:Landroid/widget/ProgressBar;

    invoke-static {p1}, Lcom/kingroot/kinguser/alj$f;->a(Lcom/kingroot/kinguser/alj$f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anf;->a(Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 314
    iput-boolean v4, p0, Lcom/kingroot/kinguser/alj;->VM:Z

    .line 315
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axd:Lcom/kingroot/kinguser/alj$j;

    if-eqz v0, :cond_7

    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axd:Lcom/kingroot/kinguser/alj$j;

    invoke-interface {v0}, Lcom/kingroot/kinguser/alj$j;->GP()V

    .line 320
    :cond_7
    iget-boolean v0, p0, Lcom/kingroot/kinguser/alj;->axf:Z

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p1, Lcom/kingroot/kinguser/alj$f;->axD:Landroid/widget/ProgressBar;

    invoke-static {p1}, Lcom/kingroot/kinguser/alj$f;->a(Lcom/kingroot/kinguser/alj$f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anf;->b(Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 325
    :pswitch_6
    check-cast p1, Lcom/kingroot/kinguser/alj$g;

    .line 326
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {p1}, Lcom/kingroot/kinguser/alj$g;->a(Lcom/kingroot/kinguser/alj$g;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 333
    :pswitch_7
    check-cast p1, Lcom/kingroot/kinguser/alj$d;

    .line 334
    iget-object v0, p1, Lcom/kingroot/kinguser/alj$d;->axt:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 335
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 336
    iget-object v1, p0, Lcom/kingroot/kinguser/alj;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030023

    .line 337
    invoke-virtual {v1, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingroot/common/uilib/ShapedImageView;

    .line 339
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v7}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v4

    invoke-static {v7}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/kingroot/common/uilib/ShapedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v3, p1, Lcom/kingroot/kinguser/alj$d;->axt:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 343
    invoke-virtual {v1, v12}, Lcom/kingroot/common/uilib/ShapedImageView;->setImageResource(I)V

    .line 344
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v3

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    new-instance v4, Lcom/kingroot/kinguser/alj$12;

    invoke-direct {v4, p0, v1}, Lcom/kingroot/kinguser/alj$12;-><init>(Lcom/kingroot/kinguser/alj;Lcom/kingroot/common/uilib/ShapedImageView;)V

    invoke-virtual {v3, v0, v4}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 367
    iget-object v0, p1, Lcom/kingroot/kinguser/alj$d;->axu:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/alj$13;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/alj$13;-><init>(Lcom/kingroot/kinguser/alj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 378
    :pswitch_8
    check-cast p1, Lcom/kingroot/kinguser/alj$b;

    .line 379
    iget-object v0, p1, Lcom/kingroot/kinguser/alj$b;->axt:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 380
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amh;->Iq()Ljava/util/List;

    move-result-object v0

    .line 381
    iget-object v1, p1, Lcom/kingroot/kinguser/alj$b;->axv:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v5, 0x7f070413

    invoke-virtual {v2, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 382
    iget-object v1, p1, Lcom/kingroot/kinguser/alj$b;->ajP:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v5, 0x7f070412

    invoke-virtual {v2, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, p1, Lcom/kingroot/kinguser/alj$b;->amj:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object v1, p1, Lcom/kingroot/kinguser/alj$b;->amj:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v5, 0x7f070411

    invoke-virtual {v2, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 387
    const/4 v1, 0x3

    if-ne v3, v1, :cond_9

    .line 423
    :cond_8
    iget-object v0, p1, Lcom/kingroot/kinguser/alj$b;->axu:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/alj$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/alj$2;-><init>(Lcom/kingroot/kinguser/alj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p1, Lcom/kingroot/kinguser/alj$b;->axv:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v1, Lcom/kingroot/kinguser/alj$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/alj$3;-><init>(Lcom/kingroot/kinguser/alj;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 390
    :cond_9
    iget-object v1, p0, Lcom/kingroot/kinguser/alj;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f030023

    .line 391
    invoke-virtual {v1, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingroot/common/uilib/ShapedImageView;

    .line 393
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v7}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v5

    invoke-static {v7}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/kingroot/common/uilib/ShapedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v4, p1, Lcom/kingroot/kinguser/alj$b;->axt:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 397
    invoke-virtual {v1, v12}, Lcom/kingroot/common/uilib/ShapedImageView;->setImageResource(I)V

    .line 398
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v4

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteIconUrl:Ljava/lang/String;

    new-instance v5, Lcom/kingroot/kinguser/alj$14;

    invoke-direct {v5, p0, v1}, Lcom/kingroot/kinguser/alj$14;-><init>(Lcom/kingroot/kinguser/alj;Lcom/kingroot/common/uilib/ShapedImageView;)V

    invoke-virtual {v4, v0, v5}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 420
    add-int/lit8 v3, v3, 0x1

    .line 421
    goto :goto_5

    .line 448
    :pswitch_9
    check-cast p1, Lcom/kingroot/kinguser/alj$h;

    .line 449
    iget-object v0, p1, Lcom/kingroot/kinguser/alj$h;->axt:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/alj;->axc:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amp;->It()Ljava/util/List;

    move-result-object v0

    .line 451
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 452
    iget-object v1, p0, Lcom/kingroot/kinguser/alj;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030023

    .line 453
    invoke-virtual {v1, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingroot/common/uilib/ShapedImageView;

    .line 455
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v7}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v4

    invoke-static {v7}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/kingroot/common/uilib/ShapedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object v3, p1, Lcom/kingroot/kinguser/alj$h;->axt:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 459
    invoke-virtual {v1, v12}, Lcom/kingroot/common/uilib/ShapedImageView;->setImageResource(I)V

    .line 460
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v3

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    new-instance v4, Lcom/kingroot/kinguser/alj$4;

    invoke-direct {v4, p0, v1}, Lcom/kingroot/kinguser/alj$4;-><init>(Lcom/kingroot/kinguser/alj;Lcom/kingroot/common/uilib/ShapedImageView;)V

    invoke-virtual {v3, v0, v4}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    goto :goto_6

    .line 483
    :cond_a
    iget-object v0, p1, Lcom/kingroot/kinguser/alj$h;->axu:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/alj$5;

    invoke-direct {v1, p0, p2}, Lcom/kingroot/kinguser/alj$5;-><init>(Lcom/kingroot/kinguser/alj;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v0, p1, Lcom/kingroot/kinguser/alj$h;->axv:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v1, Lcom/kingroot/kinguser/alj$6;

    invoke-direct {v1, p0, p2}, Lcom/kingroot/kinguser/alj$6;-><init>(Lcom/kingroot/kinguser/alj;I)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const v2, 0x7f03002f

    const/4 v3, 0x0

    .line 113
    packed-switch p2, :pswitch_data_0

    .line 146
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 115
    :pswitch_0
    new-instance v0, Lcom/kingroot/kinguser/alj$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a8

    .line 116
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alj$a;-><init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V

    goto :goto_0

    .line 118
    :pswitch_1
    new-instance v0, Lcom/kingroot/kinguser/alj$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030035

    .line 119
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alj$c;-><init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V

    goto :goto_0

    .line 121
    :pswitch_2
    new-instance v0, Lcom/kingroot/kinguser/alj$e;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030028

    .line 122
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alj$e;-><init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V

    goto :goto_0

    .line 124
    :pswitch_3
    new-instance v0, Lcom/kingroot/kinguser/alj$k;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030036

    .line 125
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alj$k;-><init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V

    goto :goto_0

    .line 127
    :pswitch_4
    new-instance v0, Lcom/kingroot/kinguser/alj$l;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030029

    .line 128
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alj$l;-><init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V

    goto :goto_0

    .line 130
    :pswitch_5
    new-instance v0, Lcom/kingroot/kinguser/alj$f;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030022

    .line 131
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alj$f;-><init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V

    goto :goto_0

    .line 133
    :pswitch_6
    new-instance v0, Lcom/kingroot/kinguser/alj$g;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002d

    .line 134
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alj$g;-><init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V

    goto/16 :goto_0

    .line 136
    :pswitch_7
    new-instance v0, Lcom/kingroot/kinguser/alj$d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002e

    .line 137
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alj$d;-><init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V

    goto/16 :goto_0

    .line 140
    :pswitch_8
    new-instance v0, Lcom/kingroot/kinguser/alj$h;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alj$h;-><init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V

    goto/16 :goto_0

    .line 143
    :pswitch_9
    new-instance v0, Lcom/kingroot/kinguser/alj$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alj$b;-><init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V

    goto/16 :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
