.class Lcom/kingroot/kinguser/agi$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/agi$b;->g(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amA:Lcom/kingroot/kinguser/aic;

.field final synthetic amB:I

.field final synthetic amC:Lcom/kingroot/kinguser/agi$b;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agi$b;Lcom/kingroot/kinguser/aic;I)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/kingroot/kinguser/agi$b$1;->amC:Lcom/kingroot/kinguser/agi$b;

    iput-object p2, p0, Lcom/kingroot/kinguser/agi$b$1;->amA:Lcom/kingroot/kinguser/aic;

    iput p3, p0, Lcom/kingroot/kinguser/agi$b$1;->amB:I

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
    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/agi$b$1;->amA:Lcom/kingroot/kinguser/aic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->dismiss()V

    .line 131
    const/4 v0, -0x1

    .line 132
    packed-switch p3, :pswitch_data_0

    :goto_0
    move v1, v0

    .line 146
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/agi$b$1;->amC:Lcom/kingroot/kinguser/agi$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/agi$b;->amz:Lcom/kingroot/kinguser/agi;

    invoke-static {v0}, Lcom/kingroot/kinguser/agi;->a(Lcom/kingroot/kinguser/agi;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/agi$b$1;->amC:Lcom/kingroot/kinguser/agi$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/agi$b;->amz:Lcom/kingroot/kinguser/agi;

    invoke-static {v0}, Lcom/kingroot/kinguser/agi;->a(Lcom/kingroot/kinguser/agi;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agi$a;

    iget v2, p0, Lcom/kingroot/kinguser/agi$b$1;->amB:I

    invoke-interface {v0, v2, v1}, Lcom/kingroot/kinguser/agi$a;->K(II)V

    .line 150
    :cond_0
    return-void

    .line 134
    :pswitch_0
    const/4 v0, 0x1

    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18887

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    move v1, v0

    .line 136
    goto :goto_1

    .line 138
    :pswitch_1
    const/4 v0, 0x0

    .line 139
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18888

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    move v1, v0

    .line 140
    goto :goto_1

    .line 142
    :pswitch_2
    const/4 v0, 0x2

    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18889

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
