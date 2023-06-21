.class Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->alT()V
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
    .line 136
    iput-object p1, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$4;->cbe:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/ces;->ale()Lcom/kingroot/kinguser/ces;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ces;->KD()V

    .line 149
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$4;->cbe:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    invoke-static {v0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->c(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$4;->cbe:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    invoke-static {v0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->c(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$a;

    .line 155
    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$a;->onConnected()V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 161
    :cond_2
    return-void
.end method
