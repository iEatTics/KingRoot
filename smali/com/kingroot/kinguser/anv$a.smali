.class public Lcom/kingroot/kinguser/anv$a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/anv$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/kingroot/kinguser/anv$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private aEn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/kingroot/kinguser/anv$a;->mContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/kingroot/kinguser/anv$a;->aEn:Ljava/util/List;

    .line 189
    iput p3, p0, Lcom/kingroot/kinguser/anv$a;->mType:I

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anv$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anv$a;)I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/kingroot/kinguser/anv$a;->mType:I

    return v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/anv$a$a;I)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$a;->aEn:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;

    .line 200
    iget-object v1, p1, Lcom/kingroot/kinguser/anv$a$a;->aEx:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p1, Lcom/kingroot/kinguser/anv$a$a;->amM:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mIconUrl:Ljava/lang/String;

    iput-object v1, p1, Lcom/kingroot/kinguser/anv$a$a;->iconUrl:Ljava/lang/String;

    .line 203
    iget-object v1, p1, Lcom/kingroot/kinguser/anv$a$a;->itemView:Landroid/view/View;

    new-instance v2, Lcom/kingroot/kinguser/anv$a$1;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/anv$a$1;-><init>(Lcom/kingroot/kinguser/anv$a;Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mIconUrl:Ljava/lang/String;

    new-instance v2, Lcom/kingroot/kinguser/anv$a$2;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/anv$a$2;-><init>(Lcom/kingroot/kinguser/anv$a;Lcom/kingroot/kinguser/anv$a$a;)V

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 246
    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/anv$a$a;
    .locals 4

    .prologue
    .line 194
    new-instance v0, Lcom/kingroot/kinguser/anv$a$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/anv$a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030024

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/anv$a$a;-><init>(Lcom/kingroot/kinguser/anv$a;Landroid/view/View;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$a;->aEn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 179
    check-cast p1, Lcom/kingroot/kinguser/anv$a$a;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/anv$a;->a(Lcom/kingroot/kinguser/anv$a$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/anv$a;->e(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/anv$a$a;

    move-result-object v0

    return-object v0
.end method
