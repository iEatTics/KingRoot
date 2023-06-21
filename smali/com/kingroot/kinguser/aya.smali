.class public Lcom/kingroot/kinguser/aya;
.super Lcom/kingroot/kinguser/axs;
.source "SourceFile"


# instance fields
.field private aVh:Landroid/widget/AdapterView$OnItemClickListener;

.field private bcy:Lcom/kingroot/kinguser/big;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axs;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aya;->bcy:Lcom/kingroot/kinguser/big;

    .line 133
    new-instance v0, Lcom/kingroot/kinguser/aya$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aya$2;-><init>(Lcom/kingroot/kinguser/aya;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aya;->aVh:Landroid/widget/AdapterView$OnItemClickListener;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aya;->alr:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method private TF()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/aya;->alr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070311

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aya;->ka(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/aya;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->BU()I

    move-result v1

    .line 103
    new-instance v2, Lcom/kingroot/kinguser/aya$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/aya$1;-><init>(Lcom/kingroot/kinguser/aya;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/kingroot/kinguser/aya;->a([Ljava/lang/String;ILcom/kingroot/kinguser/auc$a;)V

    .line 119
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aya;->UF()V

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070202

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aya;->ka(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aya;->UF()V

    .line 124
    const/4 v1, 0x7

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f0701fb

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v4

    .line 124
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/aya;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V

    .line 127
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aya;->UF()V

    .line 128
    return-void
.end method

.method private Tv()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/kingroot/kinguser/aya;->TF()V

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/aya;->Ve:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aya;)Lcom/kingroot/kinguser/big;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/aya;->bcy:Lcom/kingroot/kinguser/big;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aya;Lcom/kingroot/kinguser/big;)Lcom/kingroot/kinguser/big;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/aya;->bcy:Lcom/kingroot/kinguser/big;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aya;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aya;->hE(I)V

    return-void
.end method

.method private hE(I)V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aya;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 204
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 205
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aya;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void
.end method

.method private vd()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/aya;->bcy:Lcom/kingroot/kinguser/big;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aya;->bcy:Lcom/kingroot/kinguser/big;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/aya;->bcy:Lcom/kingroot/kinguser/big;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->dismiss()V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public Tw()V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aya;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 80
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/axs;->a(Landroid/os/Message;)V

    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 170
    :pswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/aya;->Tv()V

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aya;->mContext:Landroid/content/Context;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cp(J)V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aya;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aya;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 76
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/kingroot/kinguser/agg;

    iget-object v1, p0, Lcom/kingroot/kinguser/aya;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/aya;->alr:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/agg;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aya;->Ve:Landroid/widget/BaseAdapter;

    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/aya;->Ve:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/axs;->i(Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0}, Lcom/kingroot/kinguser/aya;->Tv()V

    .line 62
    return-void
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/kingroot/kinguser/axs;->oI()V

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/aya;->Vd:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/aya;->aVh:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aya;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/aya;->Vd:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aya;->cp(J)V

    .line 56
    return-void
.end method

.method protected oJ()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/kingroot/kinguser/bey;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/aya;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f070202

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/aya;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bey;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/kingroot/kinguser/axs;->onDestroy()V

    .line 67
    invoke-direct {p0}, Lcom/kingroot/kinguser/aya;->vd()V

    .line 68
    return-void
.end method
