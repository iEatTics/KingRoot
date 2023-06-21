.class Lcom/kingroot/kinguser/alj$d;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic axi:Lcom/kingroot/kinguser/alj;

.field axt:Landroid/view/ViewGroup;

.field axu:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 772
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$d;->axi:Lcom/kingroot/kinguser/alj;

    .line 773
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 774
    const v0, 0x7f0f00f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$d;->axt:Landroid/view/ViewGroup;

    .line 775
    const v0, 0x7f0f00ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$d;->axu:Landroid/view/View;

    .line 776
    return-void
.end method
