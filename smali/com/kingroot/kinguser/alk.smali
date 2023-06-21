.class public Lcom/kingroot/kinguser/alk;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/alk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/kingroot/kinguser/alk$a;",
        ">;"
    }
.end annotation


# instance fields
.field private awV:F

.field private axL:Lcom/kingroot/kinguser/amr;

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
    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/kingroot/kinguser/alk;->awV:F

    .line 37
    iput-object p1, p0, Lcom/kingroot/kinguser/alk;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/kingroot/kinguser/alk;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alk;)Lcom/kingroot/kinguser/amr;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/alk;->axL:Lcom/kingroot/kinguser/amr;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/alk;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/alk;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/alk$a;I)V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p1, Lcom/kingroot/kinguser/alk$a;->axM:Lcom/kingroot/common/uilib/ShapedImageView;

    iget-object v0, p0, Lcom/kingroot/kinguser/alk;->axL:Lcom/kingroot/kinguser/amr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amr;->Iy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/common/uilib/ShapedImageView;->setImageResource(I)V

    .line 54
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/amr;)V
    .locals 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kingroot/kinguser/alk;->axL:Lcom/kingroot/kinguser/amr;

    .line 43
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kingroot/kinguser/alk;->axL:Lcom/kingroot/kinguser/amr;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/amr;->Iz()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/alk;->notifyItemRangeChanged(II)V

    .line 44
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/alk$a;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/kingroot/kinguser/alk$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/alk;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alk$a;-><init>(Lcom/kingroot/kinguser/alk;Landroid/view/View;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/alk;->axL:Lcom/kingroot/kinguser/amr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amr;->Iz()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/kingroot/kinguser/alk$a;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/alk;->a(Lcom/kingroot/kinguser/alk$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/alk;->c(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/alk$a;

    move-result-object v0

    return-object v0
.end method
