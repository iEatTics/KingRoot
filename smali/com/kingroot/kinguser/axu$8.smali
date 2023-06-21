.class Lcom/kingroot/kinguser/axu$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu;->r(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amA:Lcom/kingroot/kinguser/aic;

.field final synthetic bbX:Lcom/kingroot/kinguser/axu;

.field final synthetic bca:Ljava/util/List;

.field final synthetic bcb:Lcom/kingroot/kinguser/zi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu;Lcom/kingroot/kinguser/aic;Ljava/util/List;Lcom/kingroot/kinguser/zi;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$8;->bbX:Lcom/kingroot/kinguser/axu;

    iput-object p2, p0, Lcom/kingroot/kinguser/axu$8;->amA:Lcom/kingroot/kinguser/aic;

    iput-object p3, p0, Lcom/kingroot/kinguser/axu$8;->bca:Ljava/util/List;

    iput-object p4, p0, Lcom/kingroot/kinguser/axu$8;->bcb:Lcom/kingroot/kinguser/zi;

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
    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$8;->amA:Lcom/kingroot/kinguser/aic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->dismiss()V

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$8;->bca:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/kingroot/kinguser/axu$8;->bcb:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f070344

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$8;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->c(Lcom/kingroot/kinguser/axu;)Lcom/kingroot/kinguser/aul$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aul$a;->Qt()V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/axu$8;->bcb:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f070343

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18890

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$8;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->d(Lcom/kingroot/kinguser/axu;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/axu$8;->bcb:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f070342

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18893

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$8;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->c(Lcom/kingroot/kinguser/axu;)Lcom/kingroot/kinguser/aul$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aul$a;->Qu()V

    goto :goto_0
.end method
