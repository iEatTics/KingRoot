.class public Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;
.super Lcom/kingroot/common/framework/service/IServiceConnection$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/tq$3;->a(ILcom/kingroot/common/framework/service/IKServiceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/tq$3;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/tq$3;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;->this$0:Lcom/kingroot/kinguser/tq$3;

    invoke-direct {p0}, Lcom/kingroot/common/framework/service/IServiceConnection$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connected(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1$1;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1$1;-><init>(Lcom/kingroot/common/framework/service/KServiceManagerProxy$3$1;Landroid/os/IBinder;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method
