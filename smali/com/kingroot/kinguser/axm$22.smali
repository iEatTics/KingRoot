.class Lcom/kingroot/kinguser/axm$22;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$22;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/bfi;->ZV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$22;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axm$22$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$22$1;-><init>(Lcom/kingroot/kinguser/axm$22;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0
.end method
