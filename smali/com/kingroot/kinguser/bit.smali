.class public Lcom/kingroot/kinguser/bit;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bit$b;,
        Lcom/kingroot/kinguser/bit$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/kingroot/kinguser/bit$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final ajB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private buA:I

.field private buz:Lcom/kingroot/kinguser/bit$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bit;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bit;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bit;->ji(I)V

    return-void
.end method

.method private adm()I
    .locals 3

    .prologue
    .line 122
    .line 123
    const/16 v0, 0xbb8

    .line 124
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 126
    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private ji(I)V
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/kingroot/kinguser/bit;->buA:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bit;->buA:I

    .line 100
    iget v0, p0, Lcom/kingroot/kinguser/bit;->buA:I

    iget-object v1, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bit;->buA:I

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->buz:Lcom/kingroot/kinguser/bit$b;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->buz:Lcom/kingroot/kinguser/bit$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bit$b;->onFinish()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x2

    iput v1, v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->state:I

    .line 116
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bit;->notifyItemChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bit$a;I)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    .line 64
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/bit$a;->a(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;)V

    .line 65
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bit$b;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/kingroot/kinguser/bit;->buz:Lcom/kingroot/kinguser/bit$b;

    .line 74
    return-void
.end method

.method public aZ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bit;->notifyDataSetChanged()V

    .line 45
    return-void
.end method

.method public adk()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    .line 49
    const/4 v2, 0x0

    iput v2, v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->state:I

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bit;->notifyDataSetChanged()V

    .line 52
    return-void
.end method

.method public adl()V
    .locals 6

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 79
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    const/4 v3, 0x1

    iput v3, v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->state:I

    .line 84
    invoke-static {}, Lcom/kingroot/kinguser/wk;->nr()Lcom/kingroot/kinguser/wk;

    move-result-object v0

    new-instance v3, Lcom/kingroot/kinguser/bit$1;

    invoke-direct {v3, p0, v1}, Lcom/kingroot/kinguser/bit$1;-><init>(Lcom/kingroot/kinguser/bit;I)V

    .line 89
    invoke-direct {p0}, Lcom/kingroot/kinguser/bit;->adm()I

    move-result v4

    int-to-long v4, v4

    .line 84
    invoke-virtual {v0, v3, v4, v5}, Lcom/kingroot/kinguser/wk;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bit;->notifyDataSetChanged()V

    .line 94
    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/bit$a;
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    const v1, 0x7f03003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/kingroot/kinguser/bit$a;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/bit$a;-><init>(Lcom/kingroot/kinguser/bit;Landroid/view/View;)V

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bit;->ajB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/kingroot/kinguser/bit$a;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/bit;->a(Lcom/kingroot/kinguser/bit$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/bit;->g(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/bit$a;

    move-result-object v0

    return-object v0
.end method
