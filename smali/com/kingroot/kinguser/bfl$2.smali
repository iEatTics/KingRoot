.class final Lcom/kingroot/kinguser/bfl$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfl;->a(Landroid/content/Context;Landroid/os/Handler;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bmS:Landroid/os/Handler;

.field final synthetic bmT:I

.field final synthetic val$view:Landroid/view/View;

.field final synthetic yu:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kingroot/kinguser/bfl$2;->bmS:Landroid/os/Handler;

    iput-object p2, p0, Lcom/kingroot/kinguser/bfl$2;->yu:Landroid/content/Context;

    iput p3, p0, Lcom/kingroot/kinguser/bfl$2;->bmT:I

    iput-object p4, p0, Lcom/kingroot/kinguser/bfl$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/bfi;->ZV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/bfl$2;->bmS:Landroid/os/Handler;

    new-instance v1, Lcom/kingroot/kinguser/bfl$2$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfl$2$1;-><init>(Lcom/kingroot/kinguser/bfl$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method
