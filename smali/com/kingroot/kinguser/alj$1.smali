.class Lcom/kingroot/kinguser/alj$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axi:Lcom/kingroot/kinguser/alj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$1;->axi:Lcom/kingroot/kinguser/alj;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeChanged(II)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$1;->axi:Lcom/kingroot/kinguser/alj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/alj;->a(Lcom/kingroot/kinguser/alj;Z)Z

    .line 92
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 98
    return-void
.end method
