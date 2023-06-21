.class Lcom/kingroot/kinguser/axr$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axr;->b(Lcom/kingroot/kinguser/bdd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbr:Lcom/kingroot/kinguser/axr;

.field final synthetic bbu:Lcom/kingroot/kinguser/bdd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axr;Lcom/kingroot/kinguser/bdd;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/kingroot/kinguser/axr$6;->bbr:Lcom/kingroot/kinguser/axr;

    iput-object p2, p0, Lcom/kingroot/kinguser/axr$6;->bbu:Lcom/kingroot/kinguser/bdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$6;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->c(Lcom/kingroot/kinguser/axr;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/kingroot/kinguser/agh$f;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Lcom/kingroot/kinguser/agh$f;

    .line 160
    iget-object v1, p0, Lcom/kingroot/kinguser/axr$6;->bbu:Lcom/kingroot/kinguser/bdd;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agh$f;->a(Lcom/kingroot/kinguser/bdd;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$6;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->f(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/agh;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/agh;->notifyItemChanged(I)V

    goto :goto_0
.end method
