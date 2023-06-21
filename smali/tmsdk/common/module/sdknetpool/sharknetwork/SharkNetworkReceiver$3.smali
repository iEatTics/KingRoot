.class Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->alS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cbe:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;


# direct methods
.method constructor <init>(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$3;->cbe:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$3;->cbe:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    invoke-static {v0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->c(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$3;->cbe:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    invoke-static {v0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->c(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$a;

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$a;->onDisconnected()V

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 130
    :cond_1
    return-void
.end method
