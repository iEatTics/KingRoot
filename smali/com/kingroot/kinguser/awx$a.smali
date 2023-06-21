.class Lcom/kingroot/kinguser/awx$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic aVY:Lcom/kingroot/kinguser/awx;

.field aWe:Landroid/widget/ImageView;

.field aWf:I

.field aWg:I

.field ajG:Landroid/view/View;

.field ajH:Landroid/widget/ImageView;

.field ajI:Landroid/widget/TextView;

.field ajJ:Landroid/widget/TextView;

.field type:I


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/awx;ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 266
    iput-object p1, p0, Lcom/kingroot/kinguser/awx$a;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput p2, p0, Lcom/kingroot/kinguser/awx$a;->type:I

    .line 268
    iput-object p3, p0, Lcom/kingroot/kinguser/awx$a;->ajG:Landroid/view/View;

    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$a;->ajG:Landroid/view/View;

    const v1, 0x7f0f0075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awx$a;->ajH:Landroid/widget/ImageView;

    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$a;->ajG:Landroid/view/View;

    const v1, 0x7f0f0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awx$a;->ajI:Landroid/widget/TextView;

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$a;->ajG:Landroid/view/View;

    const v1, 0x7f0f0205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awx$a;->ajJ:Landroid/widget/TextView;

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$a;->ajG:Landroid/view/View;

    const v1, 0x7f0f0206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awx$a;->aWe:Landroid/widget/ImageView;

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$a;->ajJ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/awx$a;->aWf:I

    .line 276
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e00b8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/awx$a;->aWg:I

    .line 278
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$a;->ajG:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/awx$a$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/awx$a$1;-><init>(Lcom/kingroot/kinguser/awx$a;Lcom/kingroot/kinguser/awx;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    return-void
.end method


# virtual methods
.method public dn(Z)Lcom/kingroot/kinguser/awx$a;
    .locals 2

    .prologue
    .line 306
    iget-object v1, p0, Lcom/kingroot/kinguser/awx$a;->ajJ:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/awx$a;->aWg:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    return-object p0

    .line 306
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/awx$a;->aWf:I

    goto :goto_0
.end method

.method do(Z)Lcom/kingroot/kinguser/awx$a;
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 312
    iget-object v1, p0, Lcom/kingroot/kinguser/awx$a;->aWe:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    return-object p0

    .line 312
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public g(Landroid/graphics/drawable/Drawable;)Lcom/kingroot/kinguser/awx$a;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$a;->ajH:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    return-object p0
.end method

.method public jV(Ljava/lang/String;)Lcom/kingroot/kinguser/awx$a;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$a;->ajI:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    return-object p0
.end method

.method public jW(Ljava/lang/String;)Lcom/kingroot/kinguser/awx$a;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$a;->ajJ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    return-object p0
.end method
