.class Lcom/kingroot/kinguser/ali$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ali;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public afU:Landroid/widget/ImageView;

.field public afV:Landroid/widget/TextView;

.field final synthetic awX:Lcom/kingroot/kinguser/ali;

.field public axa:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ali;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lcom/kingroot/kinguser/ali$a;->awX:Lcom/kingroot/kinguser/ali;

    .line 126
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 127
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f0f0075

    .line 129
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ali$a;->afU:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f0f00cc

    .line 132
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ali$a;->axa:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0f00d0

    .line 135
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ali$a;->afV:Landroid/widget/TextView;

    .line 136
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/ali$a;->awX:Lcom/kingroot/kinguser/ali;

    invoke-static {v0}, Lcom/kingroot/kinguser/ali;->b(Lcom/kingroot/kinguser/ali;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v0, p0, Lcom/kingroot/kinguser/ali$a;->awX:Lcom/kingroot/kinguser/ali;

    invoke-static {v0}, Lcom/kingroot/kinguser/ali;->c(Lcom/kingroot/kinguser/ali;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ali$a;->getAdapterPosition()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 141
    return-void
.end method
