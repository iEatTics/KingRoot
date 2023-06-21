.class public Lcom/kingroot/kinguser/axl;
.super Lcom/kingroot/kinguser/yn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/yn",
        "<",
        "Lcom/kingroot/kinguser/aub;",
        ">;"
    }
.end annotation


# instance fields
.field private aSN:Lcom/kingroot/kinguser/bed;

.field private final aVh:Landroid/widget/AdapterView$OnItemClickListener;

.field private final aZA:Landroid/view/View$OnClickListener;

.field private aZy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aub;",
            ">;"
        }
    .end annotation
.end field

.field private aZz:Lcom/kingroot/kinguser/root/log/ILogsChangeListener$Stub;

.field private mEmptyView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 69
    const-string v0, "log_page"

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/yn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axl;->aZy:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/kingroot/kinguser/page/LogPage$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/LogPage$1;-><init>(Lcom/kingroot/kinguser/axl;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axl;->aZz:Lcom/kingroot/kinguser/root/log/ILogsChangeListener$Stub;

    .line 150
    new-instance v0, Lcom/kingroot/kinguser/axl$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axl$1;-><init>(Lcom/kingroot/kinguser/axl;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axl;->aVh:Landroid/widget/AdapterView$OnItemClickListener;

    .line 183
    new-instance v0, Lcom/kingroot/kinguser/axl$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axl$2;-><init>(Lcom/kingroot/kinguser/axl;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axl;->aZA:Landroid/view/View$OnClickListener;

    .line 218
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/axl$3;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axl$3;-><init>(Lcom/kingroot/kinguser/axl;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axl;->aSN:Lcom/kingroot/kinguser/bed;

    .line 70
    return-void
.end method

.method private I(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 369
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 370
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 371
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {v0, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070201

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    .line 376
    :cond_0
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private Um()V
    .locals 9

    .prologue
    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 328
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axl;->oV()Lcom/kingroot/kinguser/yn$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yn$a;->oX()Ljava/util/List;

    move-result-object v3

    .line 329
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 330
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 331
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yn$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->data:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/aub;

    .line 332
    iget-boolean v5, v0, Lcom/kingroot/kinguser/aub;->aQT:Z

    if-eqz v5, :cond_0

    .line 333
    new-instance v5, Lcom/kingroot/kinguser/yn$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v0, v6, v7}, Lcom/kingroot/kinguser/yn$b;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget v5, v0, Lcom/kingroot/kinguser/aub;->visible:I

    and-int/lit8 v5, v5, 0x40

    .line 337
    if-gtz v5, :cond_0

    iget-object v5, v0, Lcom/kingroot/kinguser/aub;->aQW:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 338
    iget-object v0, v0, Lcom/kingroot/kinguser/aub;->aQW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aub;

    .line 339
    new-instance v6, Lcom/kingroot/kinguser/yn$b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/kingroot/kinguser/yn$b;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 330
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/axl;->j(Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/axl;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->aSN:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axl;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/axl;->I(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/util/List;Lcom/kingroot/kinguser/aub;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aub;",
            ">;",
            "Lcom/kingroot/kinguser/aub;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 349
    const-string v1, ""

    .line 350
    iput p1, p3, Lcom/kingroot/kinguser/aub;->index:I

    .line 351
    iput-object p2, p3, Lcom/kingroot/kinguser/aub;->aQW:Ljava/util/List;

    .line 354
    iput v0, p3, Lcom/kingroot/kinguser/aub;->aQU:I

    .line 355
    iput v0, p3, Lcom/kingroot/kinguser/aub;->aQV:I

    .line 356
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aub;

    .line 357
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    iget-object v1, v0, Lcom/kingroot/kinguser/aub;->alY:Ljava/lang/String;

    .line 360
    :cond_0
    iget v3, p3, Lcom/kingroot/kinguser/aub;->aQU:I

    iget v4, v0, Lcom/kingroot/kinguser/aub;->aQU:I

    add-int/2addr v3, v4

    iput v3, p3, Lcom/kingroot/kinguser/aub;->aQU:I

    .line 361
    iget v3, p3, Lcom/kingroot/kinguser/aub;->aQV:I

    iget v0, v0, Lcom/kingroot/kinguser/aub;->aQV:I

    add-int/2addr v0, v3

    iput v0, p3, Lcom/kingroot/kinguser/aub;->aQV:I

    goto :goto_0

    .line 363
    :cond_1
    iput-object v1, p3, Lcom/kingroot/kinguser/aub;->action:Ljava/lang/String;

    .line 364
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axl;ILjava/util/List;Lcom/kingroot/kinguser/aub;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/axl;->a(ILjava/util/List;Lcom/kingroot/kinguser/aub;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axl;)Lcom/kingroot/kinguser/yn$a;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axl;->oV()Lcom/kingroot/kinguser/yn$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axl;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/kingroot/kinguser/axl;->Um()V

    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axl;)Lcom/kingroot/common/uilib/template/PinnedHeaderListView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axl;)Lcom/kingroot/kinguser/yn$a;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axl;->oV()Lcom/kingroot/kinguser/yn$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/axl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->aZy:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 383
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yn;->a(Landroid/os/Message;)V

    .line 385
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->Vr:Lcom/kingroot/kinguser/yn$a;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->getLastVisiblePosition()I

    move-result v0

    .line 388
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/kingroot/kinguser/axl;->Vr:Lcom/kingroot/kinguser/yn$a;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/yn$a;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 389
    iget-object v1, p0, Lcom/kingroot/kinguser/axl;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->smoothScrollToPosition(II)V

    .line 393
    :cond_0
    return-void
.end method

.method protected getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yn;->i(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axl;->oV()Lcom/kingroot/kinguser/yn$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yn$a;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->Vh:Lcom/kingroot/kinguser/yp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e0069

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->Vh:Lcom/kingroot/kinguser/yp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->Vh:Lcom/kingroot/kinguser/yp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected oI()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 109
    invoke-super {p0}, Lcom/kingroot/kinguser/yn;->oI()V

    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axl;->aZz:Lcom/kingroot/kinguser/root/log/ILogsChangeListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbo;->addLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axl;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030146

    iget-object v2, p0, Lcom/kingroot/kinguser/axl;->Vh:Lcom/kingroot/kinguser/yp;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axl;->mEmptyView:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0f0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    const v1, 0x7f0701fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    const-wide/32 v2, 0x7f02016f

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axl;->Y(J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 119
    const-wide/32 v2, 0x7f0a0093

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axl;->W(J)F

    move-result v2

    float-to-int v2, v2

    const-wide/32 v4, 0x7f0a0092

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/axl;->W(J)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->Vh:Lcom/kingroot/kinguser/yp;

    iget-object v1, p0, Lcom/kingroot/kinguser/axl;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1, v6}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, v6}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->aVh:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axl;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/axl;->aZA:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axl;->a(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axl;->aSN:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 132
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/kingroot/kinguser/bes;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f070202

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axl;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bes;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected oU()Lcom/kingroot/kinguser/yn$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kingroot/kinguser/yn$a",
            "<",
            "Lcom/kingroot/kinguser/aub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/kingroot/kinguser/age;

    iget-object v1, p0, Lcom/kingroot/kinguser/axl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/age;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected oW()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axl;->aZz:Lcom/kingroot/kinguser/root/log/ILogsChangeListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbo;->removeLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V

    .line 138
    invoke-super {p0}, Lcom/kingroot/kinguser/yn;->onDestroy()V

    .line 139
    return-void
.end method
