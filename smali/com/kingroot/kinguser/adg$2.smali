.class Lcom/kingroot/kinguser/adg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/adg;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qj:I

.field final synthetic acu:Lcom/kingroot/kinguser/adg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/adg;I)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/kingroot/kinguser/adg$2;->acu:Lcom/kingroot/kinguser/adg;

    iput p2, p0, Lcom/kingroot/kinguser/adg$2;->Qj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/adg$b;

    .line 102
    iget-object v1, v0, Lcom/kingroot/kinguser/adg$b;->acv:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, v0, Lcom/kingroot/kinguser/adg$b;->acv:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 104
    iget-object v1, v0, Lcom/kingroot/kinguser/adg$b;->acv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 105
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/adg$2;->acu:Lcom/kingroot/kinguser/adg;

    invoke-static {v2}, Lcom/kingroot/kinguser/adg;->a(Lcom/kingroot/kinguser/adg;)Lcom/kingroot/kinguser/adg$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/kingroot/kinguser/adg$2;->acu:Lcom/kingroot/kinguser/adg;

    iget v3, p0, Lcom/kingroot/kinguser/adg$2;->Qj:I

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/adg;->a(Lcom/kingroot/kinguser/adg;I)I

    .line 107
    iget-object v2, p0, Lcom/kingroot/kinguser/adg$2;->acu:Lcom/kingroot/kinguser/adg;

    invoke-static {v2}, Lcom/kingroot/kinguser/adg;->a(Lcom/kingroot/kinguser/adg;)Lcom/kingroot/kinguser/adg$a;

    move-result-object v2

    iget-object v0, v0, Lcom/kingroot/kinguser/adg$b;->acv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/kingroot/kinguser/adg$a;->b(Landroid/view/View;I)V

    .line 110
    :cond_0
    return-void
.end method
