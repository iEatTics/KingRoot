.class Lcom/kingroot/kinguser/alj$f;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field private final axC:Landroid/widget/TextView;

.field public axD:Landroid/widget/ProgressBar;

.field final synthetic axi:Lcom/kingroot/kinguser/alj;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 701
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$f;->axi:Lcom/kingroot/kinguser/alj;

    .line 702
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 703
    const v0, 0x7f0f00c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$f;->axD:Landroid/widget/ProgressBar;

    .line 704
    const v0, 0x7f0f00c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$f;->axC:Landroid/widget/TextView;

    .line 705
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alj$f;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$f;->axC:Landroid/widget/TextView;

    return-object v0
.end method
