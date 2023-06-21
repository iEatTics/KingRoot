.class Lcom/kingroot/kinguser/alj$k;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field public ajP:Landroid/widget/TextView;

.field final synthetic axi:Lcom/kingroot/kinguser/alj;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$k;->axi:Lcom/kingroot/kinguser/alj;

    .line 688
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 689
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$k;->ajP:Landroid/widget/TextView;

    .line 690
    return-void
.end method
