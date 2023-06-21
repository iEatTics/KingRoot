.class public final Lcom/kingroot/kinguser/tq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/tq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/tq;->a(Landroid/content/Intent;Landroid/content/ServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic Hs:Landroid/content/Intent;

.field public final synthetic Hv:Landroid/content/ServiceConnection;

.field public final synthetic Hw:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kingroot/kinguser/tq$3;->Hs:Landroid/content/Intent;

    iput-object p2, p0, Lcom/kingroot/kinguser/tq$3;->Hv:Landroid/content/ServiceConnection;

    iput-object p3, p0, Lcom/kingroot/kinguser/tq$3;->Hw:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/framework/service/IKServiceManager;)V
    .locals 2

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/tq$3;->Hs:Landroid/content/Intent;

    new-instance v1, Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;

    invoke-direct {v1, p0}, Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;-><init>(Lcom/kingroot/kinguser/tq$3;)V

    invoke-interface {p2, v0, v1}, Lcom/kingroot/common/framework/service/IKServiceManager;->bindService(Landroid/content/Intent;Lcom/kingroot/common/framework/service/IServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method
