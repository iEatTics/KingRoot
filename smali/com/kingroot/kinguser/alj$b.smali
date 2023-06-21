.class Lcom/kingroot/kinguser/alj$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field ajP:Landroid/widget/TextView;

.field amj:Landroid/widget/TextView;

.field final synthetic axi:Lcom/kingroot/kinguser/alj;

.field axt:Landroid/view/ViewGroup;

.field axu:Landroid/view/View;

.field axv:Lcom/kingcore/uilib/TextRoundCornerProgressBar;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 807
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$b;->axi:Lcom/kingroot/kinguser/alj;

    .line 808
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 809
    const v0, 0x7f0f00f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$b;->axt:Landroid/view/ViewGroup;

    .line 810
    const v0, 0x7f0f00ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$b;->axu:Landroid/view/View;

    .line 811
    const v0, 0x7f0f00f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$b;->axv:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 812
    const v0, 0x7f0f0076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$b;->ajP:Landroid/widget/TextView;

    .line 813
    const v0, 0x7f0f00f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$b;->amj:Landroid/widget/TextView;

    .line 814
    return-void
.end method
