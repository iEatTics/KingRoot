.class Lcom/kingroot/kinguser/alc$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public NE:Landroid/widget/ImageView;

.field final synthetic avR:Lcom/kingroot/kinguser/alc;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alc;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kingroot/kinguser/alc$b;->avR:Lcom/kingroot/kinguser/alc;

    .line 66
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    const v0, 0x7f0f021b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alc$b;->NE:Landroid/widget/ImageView;

    .line 68
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/amc;)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/kingroot/kinguser/amc;->Ig()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/alc$b;->NE:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/amc;->Ig()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alc$b;->NE:Landroid/widget/ImageView;

    new-instance v1, Lcom/kingroot/kinguser/alc$b$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/alc$b$1;-><init>(Lcom/kingroot/kinguser/alc$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method
