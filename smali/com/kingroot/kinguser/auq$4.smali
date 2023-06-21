.class Lcom/kingroot/kinguser/auq$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/auq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aRV:Lcom/kingroot/kinguser/auq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auq;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/kingroot/kinguser/auq$4;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 215
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/auq$4;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-static {v0}, Lcom/kingroot/kinguser/auq;->f(Lcom/kingroot/kinguser/auq;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 218
    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 224
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 225
    const-class v2, Lcom/kingroot/kinguser/activitys/RootProcessActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 226
    const-string v2, "root_process_state"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/auq$4;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-static {v0}, Lcom/kingroot/kinguser/auq;->c(Lcom/kingroot/kinguser/auq;)Lcom/kingroot/kinguser/auh$b;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/auh$b;->bY(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method
