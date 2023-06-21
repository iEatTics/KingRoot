.class Lcom/kingroot/kinguser/axr$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axr;->a(ILcom/kingroot/kinguser/bdg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qj:I

.field final synthetic aSR:Lcom/kingroot/kinguser/bdg;

.field final synthetic bbr:Lcom/kingroot/kinguser/axr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axr;ILcom/kingroot/kinguser/bdg;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/kingroot/kinguser/axr$7;->bbr:Lcom/kingroot/kinguser/axr;

    iput p2, p0, Lcom/kingroot/kinguser/axr$7;->Qj:I

    iput-object p3, p0, Lcom/kingroot/kinguser/axr$7;->aSR:Lcom/kingroot/kinguser/bdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$7;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->c(Lcom/kingroot/kinguser/axr;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/axr$7;->Qj:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/kingroot/kinguser/agh$j;

    if-eqz v1, :cond_0

    .line 176
    check-cast v0, Lcom/kingroot/kinguser/agh$j;

    .line 177
    iget-object v1, p0, Lcom/kingroot/kinguser/axr$7;->aSR:Lcom/kingroot/kinguser/bdg;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agh$j;->b(Lcom/kingroot/kinguser/bdg;)V

    .line 179
    :cond_0
    return-void
.end method
