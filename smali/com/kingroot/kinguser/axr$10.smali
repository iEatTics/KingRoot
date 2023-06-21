.class Lcom/kingroot/kinguser/axr$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axr;->a(ILcom/kingroot/kinguser/bdb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbr:Lcom/kingroot/kinguser/axr;

.field final synthetic bbw:I

.field final synthetic bbx:Lcom/kingroot/kinguser/bdb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axr;ILcom/kingroot/kinguser/bdb;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/kingroot/kinguser/axr$10;->bbr:Lcom/kingroot/kinguser/axr;

    iput p2, p0, Lcom/kingroot/kinguser/axr$10;->bbw:I

    iput-object p3, p0, Lcom/kingroot/kinguser/axr$10;->bbx:Lcom/kingroot/kinguser/bdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$10;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->c(Lcom/kingroot/kinguser/axr;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/axr$10;->bbw:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/kingroot/kinguser/agh$d;

    if-eqz v1, :cond_0

    .line 231
    check-cast v0, Lcom/kingroot/kinguser/agh$d;

    .line 232
    iget-object v1, p0, Lcom/kingroot/kinguser/axr$10;->bbx:Lcom/kingroot/kinguser/bdb;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agh$d;->a(Lcom/kingroot/kinguser/bdb;)V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$10;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->c(Lcom/kingroot/kinguser/axr;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    .line 235
    iget v1, p0, Lcom/kingroot/kinguser/axr$10;->bbw:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 237
    :cond_0
    return-void
.end method
