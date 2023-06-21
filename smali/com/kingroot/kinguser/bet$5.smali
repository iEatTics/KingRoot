.class Lcom/kingroot/kinguser/bet$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bet;->r(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blE:Lcom/kingroot/kinguser/bet;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bet;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/kingroot/kinguser/bet$5;->blE:Lcom/kingroot/kinguser/bet;

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
    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$5;->blE:Lcom/kingroot/kinguser/bet;

    invoke-static {v0}, Lcom/kingroot/kinguser/bet;->b(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/kinguser/aib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aib;->dismiss()V

    .line 181
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 182
    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    :pswitch_0
    return-void

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$5;->blE:Lcom/kingroot/kinguser/bet;

    invoke-static {v0}, Lcom/kingroot/kinguser/bet;->c(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/kinguser/axm;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/kingroot/kinguser/axm;->Un()I

    .line 190
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/kingroot/kinguser/bet$5;->blE:Lcom/kingroot/kinguser/bet;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bet;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/activitys/KUCommonSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/kingroot/kinguser/bet$5;->blE:Lcom/kingroot/kinguser/bet;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/bgn;->abM()V

    .line 196
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18745

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    .line 199
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$5;->blE:Lcom/kingroot/kinguser/bet;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AboutActivity;->aK(Landroid/content/Context;)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
