.class Lcom/kingroot/kinguser/bik$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bik;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btA:Lcom/kingroot/kinguser/bik;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bik;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x7f0a00e9

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->e(Lcom/kingroot/kinguser/bik;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->e(Lcom/kingroot/kinguser/bik;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    const v1, 0x7f0202bb

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bik;->c(Lcom/kingroot/kinguser/bik;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/bik;->d(Lcom/kingroot/kinguser/bik;I)F

    move-result v1

    float-to-int v1, v1

    .line 282
    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    iget-object v1, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v1}, Lcom/kingroot/kinguser/bik;->d(Lcom/kingroot/kinguser/bik;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->f(Lcom/kingroot/kinguser/bik;)Lcom/kingroot/kinguser/bgf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->f(Lcom/kingroot/kinguser/bik;)Lcom/kingroot/kinguser/bgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgf;->pause()V

    .line 303
    :cond_0
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18739

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 304
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->e(Lcom/kingroot/kinguser/bik;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    const v1, 0x7f020092

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bik;->c(Lcom/kingroot/kinguser/bik;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/bik;->d(Lcom/kingroot/kinguser/bik;I)F

    move-result v1

    float-to-int v1, v1

    .line 294
    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    iget-object v1, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v1}, Lcom/kingroot/kinguser/bik;->d(Lcom/kingroot/kinguser/bik;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->f(Lcom/kingroot/kinguser/bik;)Lcom/kingroot/kinguser/bgf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$5;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->f(Lcom/kingroot/kinguser/bik;)Lcom/kingroot/kinguser/bgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgf;->resume()V

    goto :goto_0
.end method
