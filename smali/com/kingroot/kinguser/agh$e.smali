.class Lcom/kingroot/kinguser/agh$e;
.super Lcom/kingroot/kinguser/agh$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic amc:Lcom/kingroot/kinguser/agh;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/agh;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/kingroot/kinguser/agh$e;->amc:Lcom/kingroot/kinguser/agh;

    .line 433
    invoke-direct {p0, p2, p3}, Lcom/kingroot/kinguser/agh$b;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V

    .line 434
    return-void
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/bcy;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 438
    move-object v0, p1

    check-cast v0, Lcom/kingroot/kinguser/bdc;

    .line 440
    instance-of v1, p1, Lcom/kingroot/kinguser/bdi;

    if-eqz v1, :cond_0

    .line 442
    check-cast p1, Lcom/kingroot/kinguser/bdi;

    .line 443
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdi;->YC()Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    const-string v2, "RootSafe"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/apd;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/agh$e;->ajH:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdc;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    iget-object v1, p0, Lcom/kingroot/kinguser/agh$e;->ajP:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdc;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v1, p0, Lcom/kingroot/kinguser/agh$e;->alM:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdc;->Ny()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v1, p0, Lcom/kingroot/kinguser/agh$e;->alN:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdc;->Yr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$e;->alL:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$e;->alP:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$e;->ajL:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$e;->alO:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$e;->alO:Landroid/widget/Button;

    const v1, 0x7f0702d9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 458
    return-void
.end method
