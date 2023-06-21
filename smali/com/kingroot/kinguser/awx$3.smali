.class Lcom/kingroot/kinguser/awx$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awx;->u(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVY:Lcom/kingroot/kinguser/awx;

.field final synthetic aVZ:Z

.field final synthetic aWa:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awx;ZI)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/kingroot/kinguser/awx$3;->aVY:Lcom/kingroot/kinguser/awx;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/awx$3;->aVZ:Z

    iput p3, p0, Lcom/kingroot/kinguser/awx$3;->aWa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 157
    iget-boolean v1, p0, Lcom/kingroot/kinguser/awx$3;->aVZ:Z

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/kingroot/kinguser/awx$3;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v1}, Lcom/kingroot/kinguser/awx;->b(Lcom/kingroot/kinguser/awx;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f02005e

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v1, p0, Lcom/kingroot/kinguser/awx$3;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v1}, Lcom/kingroot/kinguser/awx;->c(Lcom/kingroot/kinguser/awx;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0019

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget v1, p0, Lcom/kingroot/kinguser/awx$3;->aWa:I

    if-ge v1, v5, :cond_0

    .line 163
    iget-object v1, p0, Lcom/kingroot/kinguser/awx$3;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v1}, Lcom/kingroot/kinguser/awx;->d(Lcom/kingroot/kinguser/awx;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 164
    iget-object v1, p0, Lcom/kingroot/kinguser/awx$3;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v1}, Lcom/kingroot/kinguser/awx;->c(Lcom/kingroot/kinguser/awx;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f070032

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/awx$3;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v1}, Lcom/kingroot/kinguser/awx;->d(Lcom/kingroot/kinguser/awx;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 167
    iget-object v1, p0, Lcom/kingroot/kinguser/awx$3;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v1}, Lcom/kingroot/kinguser/awx;->c(Lcom/kingroot/kinguser/awx;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f07002b

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/kingroot/kinguser/awx$3;->aWa:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/awx$3;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v1}, Lcom/kingroot/kinguser/awx;->d(Lcom/kingroot/kinguser/awx;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 172
    iget-object v1, p0, Lcom/kingroot/kinguser/awx$3;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v1}, Lcom/kingroot/kinguser/awx;->b(Lcom/kingroot/kinguser/awx;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0201f5

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v1, p0, Lcom/kingroot/kinguser/awx$3;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v1}, Lcom/kingroot/kinguser/awx;->c(Lcom/kingroot/kinguser/awx;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0014

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v1, p0, Lcom/kingroot/kinguser/awx$3;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v1}, Lcom/kingroot/kinguser/awx;->c(Lcom/kingroot/kinguser/awx;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f070038

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
