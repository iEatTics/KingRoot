.class public Lcom/kingroot/kinguser/awz;
.super Lcom/kingroot/kinguser/yl;
.source "SourceFile"


# instance fields
.field private aWj:Lcom/kingroot/kinguser/agc;

.field private aWk:Landroid/view/View;

.field private aWl:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Lcom/kingroot/kinguser/agc$c;",
            ">;"
        }
    .end annotation
.end field

.field private aWm:Lcom/kingroot/kinguser/bed;

.field private acW:Lcom/kingroot/kinguser/bis;

.field private ako:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agc$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/yl;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/awz;->aWj:Lcom/kingroot/kinguser/agc;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/awz;->ako:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/bis;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bis;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awz;->acW:Lcom/kingroot/kinguser/bis;

    .line 53
    new-instance v0, Lcom/kingroot/kinguser/awz$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/awz$1;-><init>(Lcom/kingroot/kinguser/awz;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awz;->aWl:Ljava/util/Comparator;

    .line 63
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/awz$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/awz$2;-><init>(Lcom/kingroot/kinguser/awz;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awz;->aWm:Lcom/kingroot/kinguser/bed;

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/awz;)Lcom/kingroot/kinguser/bis;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/awz;->acW:Lcom/kingroot/kinguser/bis;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/awz;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/awz;->ako:Ljava/util/List;

    return-object v0
.end method

.method private bI(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agc$c;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return v2

    .line 197
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 198
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agc$c;

    iget-wide v4, v0, Lcom/kingroot/kinguser/agc$c;->mTime:J

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/awz;->co(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    move v2, v0

    .line 207
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method static synthetic c(Lcom/kingroot/kinguser/awz;)Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/awz;->aWl:Ljava/util/Comparator;

    return-object v0
.end method

.method private co(J)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 212
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 215
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 216
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 218
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 219
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 226
    :cond_0
    return v0
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v6, -0x1

    const-wide/16 v2, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yl;->a(Landroid/os/Message;)V

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/awz;->ako:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/awz;->ako:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/awz;->ako:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awz;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300dd

    invoke-virtual {p0}, Lcom/kingroot/kinguser/awz;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/awz;->aWk:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/awz;->aWk:Landroid/view/View;

    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    const-wide/32 v4, 0x7f07004c

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/awz;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v4, 0x7f0e0075

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/awz;->aWk:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 141
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 142
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 143
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awz;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v1

    iget-object v4, p0, Lcom/kingroot/kinguser/awz;->aWk:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awz;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/awz;->aWk:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 145
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awz;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e0069

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 146
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/awz;->U(J)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/awz;->ako:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/awz;->bI(Ljava/util/List;)I

    move-result v7

    .line 154
    if-eq v7, v6, :cond_2

    .line 156
    iget-object v8, p0, Lcom/kingroot/kinguser/awz;->ako:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/agc$c;

    const/4 v1, 0x2

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/agc$c;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 160
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/agc;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/awz;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/kingroot/kinguser/awz;->ako:Ljava/util/List;

    invoke-direct {v0, v1, v4}, Lcom/kingroot/kinguser/agc;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awz;->aWj:Lcom/kingroot/kinguser/agc;

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/awz;->Vd:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/awz;->aWj:Lcom/kingroot/kinguser/agc;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/awz;->aWj:Lcom/kingroot/kinguser/agc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agc;->notifyDataSetChanged()V

    .line 163
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/awz;->U(J)V

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/awz;->aWj:Lcom/kingroot/kinguser/agc;

    return-object v0
.end method

.method protected getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awz;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/kingroot/kinguser/yl;->oI()V

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/awz;->aWm:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 126
    return-void
.end method

.method protected oJ()I
    .locals 1

    .prologue
    .line 182
    const v0, 0x7f0f028e

    return v0
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Lcom/kingroot/kinguser/beq;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/awz;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f07004d

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/awz;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/beq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
