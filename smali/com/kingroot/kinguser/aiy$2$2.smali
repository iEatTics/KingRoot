.class Lcom/kingroot/kinguser/aiy$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aiy$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic asT:Lcom/kingroot/kinguser/aiy$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aiy$2;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/kingroot/kinguser/aiy$2$2;->asT:Lcom/kingroot/kinguser/aiy$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 259
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 262
    iget-object v1, p0, Lcom/kingroot/kinguser/aiy$2$2;->asT:Lcom/kingroot/kinguser/aiy$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/aiy$2;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/kingroot/kinguser/activitys/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 263
    iget-object v1, p0, Lcom/kingroot/kinguser/aiy$2$2;->asT:Lcom/kingroot/kinguser/aiy$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/aiy$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/aiy$2$2;->asT:Lcom/kingroot/kinguser/aiy$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aiy$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    goto :goto_0
.end method
