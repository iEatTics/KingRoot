.class Lcom/kingroot/kinguser/alj$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public afV:Landroid/widget/TextView;

.field public awb:Landroid/widget/ImageView;

.field public awc:Landroid/widget/TextView;

.field public awd:Landroid/widget/TextView;

.field public awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field public awh:Landroid/widget/LinearLayout;

.field final synthetic axi:Lcom/kingroot/kinguser/alj;

.field public axs:Lcom/kingroot/kinguser/amd;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 649
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$a;->axi:Lcom/kingroot/kinguser/alj;

    .line 650
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 651
    const v0, 0x7f0f00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$a;->afV:Landroid/widget/TextView;

    .line 652
    const v0, 0x7f0f0220

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$a;->awc:Landroid/widget/TextView;

    .line 653
    const v0, 0x7f0f0221

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$a;->awd:Landroid/widget/TextView;

    .line 654
    const v0, 0x7f0f0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$a;->awb:Landroid/widget/ImageView;

    .line 655
    const v0, 0x7f0f00f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 656
    const v0, 0x7f0f0222

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$a;->awh:Landroid/widget/LinearLayout;

    .line 657
    return-void
.end method
