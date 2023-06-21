.class Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const v1, 0x7f02024a

    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->a(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->a(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->b(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->b(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->c(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->c(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02020a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->d(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->d(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07025b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$3;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->a(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)I

    .line 167
    return-void
.end method
