.class public Lcom/kingroot/kinguser/awn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 7

    .prologue
    .line 149
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 151
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/awo;->Tc()Lcom/kingroot/kinguser/awo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awo;->init()V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/awo;->Tc()Lcom/kingroot/kinguser/awo;

    move-result-object v3

    .line 155
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 156
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 158
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;

    move-result-object v2

    .line 154
    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/kingroot/kinguser/awo;->a(ILjava/lang/String;[BLcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;)V

    goto :goto_0

    .line 161
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/awo;->Tc()Lcom/kingroot/kinguser/awo;

    move-result-object v0

    .line 162
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 163
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 165
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 166
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 167
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v6}, Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;

    move-result-object v6

    .line 161
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/awo;->a(ILjava/lang/String;[BLjava/lang/String;[BLcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 176
    packed-switch p1, :pswitch_data_0

    .line 181
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 179
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/awo;->Tc()Lcom/kingroot/kinguser/awo;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/c;

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/awo;->b(Ljava/util/List;Lcom/kingroot/kinguser/c;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
