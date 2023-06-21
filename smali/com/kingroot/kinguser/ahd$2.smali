.class Lcom/kingroot/kinguser/ahd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ahd;->r(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amA:Lcom/kingroot/kinguser/aic;

.field final synthetic this$0:Lcom/kingroot/kinguser/ahd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ahd;Lcom/kingroot/kinguser/aic;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/kingroot/kinguser/ahd$2;->this$0:Lcom/kingroot/kinguser/ahd;

    iput-object p2, p0, Lcom/kingroot/kinguser/ahd$2;->amA:Lcom/kingroot/kinguser/aic;

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
    .line 396
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd$2;->amA:Lcom/kingroot/kinguser/aic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->dismiss()V

    .line 397
    packed-switch p3, :pswitch_data_0

    .line 402
    :goto_0
    return-void

    .line 399
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd$2;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahd;->a(Lcom/kingroot/kinguser/ahd;)V

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
