.class Lcom/kingroot/kinguser/alj$g;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field private axE:Landroid/view/View;

.field private axF:Landroid/view/View;

.field private axG:Landroid/view/View;

.field private axH:Landroid/view/View;

.field private axI:Landroid/view/View;

.field final synthetic axi:Lcom/kingroot/kinguser/alj;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 719
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$g;->axi:Lcom/kingroot/kinguser/alj;

    .line 720
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 721
    const v0, 0x7f0f00e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$g;->axE:Landroid/view/View;

    .line 722
    const v0, 0x7f0f00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$g;->axF:Landroid/view/View;

    .line 723
    const v0, 0x7f0f00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$g;->axG:Landroid/view/View;

    .line 724
    const v0, 0x7f0f00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$g;->axH:Landroid/view/View;

    .line 725
    const v0, 0x7f0f00e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$g;->axI:Landroid/view/View;

    .line 727
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$g;->axE:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/alj$g$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/alj$g$1;-><init>(Lcom/kingroot/kinguser/alj$g;Lcom/kingroot/kinguser/alj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$g;->axF:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/alj$g$2;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/alj$g$2;-><init>(Lcom/kingroot/kinguser/alj$g;Lcom/kingroot/kinguser/alj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$g;->axG:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/alj$g$3;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/alj$g$3;-><init>(Lcom/kingroot/kinguser/alj$g;Lcom/kingroot/kinguser/alj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$g;->axH:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/alj$g$4;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/alj$g$4;-><init>(Lcom/kingroot/kinguser/alj$g;Lcom/kingroot/kinguser/alj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alj$g;)Landroid/view/View;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$g;->axI:Landroid/view/View;

    return-object v0
.end method
