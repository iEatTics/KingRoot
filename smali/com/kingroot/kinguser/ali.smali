.class public Lcom/kingroot/kinguser/ali;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ali$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/kingroot/kinguser/ali$a;",
        ">;"
    }
.end annotation


# instance fields
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

.field private awU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private awV:F

.field private mContext:Landroid/content/Context;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ali;->akC:Ljava/util/HashMap;

    .line 37
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/kingroot/kinguser/ali;->awV:F

    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/ali;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/kingroot/kinguser/ali;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ali;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/ali;->akC:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ali;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/ali;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/ali;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/ali;->awU:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ali$a;I)V
    .locals 8

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/ali;->awU:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 68
    iget-object v1, p0, Lcom/kingroot/kinguser/ali;->akC:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/kingroot/kinguser/ali$a;->afU:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p1, Lcom/kingroot/kinguser/ali$a;->afU:Landroid/widget/ImageView;

    const v2, 0x7f02010d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    new-instance v3, Lcom/kingroot/kinguser/ali$1;

    invoke-direct {v3, p0, p1}, Lcom/kingroot/kinguser/ali$1;-><init>(Lcom/kingroot/kinguser/ali;Lcom/kingroot/kinguser/ali$a;)V

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 93
    iget-object v1, p1, Lcom/kingroot/kinguser/ali$a;->afV:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p1, Lcom/kingroot/kinguser/ali$a;->axa:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->downloadCount:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/kingroot/kinguser/anf;->bP(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ali;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/ali;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v1, v2, v3, v0}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    .line 97
    return-void
.end method

.method public aw(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kingroot/kinguser/ali;->awU:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ali;->notifyItemRangeChanged(II)V

    .line 56
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/ali$a;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/ali;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/kingroot/kinguser/ali$a;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/ali$a;-><init>(Lcom/kingroot/kinguser/ali;Landroid/view/View;)V

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/ali;->awU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/kingroot/kinguser/ali$a;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/ali;->a(Lcom/kingroot/kinguser/ali$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/ali;->b(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/ali$a;

    move-result-object v0

    return-object v0
.end method
