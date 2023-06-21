.class public Lcom/kingroot/kinguser/ajv$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ajv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 4

    .prologue
    .line 113
    if-nez p2, :cond_0

    .line 114
    new-instance p2, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p2, v0}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    .line 116
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 132
    :goto_0
    :pswitch_0
    return-void

    .line 118
    :pswitch_1
    new-instance v1, Lcom/kingroot/kinguser/ajw;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ajw;-><init>()V

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ajw;->gC(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_2
    new-instance v0, Lcom/kingroot/kinguser/ajw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajw;-><init>()V

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajw;->zF()V

    goto :goto_0

    .line 124
    :pswitch_3
    new-instance v0, Lcom/kingroot/kinguser/ajw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajw;-><init>()V

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajw;->zG()V

    goto :goto_0

    .line 127
    :pswitch_4
    new-instance v1, Lcom/kingroot/kinguser/ajw;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ajw;-><init>()V

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/kingroot/kinguser/ajw;->d(IILjava/lang/String;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 136
    if-nez p2, :cond_0

    .line 137
    new-instance p2, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p2, v0}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    .line 139
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 141
    :pswitch_0
    new-instance v0, Lcom/kingroot/kinguser/ajw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajw;-><init>()V

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajw;->zI()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 144
    :pswitch_1
    new-instance v1, Lcom/kingroot/kinguser/ajw;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ajw;-><init>()V

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ajw;->gD(Ljava/lang/String;)Z

    move-result v0

    .line 145
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 148
    new-instance v2, Lcom/kingroot/kinguser/ajw;

    invoke-direct {v2}, Lcom/kingroot/kinguser/ajw;-><init>()V

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/ajw;->a(Ljava/util/List;Ljava/util/Map;)V

    move-object v0, v1

    .line 149
    goto :goto_0

    .line 151
    :pswitch_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 152
    new-instance v2, Lcom/kingroot/kinguser/ajw;

    invoke-direct {v2}, Lcom/kingroot/kinguser/ajw;-><init>()V

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/ajw;->c(Ljava/util/List;Ljava/util/Map;)V

    move-object v0, v1

    .line 153
    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
