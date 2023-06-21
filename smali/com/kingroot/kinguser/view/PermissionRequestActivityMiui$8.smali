.class Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$8;
.super Landroid/os/CountDownTimer;
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
    .line 480
    iput-object p1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$8;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$8;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_0

    .line 487
    invoke-static {}, Lcom/kingroot/kinguser/bhd;->aci()I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 489
    :cond_0
    return-void
.end method
