.class public Lcom/kingroot/kinguser/agy$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 6

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    :pswitch_0
    return-void

    .line 144
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agz;->a(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v1

    .line 148
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/manager/IPermChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

    move-result-object v0

    .line 147
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agz;->a(Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;)V

    goto :goto_0

    .line 151
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v1

    .line 152
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/manager/IPermChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

    move-result-object v0

    .line 151
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agz;->b(Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;)V

    goto :goto_0

    .line 155
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agz;->wl()V

    goto :goto_0

    .line 158
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/kingroot/kinguser/agz;->d(Ljava/lang/String;IJ)V

    goto :goto_0

    .line 161
    :pswitch_6
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/kingroot/kinguser/agz;->a(Ljava/util/List;IJ)V

    goto :goto_0

    .line 164
    :pswitch_7
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v1

    .line 165
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/log/ILogsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/log/ILogsChangeListener;

    move-result-object v0

    .line 164
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agz;->a(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V

    goto/16 :goto_0

    .line 168
    :pswitch_8
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v1

    .line 169
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/log/ILogsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/log/ILogsChangeListener;

    move-result-object v0

    .line 168
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agz;->b(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V

    goto/16 :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    packed-switch p1, :pswitch_data_0

    .line 197
    :goto_0
    :pswitch_0
    return-object v0

    .line 179
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/agz;->ah(J)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agz;->fH(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 185
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agz;->fG(Ljava/lang/String;)Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;

    move-result-object v0

    goto :goto_0

    .line 188
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/agz;->ai(J)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 191
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agz;->dj(I)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 194
    :pswitch_6
    invoke-static {}, Lcom/kingroot/kinguser/agz;->wn()Lcom/kingroot/kinguser/agz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agz;->wo()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
