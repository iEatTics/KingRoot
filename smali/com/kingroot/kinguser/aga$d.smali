.class public Lcom/kingroot/kinguser/aga$d;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field ajG:Landroid/view/View;

.field ajH:Landroid/widget/ImageView;

.field ajI:Landroid/widget/TextView;

.field ajJ:Landroid/widget/TextView;

.field ajK:Landroid/view/View;

.field ajL:Landroid/view/View;

.field final synthetic ajM:Lcom/kingroot/kinguser/aga;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aga;Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-object p1, p0, Lcom/kingroot/kinguser/aga$d;->ajM:Lcom/kingroot/kinguser/aga;

    .line 100
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 92
    iput-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajG:Landroid/view/View;

    .line 93
    iput-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajH:Landroid/widget/ImageView;

    .line 94
    iput-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajI:Landroid/widget/TextView;

    .line 95
    iput-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajJ:Landroid/widget/TextView;

    .line 96
    iput-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajK:Landroid/view/View;

    .line 97
    iput-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajL:Landroid/view/View;

    .line 101
    const v0, 0x7f0f0005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajG:Landroid/view/View;

    .line 102
    const v0, 0x7f0f0075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajH:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0f0204

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajI:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0f0205

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajJ:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0f0208

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajK:Landroid/view/View;

    .line 106
    const v0, 0x7f0f00ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajL:Landroid/view/View;

    .line 107
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aga$c;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p1, Lcom/kingroot/kinguser/aga$c;->packageName:Ljava/lang/String;

    .line 112
    iget-object v3, p0, Lcom/kingroot/kinguser/aga$d;->ajG:Landroid/view/View;

    new-instance v4, Lcom/kingroot/kinguser/aga$d$1;

    invoke-direct {v4, p0, v0}, Lcom/kingroot/kinguser/aga$d$1;-><init>(Lcom/kingroot/kinguser/aga$d;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajH:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/kingroot/kinguser/aga$c;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajI:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/kingroot/kinguser/aga$c;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajJ:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/kingroot/kinguser/aga$c;->desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v3, p0, Lcom/kingroot/kinguser/aga$d;->ajK:Landroid/view/View;

    iget-boolean v0, p1, Lcom/kingroot/kinguser/aga$c;->ajD:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-boolean v0, p1, Lcom/kingroot/kinguser/aga$c;->ajE:Z

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajL:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 125
    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aga$d;->ajL:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
