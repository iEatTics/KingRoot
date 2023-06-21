.class final Lcom/kingroot/kinguser/bfl$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfl;->a(Landroid/os/Handler;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bmS:Landroid/os/Handler;

.field final synthetic bmT:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/os/Handler;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/kingroot/kinguser/bfl$1;->bmS:Landroid/os/Handler;

    iput p2, p0, Lcom/kingroot/kinguser/bfl$1;->bmT:I

    iput-object p3, p0, Lcom/kingroot/kinguser/bfl$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 23
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/bfi;->ZV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/bfl$1;->bmS:Landroid/os/Handler;

    new-instance v1, Lcom/kingroot/kinguser/bfl$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfl$1$1;-><init>(Lcom/kingroot/kinguser/bfl$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method
