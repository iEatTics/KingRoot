.class Lcom/kingroot/kinguser/cee$a;
.super Ltmsdk/common/BaseTMSReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field final synthetic bXW:Lcom/kingroot/kinguser/cee;

.field public bcH:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cee;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    iput-object p1, p0, Lcom/kingroot/kinguser/cee$a;->bXW:Lcom/kingroot/kinguser/cee;

    invoke-direct {p0}, Ltmsdk/common/BaseTMSReceiver;-><init>()V

    .line 125
    iput-object v0, p0, Lcom/kingroot/kinguser/cee$a;->action:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/kingroot/kinguser/cee$a;->bcH:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/cee$a;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/cee$a;->bcH:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/kingroot/kinguser/cee$a;->bXW:Lcom/kingroot/kinguser/cee;

    invoke-static {v1}, Lcom/kingroot/kinguser/cee;->a(Lcom/kingroot/kinguser/cee;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/cee$a;->bcH:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    iget-object v1, p0, Lcom/kingroot/kinguser/cee$a;->bXW:Lcom/kingroot/kinguser/cee;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/cee;->nI(Ljava/lang/String;)V

    goto :goto_0
.end method
