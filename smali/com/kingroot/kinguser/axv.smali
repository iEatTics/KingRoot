.class public Lcom/kingroot/kinguser/axv;
.super Lcom/kingroot/kinguser/yl;
.source "SourceFile"


# instance fields
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
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/yl;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private TF()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/axv;->alr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07034b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axv;->ka(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/kingroot/kinguser/axv;->UF()V

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070349

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07034a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->Fd()Z

    move-result v2

    new-instance v3, Lcom/kingroot/kinguser/axv$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axv$1;-><init>(Lcom/kingroot/kinguser/axv;)V

    .line 75
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/axv;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/agg$a;)V

    .line 96
    invoke-direct {p0}, Lcom/kingroot/kinguser/axv;->UF()V

    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070348

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axv;->ka(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/kingroot/kinguser/axv;->UF()V

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070346

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070347

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->Fe()Z

    move-result v2

    new-instance v3, Lcom/kingroot/kinguser/axv$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axv$2;-><init>(Lcom/kingroot/kinguser/axv;)V

    .line 104
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/axv;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/agg$a;)V

    .line 124
    invoke-direct {p0}, Lcom/kingroot/kinguser/axv;->UF()V

    .line 125
    return-void
.end method

.method private Tv()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/kingroot/kinguser/axv;->TF()V

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/axv;->aXm:Lcom/kingroot/kinguser/agg;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agg;->notifyDataSetChanged()V

    .line 67
    return-void
.end method

.method private UF()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 137
    const/4 v1, 0x6

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 138
    iget-object v1, p0, Lcom/kingroot/kinguser/axv;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/agg$a;)V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 143
    const/16 v1, 0xd

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/auc;->aRi:Z

    .line 145
    iput-object p1, v0, Lcom/kingroot/kinguser/auc;->aRb:Ljava/lang/String;

    .line 146
    iput-object p2, v0, Lcom/kingroot/kinguser/auc;->aRc:Ljava/lang/String;

    .line 147
    iput-boolean p3, v0, Lcom/kingroot/kinguser/auc;->aRh:Z

    .line 148
    iput-object p4, v0, Lcom/kingroot/kinguser/auc;->aRj:Lcom/kingroot/kinguser/agg$a;

    .line 149
    iget-object v1, p0, Lcom/kingroot/kinguser/axv;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axv;->alr:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/kingroot/kinguser/agg;

    iget-object v1, p0, Lcom/kingroot/kinguser/axv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/axv;->alr:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/agg;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axv;->aXm:Lcom/kingroot/kinguser/agg;

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/axv;->aXm:Lcom/kingroot/kinguser/agg;

    return-object v0
.end method

.method protected ka(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 129
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 130
    iput-object p1, v0, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    .line 131
    const-string v1, ""

    iput-object v1, v0, Lcom/kingroot/kinguser/auc;->aRa:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/kingroot/kinguser/axv;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/kingroot/kinguser/yl;->oI()V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/axv;->Vd:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/axv;->Vd:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-direct {p0}, Lcom/kingroot/kinguser/axv;->Tv()V

    .line 62
    return-void
.end method

.method protected oJ()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/kingroot/kinguser/bey;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f07034c

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axv;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bey;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yl;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1888a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 42
    return-void
.end method
