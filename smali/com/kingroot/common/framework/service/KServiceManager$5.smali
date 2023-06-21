.class Lcom/kingroot/common/framework/service/KServiceManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/framework/service/KServiceManager;->bindService(Landroid/content/Intent;Lcom/kingroot/common/framework/service/IServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Hq:Lcom/kingroot/common/framework/service/KServiceManager;

.field final synthetic Hr:Lcom/kingroot/kinguser/to;

.field final synthetic Hs:Landroid/content/Intent;

.field final synthetic Ht:Lcom/kingroot/common/framework/service/IServiceConnection;


# direct methods
.method constructor <init>(Lcom/kingroot/common/framework/service/KServiceManager;Lcom/kingroot/kinguser/to;Landroid/content/Intent;Lcom/kingroot/common/framework/service/IServiceConnection;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/kingroot/common/framework/service/KServiceManager$5;->Hq:Lcom/kingroot/common/framework/service/KServiceManager;

    iput-object p2, p0, Lcom/kingroot/common/framework/service/KServiceManager$5;->Hr:Lcom/kingroot/kinguser/to;

    iput-object p3, p0, Lcom/kingroot/common/framework/service/KServiceManager$5;->Hs:Landroid/content/Intent;

    iput-object p4, p0, Lcom/kingroot/common/framework/service/KServiceManager$5;->Ht:Lcom/kingroot/common/framework/service/IServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KServiceManager$5;->Hr:Lcom/kingroot/kinguser/to;

    iget-object v1, p0, Lcom/kingroot/common/framework/service/KServiceManager$5;->Hs:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/to;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/common/framework/service/KServiceManager$5;->Ht:Lcom/kingroot/common/framework/service/IServiceConnection;

    invoke-interface {v1, v0}, Lcom/kingroot/common/framework/service/IServiceConnection;->connected(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    goto :goto_0
.end method
