.class public Lcom/kingroot/kinguser/axz;
.super Lcom/kingroot/kinguser/axs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axs;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axz;->alr:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method private TF()V
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/axz;->alr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070310

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axz;->ka(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BR()I

    move-result v2

    .line 78
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x0

    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/axz;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 82
    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/axz;->a(I[I)I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/kingroot/kinguser/axz;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :goto_0
    new-instance v2, Lcom/kingroot/kinguser/axz$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/axz$1;-><init>(Lcom/kingroot/kinguser/axz;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/kingroot/kinguser/axz;->a([Ljava/lang/String;ILcom/kingroot/kinguser/auc$a;)V

    .line 112
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axz;->UF()V

    .line 114
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07030c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axz;->ka(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/axz;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->BS()I

    move-result v1

    .line 118
    new-instance v2, Lcom/kingroot/kinguser/axz$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/axz$2;-><init>(Lcom/kingroot/kinguser/axz;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/kingroot/kinguser/axz;->a([Ljava/lang/String;ILcom/kingroot/kinguser/auc$a;)V

    .line 132
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axz;->UF()V

    .line 133
    return-void

    .line 84
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private Tv()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kingroot/kinguser/axz;->TF()V

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/axz;->Ve:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method

.method private a(I[I)I
    .locals 3

    .prologue
    .line 154
    const/4 v1, -0x1

    .line 155
    if-nez p2, :cond_0

    .line 164
    :goto_0
    return v1

    .line 158
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 159
    aget v2, p2, v0

    if-ne v2, p1, :cond_1

    :goto_2
    move v1, v0

    .line 164
    goto :goto_0

    .line 158
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axz;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/axz;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public Tw()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axz;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 65
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/axs;->a(Landroid/os/Message;)V

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 140
    :pswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/axz;->Tv()V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public cp(J)V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axz;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axz;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 61
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/kingroot/kinguser/agg;

    iget-object v1, p0, Lcom/kingroot/kinguser/axz;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/axz;->alr:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/agg;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axz;->Ve:Landroid/widget/BaseAdapter;

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/axz;->Ve:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/axs;->i(Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0}, Lcom/kingroot/kinguser/axz;->Tv()V

    .line 53
    return-void
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/kingroot/kinguser/axs;->oI()V

    .line 46
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/axz;->cp(J)V

    .line 47
    return-void
.end method

.method protected oJ()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/kingroot/kinguser/bey;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axz;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f070309

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axz;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bey;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method
