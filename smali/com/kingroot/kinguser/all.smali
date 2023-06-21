.class public Lcom/kingroot/kinguser/all;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/all$c;,
        Lcom/kingroot/kinguser/all$b;,
        Lcom/kingroot/kinguser/all$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/kingroot/kinguser/all$a;",
        ">;"
    }
.end annotation


# instance fields
.field private ahM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/all$c;",
            ">;"
        }
    .end annotation
.end field

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

.field private axO:Lcom/kingroot/kinguser/all$b;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/all$c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/all;->akC:Ljava/util/HashMap;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/all;->axO:Lcom/kingroot/kinguser/all$b;

    .line 35
    iput-object p1, p0, Lcom/kingroot/kinguser/all;->ahM:Ljava/util/List;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/all;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/all;->akC:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/all;Lcom/kingroot/kinguser/all$a;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/all;->b(Lcom/kingroot/kinguser/all$a;I)V

    return-void
.end method

.method private b(Lcom/kingroot/kinguser/all$a;I)V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p1, Lcom/kingroot/kinguser/all$a;->aga:Landroid/widget/CheckBox;

    iget-object v0, p1, Lcom/kingroot/kinguser/all$a;->aga:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/all;->axO:Lcom/kingroot/kinguser/all$b;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/kingroot/kinguser/all;->axO:Lcom/kingroot/kinguser/all$b;

    iget-object v0, p1, Lcom/kingroot/kinguser/all$a;->aga:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-object v0, p0, Lcom/kingroot/kinguser/all;->ahM:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/all$c;

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/all$b;->a(ZLcom/kingroot/kinguser/all$c;)V

    .line 89
    :cond_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/all$a;I)V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/all;->ahM:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/all$c;

    .line 50
    iget-object v1, p0, Lcom/kingroot/kinguser/all;->akC:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/kingroot/kinguser/all$a;->ajH:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p1, Lcom/kingroot/kinguser/all$a;->ajI:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p1, Lcom/kingroot/kinguser/all$a;->aga:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Lcom/kingroot/kinguser/all$c;->akL:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 53
    iget-object v1, p1, Lcom/kingroot/kinguser/all$a;->itemView:Landroid/view/View;

    new-instance v2, Lcom/kingroot/kinguser/all$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/kingroot/kinguser/all$1;-><init>(Lcom/kingroot/kinguser/all;Lcom/kingroot/kinguser/all$a;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    new-instance v2, Lcom/kingroot/kinguser/all$2;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/all$2;-><init>(Lcom/kingroot/kinguser/all;Lcom/kingroot/kinguser/all$a;)V

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 82
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/all$b;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/kingroot/kinguser/all;->axO:Lcom/kingroot/kinguser/all$b;

    .line 109
    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/all$a;
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    const v1, 0x7f030037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/kingroot/kinguser/all$a;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/all$a;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/all;->ahM:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/all;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public oX()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/all$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/all;->ahM:Ljava/util/List;

    return-object v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/kingroot/kinguser/all$a;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/all;->a(Lcom/kingroot/kinguser/all$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/all;->d(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/all$a;

    move-result-object v0

    return-object v0
.end method
