.class Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;
.super Lcom/kingroot/kinguser/bgf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;JJ)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/kingroot/kinguser/bgf;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public g(JI)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x1770

    const-wide/16 v2, 0x3e8

    const v4, 0x7f0e00b4

    .line 448
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->j(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 449
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070276

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v2, p1, v2

    .line 451
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->k(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 453
    cmp-long v0, p1, v6

    if-gez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->k(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070277

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v2, p1, v2

    .line 459
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->l(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 462
    cmp-long v0, p1, v6

    if-gez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->l(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

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
    .line 470
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->j(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->h(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V

    .line 476
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->finish()V

    .line 477
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$7;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->i(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V

    goto :goto_0
.end method
