.class public Lcom/kingroot/kinguser/ata$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 4

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 176
    :goto_0
    :pswitch_0
    return-void

    .line 147
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/atf;->aw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/atf;->av(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/atf;->d(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/atf;->e(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/atf;->iW(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_6
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/atf;->iX(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_7
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/atf;->iZ(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :pswitch_8
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/atf;->jb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :pswitch_9
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/atf;->bW(J)V

    goto/16 :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 140
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 128
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atf;->OH()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 130
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atf;->OI()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/atf;->ja(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/atf;->iY(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/atf;->OV()Lcom/kingroot/kinguser/atf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atf;->OP()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
