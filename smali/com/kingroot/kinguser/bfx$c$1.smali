.class Lcom/kingroot/kinguser/bfx$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfx$c;->g(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amA:Lcom/kingroot/kinguser/aic;

.field final synthetic amB:I

.field final synthetic bnP:Lcom/kingroot/kinguser/bfx$c;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfx$c;Lcom/kingroot/kinguser/aic;I)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/kingroot/kinguser/bfx$c$1;->bnP:Lcom/kingroot/kinguser/bfx$c;

    iput-object p2, p0, Lcom/kingroot/kinguser/bfx$c$1;->amA:Lcom/kingroot/kinguser/aic;

    iput p3, p0, Lcom/kingroot/kinguser/bfx$c$1;->amB:I

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
    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$c$1;->amA:Lcom/kingroot/kinguser/aic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->dismiss()V

    .line 252
    packed-switch p3, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 254
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$c$1;->bnP:Lcom/kingroot/kinguser/bfx$c;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfx$c;->a(Lcom/kingroot/kinguser/bfx$c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$c$1;->bnP:Lcom/kingroot/kinguser/bfx$c;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfx$c;->a(Lcom/kingroot/kinguser/bfx$c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfx$e;

    iget v1, p0, Lcom/kingroot/kinguser/bfx$c$1;->amB:I

    invoke-interface {v0, p2, v1}, Lcom/kingroot/kinguser/bfx$e;->q(Landroid/view/View;I)V

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$c$1;->bnP:Lcom/kingroot/kinguser/bfx$c;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfx$c;->a(Lcom/kingroot/kinguser/bfx$c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$c$1;->bnP:Lcom/kingroot/kinguser/bfx$c;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfx$c;->a(Lcom/kingroot/kinguser/bfx$c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfx$e;

    iget v1, p0, Lcom/kingroot/kinguser/bfx$c$1;->amB:I

    invoke-interface {v0, p2, v1}, Lcom/kingroot/kinguser/bfx$e;->e(Landroid/view/View;I)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
