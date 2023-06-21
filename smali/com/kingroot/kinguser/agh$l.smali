.class Lcom/kingroot/kinguser/agh$l;
.super Lcom/kingroot/kinguser/agh$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field private ajJ:Landroid/widget/TextView;

.field private ajP:Landroid/widget/TextView;

.field final synthetic amc:Lcom/kingroot/kinguser/agh;

.field private amd:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/agh;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V
    .locals 1

    .prologue
    .line 507
    iput-object p1, p0, Lcom/kingroot/kinguser/agh$l;->amc:Lcom/kingroot/kinguser/agh;

    .line 508
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/agh$h;-><init>(Lcom/kingroot/kinguser/agh;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V

    .line 509
    const v0, 0x7f0f0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$l;->amd:Landroid/widget/ImageView;

    .line 510
    const v0, 0x7f0f00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$l;->ajP:Landroid/widget/TextView;

    .line 511
    const v0, 0x7f0f024f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$l;->ajJ:Landroid/widget/TextView;

    .line 512
    return-void
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/bcy;)V
    .locals 2

    .prologue
    .line 516
    check-cast p1, Lcom/kingroot/kinguser/bcv;

    .line 518
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$l;->amd:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bcv;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$l;->ajP:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bcv;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$l;->ajJ:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bcv;->Ny()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    return-void
.end method
