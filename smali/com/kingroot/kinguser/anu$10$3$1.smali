.class Lcom/kingroot/kinguser/anu$10$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu$10$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEh:Lcom/kingroot/kinguser/anu$10$3;

.field final synthetic ayt:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu$10$3;I)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$10$3$1;->aEh:Lcom/kingroot/kinguser/anu$10$3;

    iput p2, p0, Lcom/kingroot/kinguser/anu$10$3$1;->ayt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10$3$1;->aEh:Lcom/kingroot/kinguser/anu$10$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10$3;->aEg:Lcom/kingroot/kinguser/anu$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anu;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 720
    if-nez v0, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10$3$1;->aEh:Lcom/kingroot/kinguser/anu$10$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/anu$10$3;->aEg:Lcom/kingroot/kinguser/anu$10;

    iget-object v1, v1, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/anu;->oP()Z

    move-result v1

    if-nez v1, :cond_0

    .line 728
    const-string v1, "show_well_chosen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 729
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10$3$1;->aEh:Lcom/kingroot/kinguser/anu$10$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10$3;->aEg:Lcom/kingroot/kinguser/anu$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->w(Lcom/kingroot/kinguser/anu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10$3$1;->aEh:Lcom/kingroot/kinguser/anu$10$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10$3;->aEg:Lcom/kingroot/kinguser/anu$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anu;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/anu$10$3$1;->ayt:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;->f(Landroid/content/Context;I)V

    .line 731
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10$3$1;->aEh:Lcom/kingroot/kinguser/anu$10$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10$3;->aEg:Lcom/kingroot/kinguser/anu$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;Z)Z

    goto :goto_0
.end method
