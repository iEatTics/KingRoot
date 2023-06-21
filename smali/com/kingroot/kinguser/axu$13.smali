.class Lcom/kingroot/kinguser/axu$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu;->UG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbX:Lcom/kingroot/kinguser/axu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$13;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 283
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$13;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->m(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$13;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->l(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$13;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->k(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$13;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->q(Lcom/kingroot/kinguser/axu;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020293

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$13;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->r(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07033c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$13;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->s(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    return-void
.end method
