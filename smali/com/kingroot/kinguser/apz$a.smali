.class public Lcom/kingroot/kinguser/apz$a;
.super Lcom/kingroot/kinguser/apz$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/apz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public aKt:Landroid/widget/TextView;

.field public aKu:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/kingroot/kinguser/aqf;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/apz$c;-><init>(Landroid/view/View;ILcom/kingroot/kinguser/aqf;)V

    .line 309
    const v0, 0x7f0f01a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$a;->aKt:Landroid/widget/TextView;

    .line 310
    const v0, 0x7f0f01a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$a;->aKu:Landroid/widget/TextView;

    .line 311
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$a;->aKt:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/kingroot/kinguser/blg;->jH(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 312
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$a;->aKu:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/kingroot/kinguser/blg;->jH(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 313
    return-void
.end method
