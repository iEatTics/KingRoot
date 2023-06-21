.class Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$1;
.super Lcom/kingroot/kinguser/bgf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic apb:Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;JJ)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$1;->apb:Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/kingroot/kinguser/bgf;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public g(JI)V
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$1;->apb:Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070325

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x3e8

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

    .line 78
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$1;->apb:Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->b(Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const-wide/16 v0, 0x1770

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$1;->apb:Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->b(Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00b8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$1;->apb:Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;ZZ)V

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity$1;->apb:Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/advance/install/ui/SilentInstallDialogActivity;->finish()V

    .line 88
    return-void
.end method
