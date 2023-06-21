.class Lcom/kingroot/kinguser/bga$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bga;->r(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amA:Lcom/kingroot/kinguser/aic;

.field final synthetic this$0:Lcom/kingroot/kinguser/bga;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bga;Lcom/kingroot/kinguser/aic;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$1;->this$0:Lcom/kingroot/kinguser/bga;

    iput-object p2, p0, Lcom/kingroot/kinguser/bga$1;->amA:Lcom/kingroot/kinguser/aic;

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
    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$1;->amA:Lcom/kingroot/kinguser/aic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->dismiss()V

    .line 231
    packed-switch p3, :pswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 234
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1894c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$1;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->a(Lcom/kingroot/kinguser/bga;)V

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1894d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$1;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->b(Lcom/kingroot/kinguser/bga;)V

    goto :goto_0

    .line 244
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1894e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 245
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 246
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bga$1;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bga;->a(Lcom/kingroot/kinguser/bga;Z)V

    goto :goto_0

    .line 245
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
