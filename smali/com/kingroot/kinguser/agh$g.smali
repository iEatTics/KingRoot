.class Lcom/kingroot/kinguser/agh$g;
.super Lcom/kingroot/kinguser/agh$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field private ajP:Landroid/widget/TextView;

.field final synthetic amc:Lcom/kingroot/kinguser/agh;

.field private amd:Landroid/widget/ImageView;

.field private ame:Landroid/widget/ImageView;

.field private amf:Landroid/widget/ImageView;

.field private amg:Landroid/widget/ImageView;

.field private amh:Landroid/widget/ImageView;

.field private ami:Landroid/widget/TextView;

.field private amj:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/agh;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V
    .locals 2

    .prologue
    .line 566
    iput-object p1, p0, Lcom/kingroot/kinguser/agh$g;->amc:Lcom/kingroot/kinguser/agh;

    .line 567
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/agh$h;-><init>(Lcom/kingroot/kinguser/agh;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V

    .line 569
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$g;->itemView:Landroid/view/View;

    const v1, 0x7f0f0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$g;->amd:Landroid/widget/ImageView;

    .line 570
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$g;->itemView:Landroid/view/View;

    const v1, 0x7f0f00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$g;->ajP:Landroid/widget/TextView;

    .line 572
    const v0, 0x7f0f0126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 574
    const v1, 0x7f0f0127

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/agh$g;->ame:Landroid/widget/ImageView;

    .line 575
    const v1, 0x7f0f0128

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/agh$g;->amf:Landroid/widget/ImageView;

    .line 576
    const v1, 0x7f0f0129

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingroot/kinguser/agh$g;->amg:Landroid/widget/ImageView;

    .line 577
    const v1, 0x7f0f012a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$g;->amh:Landroid/widget/ImageView;

    .line 579
    const v0, 0x7f0f012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$g;->ami:Landroid/widget/TextView;

    .line 581
    const v0, 0x7f0f014a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$g;->amj:Landroid/widget/TextView;

    .line 582
    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 612
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    invoke-static {}, Lcom/kingroot/kinguser/yr;->pb()Lcom/kingroot/kinguser/acr;

    move-result-object v1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v2, 0x7f02012b

    invoke-virtual {v1, v0, p1, v2}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v0

    .line 615
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/bcy;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 586
    check-cast p1, Lcom/kingroot/kinguser/bcx;

    .line 587
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bcx;->Yq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 588
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$g;->ami:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$g;->amd:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bcx;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 595
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$g;->ajP:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bcx;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0702d8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 600
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bcx;->Yq()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 597
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/kingroot/kinguser/agh$g;->amj:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$g;->ame:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bcx;->Yq()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/kingroot/kinguser/agh$g;->a(Landroid/widget/ImageView;Ljava/util/List;I)V

    .line 605
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$g;->amf:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bcx;->Yq()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/kingroot/kinguser/agh$g;->a(Landroid/widget/ImageView;Ljava/util/List;I)V

    .line 606
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$g;->amg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bcx;->Yq()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/kingroot/kinguser/agh$g;->a(Landroid/widget/ImageView;Ljava/util/List;I)V

    .line 607
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$g;->amh:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bcx;->Yq()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/kingroot/kinguser/agh$g;->a(Landroid/widget/ImageView;Ljava/util/List;I)V

    .line 608
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$g;->ami:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
