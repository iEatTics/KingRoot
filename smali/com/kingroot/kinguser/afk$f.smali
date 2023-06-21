.class abstract Lcom/kingroot/kinguser/afk$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation


# instance fields
.field public age:Landroid/widget/TextView;

.field public ahP:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const v0, 0x7f0f0148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/afk$f;->ahP:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f0f00d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/afk$f;->age:Landroid/widget/TextView;

    .line 90
    return-void
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/afk;Lcom/kingroot/kinguser/acr;)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/afk$f;->age:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/afk;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p1, Lcom/kingroot/kinguser/afk;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/afk$f;->ahP:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/kingroot/kinguser/afk;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 99
    iget-object v0, p1, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/afk$f;->ahP:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {p2, v0, v1, v2}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    goto :goto_0
.end method
