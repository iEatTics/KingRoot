.class public Lcom/kingroot/kinguser/ayc;
.super Lcom/kingroot/kinguser/yl;
.source "SourceFile"


# instance fields
.field private aVh:Landroid/widget/AdapterView$OnItemClickListener;

.field private aXl:Lcom/kingroot/kinguser/aks;

.field private aXm:Lcom/kingroot/kinguser/agg;

.field private alr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/auc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/yl;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v0, Lcom/kingroot/kinguser/ayc$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ayc$3;-><init>(Lcom/kingroot/kinguser/ayc;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayc;->aVh:Landroid/widget/AdapterView$OnItemClickListener;

    .line 40
    return-void
.end method

.method private TF()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/ayc;->alr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    new-instance v0, Lcom/kingroot/kinguser/ayc$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ayc$1;-><init>(Lcom/kingroot/kinguser/ayc;)V

    .line 119
    const/16 v1, 0xf

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070312

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/ayc;->aXl:Lcom/kingroot/kinguser/aks;

    .line 121
    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->CE()Z

    move-result v3

    .line 119
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/kingroot/kinguser/ayc;->a(ILjava/lang/String;ZLcom/kingroot/kinguser/agg$a;)V

    .line 126
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayc;->UF()V

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/ayc;->aXl:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Df()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lcom/kingroot/kinguser/ayc$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ayc$2;-><init>(Lcom/kingroot/kinguser/ayc;)V

    .line 147
    const/16 v1, 0x15

    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070314

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/ayc;->aXl:Lcom/kingroot/kinguser/aks;

    .line 149
    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->Dg()Z

    move-result v3

    .line 147
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/kingroot/kinguser/ayc;->a(ILjava/lang/String;ZLcom/kingroot/kinguser/agg$a;)V

    .line 153
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayc;->UF()V

    .line 158
    :cond_0
    return-void
.end method

.method private Tv()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayc;->TF()V

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/ayc;->aXm:Lcom/kingroot/kinguser/agg;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agg;->notifyDataSetChanged()V

    .line 91
    return-void
.end method

.method private UF()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 162
    const/4 v1, 0x6

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 163
    iget-object v1, p0, Lcom/kingroot/kinguser/ayc;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ayc;)Lcom/kingroot/kinguser/aks;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/ayc;->aXl:Lcom/kingroot/kinguser/aks;

    return-object v0
.end method

.method private a(ILjava/lang/String;ZLcom/kingroot/kinguser/agg$a;)V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 168
    const/4 v1, 0x3

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 169
    iput p1, v0, Lcom/kingroot/kinguser/auc;->aQX:I

    .line 170
    iput-object p2, v0, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    .line 171
    const-string v1, ""

    iput-object v1, v0, Lcom/kingroot/kinguser/auc;->aRa:Ljava/lang/String;

    .line 172
    iput-boolean p3, v0, Lcom/kingroot/kinguser/auc;->aRh:Z

    .line 173
    iput-object p4, v0, Lcom/kingroot/kinguser/auc;->aRj:Lcom/kingroot/kinguser/agg$a;

    .line 174
    iget-object v1, p0, Lcom/kingroot/kinguser/ayc;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yl;->a(Landroid/os/Message;)V

    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 193
    :pswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayc;->Tv()V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public cp(J)V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ayc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ayc;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayc;->alr:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Lcom/kingroot/kinguser/agg;

    iget-object v1, p0, Lcom/kingroot/kinguser/ayc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/ayc;->alr:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/agg;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayc;->aXm:Lcom/kingroot/kinguser/agg;

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/ayc;->aXm:Lcom/kingroot/kinguser/agg;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yl;->i(Ljava/lang/Object;)V

    .line 72
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayc;->Tv()V

    .line 73
    return-void
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/kingroot/kinguser/yl;->oI()V

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ayc;->aXl:Lcom/kingroot/kinguser/aks;

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/ayc;->Vd:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/ayc;->aVh:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ayc;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/ayc;->Vd:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 65
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ayc;->cp(J)V

    .line 66
    return-void
.end method

.method protected oJ()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/kingroot/kinguser/bey;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ayc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f070313

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/ayc;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bey;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method
