.class Lcom/kingroot/kinguser/aur$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aur;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aur;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/kingroot/kinguser/aur$6;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 627
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 628
    iget-object v0, p0, Lcom/kingroot/kinguser/aur$6;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v0}, Lcom/kingroot/kinguser/aur;->a(Lcom/kingroot/kinguser/aur;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 630
    if-nez v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 636
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 637
    const-class v2, Lcom/kingroot/kinguser/activitys/RootProcessActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 638
    const-string v2, "root_process_state"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 640
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    goto :goto_0
.end method
