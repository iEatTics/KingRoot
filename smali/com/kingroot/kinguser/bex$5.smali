.class Lcom/kingroot/kinguser/bex$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bex;->r(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amA:Lcom/kingroot/kinguser/aic;

.field final synthetic bca:Ljava/util/List;

.field final synthetic bcb:Lcom/kingroot/kinguser/zi;

.field final synthetic blL:Lcom/kingroot/kinguser/bex;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bex;Lcom/kingroot/kinguser/aic;Ljava/util/List;Lcom/kingroot/kinguser/zi;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/kingroot/kinguser/bex$5;->blL:Lcom/kingroot/kinguser/bex;

    iput-object p2, p0, Lcom/kingroot/kinguser/bex$5;->amA:Lcom/kingroot/kinguser/aic;

    iput-object p3, p0, Lcom/kingroot/kinguser/bex$5;->bca:Ljava/util/List;

    iput-object p4, p0, Lcom/kingroot/kinguser/bex$5;->bcb:Lcom/kingroot/kinguser/zi;

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
    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/bex$5;->amA:Lcom/kingroot/kinguser/aic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->dismiss()V

    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/bex$5;->bca:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/kingroot/kinguser/bex$5;->bcb:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f0702b9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/bex$5;->blL:Lcom/kingroot/kinguser/bex;

    invoke-static {v0}, Lcom/kingroot/kinguser/bex;->c(Lcom/kingroot/kinguser/bex;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bex$5;->bcb:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f0702ec

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18877

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/bex$5;->blL:Lcom/kingroot/kinguser/bex;

    iget-object v1, p0, Lcom/kingroot/kinguser/bex$5;->blL:Lcom/kingroot/kinguser/bex;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bex;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bex;->a(Lcom/kingroot/kinguser/bex;Landroid/content/Context;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bex$5;->bcb:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f0702dd

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18876

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/bex$5;->blL:Lcom/kingroot/kinguser/bex;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bex;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AntiInjectActivity;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/bex$5;->bcb:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f07044e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/bex$5;->blL:Lcom/kingroot/kinguser/bex;

    invoke-static {v0}, Lcom/kingroot/kinguser/bex;->d(Lcom/kingroot/kinguser/bex;)V

    goto :goto_0

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/bex$5;->bcb:Lcom/kingroot/kinguser/zi;

    const v2, 0x7f0704e9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/bex$5;->blL:Lcom/kingroot/kinguser/bex;

    invoke-static {v0}, Lcom/kingroot/kinguser/bex;->e(Lcom/kingroot/kinguser/bex;)V

    goto :goto_0
.end method
