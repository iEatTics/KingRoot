.class Lcom/kingroot/kinguser/ber$6;
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
    .line 161
    iput-object p1, p0, Lcom/kingroot/kinguser/ber$6;->blx:Lcom/kingroot/kinguser/ber;

    iput-object p2, p0, Lcom/kingroot/kinguser/ber$6;->amA:Lcom/kingroot/kinguser/aic;

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
    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/ber$6;->amA:Lcom/kingroot/kinguser/aic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->dismiss()V

    .line 166
    packed-switch p3, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ber$6;->blx:Lcom/kingroot/kinguser/ber;

    invoke-static {v0}, Lcom/kingroot/kinguser/ber;->e(Lcom/kingroot/kinguser/ber;)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
