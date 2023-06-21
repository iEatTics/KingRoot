.class Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;
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
    .line 122
    iput-object p1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f02024a

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->a(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->a(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->b(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->b(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02020a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->c(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->c(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->d(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->d(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07025c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$2;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->a(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)I

    .line 143
    return-void
.end method
