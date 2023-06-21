.class Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$6;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 434
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$6;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->g(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V

    .line 436
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$6;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->a(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;Z)Z

    .line 437
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$6;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->i(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;)V

    .line 438
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$6;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->finish()V

    .line 440
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/bfi;->ai(II)V

    .line 441
    return-void
.end method
