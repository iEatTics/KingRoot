.class Lcom/kingroot/kinguser/apz$c$a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/apz$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/apz$c$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/kingroot/kinguser/apz$c$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private aKH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 471
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c$a;->aKH:Ljava/util/List;

    .line 472
    iput-object p1, p0, Lcom/kingroot/kinguser/apz$c$a;->mContext:Landroid/content/Context;

    .line 473
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/apz$c$a$a;I)V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c$a;->aKH:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/apz$c$a$a;->a(Lcom/kingroot/kinguser/aqc;)V

    .line 500
    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/apz$c$a$a;
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 488
    const v1, 0x7f0300b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 489
    new-instance v1, Lcom/kingroot/kinguser/apz$c$a$a;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/apz$c$a$a;-><init>(Lcom/kingroot/kinguser/apz$c$a;Landroid/view/View;)V

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c$a;->aKH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 467
    check-cast p1, Lcom/kingroot/kinguser/apz$c$a$a;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/apz$c$a;->a(Lcom/kingroot/kinguser/apz$c$a$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/apz$c$a;->f(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/apz$c$a$a;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c$a;->aKH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 481
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c$a;->aKH:Ljava/util/List;

    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 482
    return-void
.end method
