.class public Lcom/kingroot/kinguser/agh$f;
.super Lcom/kingroot/kinguser/agh$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private ajH:Landroid/widget/ImageView;

.field private ajP:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/agh$a;-><init>(Landroid/view/View;)V

    .line 202
    const v0, 0x7f0f024b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$f;->ajH:Landroid/widget/ImageView;

    .line 203
    const v0, 0x7f0f024c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$f;->ajP:Landroid/widget/TextView;

    .line 204
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bcy;)V
    .locals 0

    .prologue
    .line 208
    check-cast p1, Lcom/kingroot/kinguser/bdd;

    .line 209
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/agh$f;->a(Lcom/kingroot/kinguser/bdd;)V

    .line 210
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bdd;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$f;->ajH:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdd;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$f;->ajP:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$f;->ajP:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdd;->getTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    return-void
.end method
