.class Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cbe:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;


# direct methods
.method constructor <init>(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$1;->cbe:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$1;->cbe:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    invoke-static {v0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->a(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
