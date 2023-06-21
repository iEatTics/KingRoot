.class Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

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

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->e(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->e(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    const v1, 0x7f0202bb

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->b(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->c(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)F

    move-result v1

    float-to-int v1, v1

    .line 235
    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 236
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->d(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->f(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Lcom/kingroot/kinguser/bgf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->f(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Lcom/kingroot/kinguser/bgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgf;->pause()V

    .line 256
    :cond_0
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18739

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 257
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->e(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    const v1, 0x7f020092

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->b(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->c(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)F

    move-result v1

    float-to-int v1, v1

    .line 247
    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 248
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->d(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->f(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Lcom/kingroot/kinguser/bgf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$4;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->f(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Lcom/kingroot/kinguser/bgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgf;->resume()V

    goto :goto_0
.end method
