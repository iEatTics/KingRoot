.class Lcom/kingroot/kinguser/auq$3;
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
    .line 171
    iput-object p1, p0, Lcom/kingroot/kinguser/auq$3;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/auq$3;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-static {v0}, Lcom/kingroot/kinguser/auq;->f(Lcom/kingroot/kinguser/auq;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 177
    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 183
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 184
    const-class v2, Lcom/kingroot/kinguser/activitys/RootProcessActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 185
    const-string v2, "root_process_state"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method
