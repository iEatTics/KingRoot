.class Lcom/kingroot/kinguser/agh$i;
.super Lcom/kingroot/kinguser/agh$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field private ajP:Landroid/widget/TextView;

.field private ajV:Landroid/widget/ImageView;

.field final synthetic amc:Lcom/kingroot/kinguser/agh;

.field private amd:Landroid/widget/ImageView;

.field private amj:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/agh;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V
    .locals 1

    .prologue
    .line 531
    iput-object p1, p0, Lcom/kingroot/kinguser/agh$i;->amc:Lcom/kingroot/kinguser/agh;

    .line 532
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/agh$h;-><init>(Lcom/kingroot/kinguser/agh;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V

    .line 533
    const v0, 0x7f0f0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$i;->amd:Landroid/widget/ImageView;

    .line 534
    const v0, 0x7f0f00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$i;->ajP:Landroid/widget/TextView;

    .line 535
    const v0, 0x7f0f020c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$i;->ajV:Landroid/widget/ImageView;

    .line 536
    const v0, 0x7f0f014a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$i;->amj:Landroid/widget/TextView;

    .line 537
    return-void
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/bcy;)V
    .locals 2

    .prologue
    .line 541
    check-cast p1, Lcom/kingroot/kinguser/bdf;

    .line 543
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$i;->amd:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdf;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$i;->ajP:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdf;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$i;->amj:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdf;->Yu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$i;->ajV:Landroid/widget/ImageView;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 548
    return-void
.end method
