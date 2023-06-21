.class final Lcom/kingroot/kinguser/bhk$3;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;ZLcom/kingroot/kinguser/bhk$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aME:Z

.field final synthetic bqQ:Landroid/view/View;

.field final synthetic bqR:I


# direct methods
.method constructor <init>(ZLandroid/view/View;I)V
    .locals 0

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bhk$3;->aME:Z

    iput-object p2, p0, Lcom/kingroot/kinguser/bhk$3;->bqQ:Landroid/view/View;

    iput p3, p0, Lcom/kingroot/kinguser/bhk$3;->bqR:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 437
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 438
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bhk$3;->aME:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$3;->bqQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/bhk$3;->bqR:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$3;->bqQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 445
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$3;->bqQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/bhk$3;->bqR:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/bhk$3;->bqR:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x1

    return v0
.end method
