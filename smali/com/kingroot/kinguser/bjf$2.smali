.class Lcom/kingroot/kinguser/bjf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjf;->r(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amA:Lcom/kingroot/kinguser/aic;

.field final synthetic bwy:Lcom/kingroot/kinguser/bjf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjf;Lcom/kingroot/kinguser/aic;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/kingroot/kinguser/bjf$2;->bwy:Lcom/kingroot/kinguser/bjf;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjf$2;->amA:Lcom/kingroot/kinguser/aic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bjf$2;->amA:Lcom/kingroot/kinguser/aic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->dismiss()V

    .line 69
    packed-switch p3, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjf$2;->bwy:Lcom/kingroot/kinguser/bjf;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjf;->b(Lcom/kingroot/kinguser/bjf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/bjf$2;->bwy:Lcom/kingroot/kinguser/bjf;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjf;->b(Lcom/kingroot/kinguser/bjf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjf$a;

    .line 75
    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/bjf$a;->K(Landroid/view/View;)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
