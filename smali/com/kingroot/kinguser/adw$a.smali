.class public Lcom/kingroot/kinguser/adw$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/adw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 2

    .prologue
    .line 224
    sparse-switch p1, :sswitch_data_0

    .line 263
    :goto_0
    return-void

    .line 226
    :sswitch_0
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->cC(I)V

    goto :goto_0

    .line 230
    :sswitch_1
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->b(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V

    goto :goto_0

    .line 234
    :sswitch_2
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->c(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V

    goto :goto_0

    .line 238
    :sswitch_3
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->ts()V

    goto :goto_0

    .line 242
    :sswitch_4
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tt()V

    goto :goto_0

    .line 246
    :sswitch_5
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tu()V

    goto :goto_0

    .line 250
    :sswitch_6
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->cD(I)V

    goto :goto_0

    .line 254
    :sswitch_7
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->cE(I)V

    goto :goto_0

    .line 224
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xb -> :sswitch_0
        0x14 -> :sswitch_6
        0x16 -> :sswitch_7
    .end sparse-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 267
    packed-switch p1, :pswitch_data_0

    .line 320
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 269
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 272
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v4

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 272
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 278
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->td()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 281
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->te()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 284
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->eF(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 287
    :pswitch_6
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tq()Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    move-result-object v0

    goto :goto_0

    .line 290
    :pswitch_7
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 293
    :pswitch_8
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tf()Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 296
    :pswitch_9
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->ti()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 299
    :pswitch_a
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tj()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 302
    :pswitch_b
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 305
    :pswitch_c
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tl()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 308
    :pswitch_d
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 311
    :pswitch_e
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 314
    :pswitch_f
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->th()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method
