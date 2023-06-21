.class public Lcom/kingroot/kinguser/bfp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 3

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    :pswitch_0
    return-void

    .line 109
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/bfq;->aaB()Lcom/kingroot/kinguser/bfq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/urlcheck/aidl/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/urlcheck/aidl/ICallback;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/bfq;->a(ZLcom/kingroot/kinguser/urlcheck/aidl/ICallback;)V

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/bfq;->aaB()Lcom/kingroot/kinguser/bfq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bfq;->addRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V

    goto :goto_0

    .line 115
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/bfq;->aaB()Lcom/kingroot/kinguser/bfq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bfq;->deleteRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V

    goto :goto_0

    .line 118
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/bfq;->aaB()Lcom/kingroot/kinguser/bfq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfq;->aaz()V

    goto :goto_0

    .line 121
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/bfq;->aaB()Lcom/kingroot/kinguser/bfq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bfq;->bP(Ljava/util/List;)V

    goto :goto_0

    .line 124
    :pswitch_6
    invoke-static {}, Lcom/kingroot/kinguser/bfq;->aaB()Lcom/kingroot/kinguser/bfq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bfq;->bQ(Ljava/util/List;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    sparse-switch p1, :sswitch_data_0

    .line 140
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 133
    :sswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/bfq;->aaB()Lcom/kingroot/kinguser/bfq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfq;->isEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 135
    :sswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/bfq;->aaB()Lcom/kingroot/kinguser/bfq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfq;->getSharkGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :sswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/bfq;->aaB()Lcom/kingroot/kinguser/bfq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfq;->aaD()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method
