.class Lcom/kingroot/kinguser/bga$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bga;->iE(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bow:I

.field final synthetic this$0:Lcom/kingroot/kinguser/bga;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bga;I)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    iput p2, p0, Lcom/kingroot/kinguser/bga$16;->bow:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 428
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->c(Lcom/kingroot/kinguser/bga;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->d(Lcom/kingroot/kinguser/bga;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget v0, p0, Lcom/kingroot/kinguser/bga$16;->bow:I

    packed-switch v0, :pswitch_data_0

    .line 459
    :goto_0
    return-void

    .line 432
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bga;->c(Lcom/kingroot/kinguser/bga;Z)V

    .line 433
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->e(Lcom/kingroot/kinguser/bga;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 434
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->f(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0702f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->f(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0078

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 438
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/bga;->c(Lcom/kingroot/kinguser/bga;Z)V

    .line 439
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->e(Lcom/kingroot/kinguser/bga;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->f(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070504

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 441
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->f(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0014

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 444
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/bga;->c(Lcom/kingroot/kinguser/bga;Z)V

    .line 445
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->e(Lcom/kingroot/kinguser/bga;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020291

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->f(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00b7

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->f(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 448
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->g(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->g(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070333

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 450
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->abh()V

    goto/16 :goto_0

    .line 453
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bga;->c(Lcom/kingroot/kinguser/bga;Z)V

    .line 454
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->e(Lcom/kingroot/kinguser/bga;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02022d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 455
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->f(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070109

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 456
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$16;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->f(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00b8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
