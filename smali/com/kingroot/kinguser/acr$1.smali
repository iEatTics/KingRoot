.class Lcom/kingroot/kinguser/acr$1;
.super Lcom/kingroot/kinguser/acq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/acr;->a(Lcom/kingroot/kinguser/acr$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/acq",
        "<",
        "Ljava/lang/Object;",
        "Landroid/widget/ImageView;",
        "Lcom/kingroot/kinguser/acr$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic abf:Lcom/kingroot/kinguser/acr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/acr;IZI)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kingroot/kinguser/acr$1;->abf:Lcom/kingroot/kinguser/acr;

    invoke-direct {p0, p2, p3, p4}, Lcom/kingroot/kinguser/acq;-><init>(IZI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/acr$1;->a(Landroid/widget/ImageView;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 69
    if-nez p2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 74
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 75
    :cond_2
    instance-of v0, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 76
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 77
    :cond_3
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 78
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/acr$b;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    iget v1, p1, Lcom/kingroot/kinguser/acr$b;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 100
    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acr$1;->abf:Lcom/kingroot/kinguser/acr;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/acr;->a(Lcom/kingroot/kinguser/acr;Lcom/kingroot/kinguser/acr$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p1, Lcom/kingroot/kinguser/acr$b;->abm:Ljava/lang/Object;

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v1, p0, Lcom/kingroot/kinguser/acr$1;->abf:Lcom/kingroot/kinguser/acr;

    iget-object v0, p1, Lcom/kingroot/kinguser/acr$b;->abm:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Lcom/kingroot/kinguser/acr$b;->abn:I

    iget v3, p1, Lcom/kingroot/kinguser/acr$b;->abo:I

    invoke-static {v1, v0, v2, v3}, Lcom/kingroot/kinguser/acr;->a(Lcom/kingroot/kinguser/acr;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/kingroot/kinguser/acr$b;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/acr$1;->b(Lcom/kingroot/kinguser/acr$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 105
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 110
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :cond_2
    instance-of v1, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 112
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0

    .line 114
    :cond_3
    instance-of v1, p1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 115
    check-cast p1, Landroid/graphics/Bitmap;

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method
