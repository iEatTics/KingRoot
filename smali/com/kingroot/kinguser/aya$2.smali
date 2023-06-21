.class Lcom/kingroot/kinguser/aya$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcz:Lcom/kingroot/kinguser/aya;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aya;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/kingroot/kinguser/aya$2;->bcz:Lcom/kingroot/kinguser/aya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/aya$2;->bcz:Lcom/kingroot/kinguser/aya;

    iget-object v0, v0, Lcom/kingroot/kinguser/aya;->alr:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/auc;

    .line 140
    iget v0, v0, Lcom/kingroot/kinguser/auc;->aQX:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aya$2;->bcz:Lcom/kingroot/kinguser/aya;

    new-instance v1, Lcom/kingroot/kinguser/big;

    iget-object v2, p0, Lcom/kingroot/kinguser/aya$2;->bcz:Lcom/kingroot/kinguser/aya;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aya;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/big;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aya;->a(Lcom/kingroot/kinguser/aya;Lcom/kingroot/kinguser/big;)Lcom/kingroot/kinguser/big;

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/aya$2;->bcz:Lcom/kingroot/kinguser/aya;

    invoke-static {v0}, Lcom/kingroot/kinguser/aya;->a(Lcom/kingroot/kinguser/aya;)Lcom/kingroot/kinguser/big;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->show()V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/aya$2;->bcz:Lcom/kingroot/kinguser/aya;

    invoke-static {v0}, Lcom/kingroot/kinguser/aya;->a(Lcom/kingroot/kinguser/aya;)Lcom/kingroot/kinguser/big;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0701fc

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->setTitleText(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/aya$2;->bcz:Lcom/kingroot/kinguser/aya;

    invoke-static {v0}, Lcom/kingroot/kinguser/aya;->a(Lcom/kingroot/kinguser/aya;)Lcom/kingroot/kinguser/big;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->lK(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/aya$2;->bcz:Lcom/kingroot/kinguser/aya;

    invoke-static {v0}, Lcom/kingroot/kinguser/aya;->a(Lcom/kingroot/kinguser/aya;)Lcom/kingroot/kinguser/big;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c5

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->lL(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/aya$2;->bcz:Lcom/kingroot/kinguser/aya;

    invoke-static {v0}, Lcom/kingroot/kinguser/aya;->a(Lcom/kingroot/kinguser/aya;)Lcom/kingroot/kinguser/big;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/aya$2$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/aya$2$1;-><init>(Lcom/kingroot/kinguser/aya$2;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->b(Lcom/kingroot/kinguser/bid$b;)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
