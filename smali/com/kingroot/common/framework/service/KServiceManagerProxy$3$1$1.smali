.class Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;->connected(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Hx:Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;

.field final synthetic val$binder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1$1;->Hx:Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;

    iput-object p2, p0, Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1$1;->Hx:Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;

    iget-object v0, v0, Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;->this$0:Lcom/kingroot/kinguser/tq$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/tq$3;->Hv:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1$1;->Hx:Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;

    iget-object v1, v1, Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;->this$0:Lcom/kingroot/kinguser/tq$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/tq$3;->Hw:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1$1;->val$binder:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 122
    return-void
.end method
