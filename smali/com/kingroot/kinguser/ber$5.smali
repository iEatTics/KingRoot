.class Lcom/kingroot/kinguser/ber$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ber;->r(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amA:Lcom/kingroot/kinguser/aic;

.field final synthetic blx:Lcom/kingroot/kinguser/ber;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ber;Lcom/kingroot/kinguser/aic;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/kingroot/kinguser/ber$5;->blx:Lcom/kingroot/kinguser/ber;

    iput-object p2, p0, Lcom/kingroot/kinguser/ber$5;->amA:Lcom/kingroot/kinguser/aic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/ber$5;->amA:Lcom/kingroot/kinguser/aic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->dismiss()V

    .line 138
    packed-switch p3, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ber$5;->blx:Lcom/kingroot/kinguser/ber;

    invoke-static {v0}, Lcom/kingroot/kinguser/ber;->d(Lcom/kingroot/kinguser/ber;)V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18779

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 144
    iget-object v0, p0, Lcom/kingroot/kinguser/ber$5;->blx:Lcom/kingroot/kinguser/ber;

    iget-object v1, p0, Lcom/kingroot/kinguser/ber$5;->blx:Lcom/kingroot/kinguser/ber;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ber;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ber;->a(Lcom/kingroot/kinguser/ber;Landroid/content/Context;)V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ber$5;->blx:Lcom/kingroot/kinguser/ber;

    invoke-static {v0}, Lcom/kingroot/kinguser/ber;->e(Lcom/kingroot/kinguser/ber;)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
