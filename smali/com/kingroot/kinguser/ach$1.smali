.class Lcom/kingroot/kinguser/ach$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ach;->r(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aae:Ljava/lang/String;

.field final synthetic aaf:Lcom/kingroot/kinguser/ach;

.field final synthetic yu:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ach;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kingroot/kinguser/ach$1;->aaf:Lcom/kingroot/kinguser/ach;

    iput-object p2, p0, Lcom/kingroot/kinguser/ach$1;->yu:Landroid/content/Context;

    iput-object p3, p0, Lcom/kingroot/kinguser/ach$1;->aae:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.qqpimsecure.TMS_LITE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v1, "com.tencent.qqpimsecure"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "service_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/ach$1;->yu:Landroid/content/Context;

    new-instance v2, Lcom/kingroot/kinguser/ach$1$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/ach$1$1;-><init>(Lcom/kingroot/kinguser/ach$1;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :goto_1
    return-void

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    goto :goto_1
.end method
