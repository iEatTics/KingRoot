.class Lcom/kingroot/kinguser/bik$8;
.super Lcom/kingroot/kinguser/bgf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bik;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btA:Lcom/kingroot/kinguser/bik;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bik;JJ)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/kingroot/kinguser/bik$8;->btA:Lcom/kingroot/kinguser/bik;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/kingroot/kinguser/bgf;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public g(JI)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x1770

    const-wide/16 v2, 0x3e8

    const v4, 0x7f0e00b8

    .line 480
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$8;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->j(Lcom/kingroot/kinguser/bik;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 481
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$8;->btA:Lcom/kingroot/kinguser/bik;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bik;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070276

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/kingroot/kinguser/bik$8;->btA:Lcom/kingroot/kinguser/bik;

    iget-object v1, v1, Lcom/kingroot/kinguser/bik;->acj:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 484
    cmp-long v0, p1, v6

    if-gez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$8;->btA:Lcom/kingroot/kinguser/bik;

    iget-object v0, v0, Lcom/kingroot/kinguser/bik;->acj:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$8;->btA:Lcom/kingroot/kinguser/bik;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bik;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070277

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/kingroot/kinguser/bik$8;->btA:Lcom/kingroot/kinguser/bik;

    iget-object v1, v1, Lcom/kingroot/kinguser/bik;->aci:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 491
    cmp-long v0, p1, v6

    if-gez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$8;->btA:Lcom/kingroot/kinguser/bik;

    iget-object v0, v0, Lcom/kingroot/kinguser/bik;->aci:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$8;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->j(Lcom/kingroot/kinguser/bik;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$8;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->h(Lcom/kingroot/kinguser/bik;)V

    .line 505
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$8;->btA:Lcom/kingroot/kinguser/bik;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bik;->dismiss()V

    .line 506
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$8;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->i(Lcom/kingroot/kinguser/bik;)V

    goto :goto_0
.end method
