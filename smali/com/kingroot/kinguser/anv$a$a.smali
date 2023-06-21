.class Lcom/kingroot/kinguser/anv$a$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anv$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic aEu:Lcom/kingroot/kinguser/anv$a;

.field public aEx:Landroid/widget/TextView;

.field public aEy:Lcom/kingroot/common/uilib/ShapedImageView;

.field public amM:Landroid/widget/TextView;

.field public iconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/anv$a;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 260
    iput-object p1, p0, Lcom/kingroot/kinguser/anv$a$a;->aEu:Lcom/kingroot/kinguser/anv$a;

    .line 261
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 262
    const v0, 0x7f0f00c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anv$a$a;->aEx:Landroid/widget/TextView;

    .line 263
    const v0, 0x7f0f00c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anv$a$a;->amM:Landroid/widget/TextView;

    .line 264
    const v0, 0x7f0f0075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/ShapedImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anv$a$a;->aEy:Lcom/kingroot/common/uilib/ShapedImageView;

    .line 265
    return-void
.end method
