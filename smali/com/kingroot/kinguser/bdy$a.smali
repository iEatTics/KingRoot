.class public Lcom/kingroot/kinguser/bdy$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bdy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 0

    .prologue
    .line 129
    .line 134
    return-void
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0xa

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 195
    :pswitch_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    .line 140
    :pswitch_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/bdy;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TransactCode_testAgrs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    :cond_1
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_2

    .line 147
    :cond_2
    if-nez v1, :cond_1

    .line 152
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/bdy;->YX()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 154
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/bdy;->YX()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 156
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/bdy;->YX()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 158
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/bdy;->YX()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 160
    :pswitch_6
    invoke-static {}, Lcom/kingroot/kinguser/bdy;->YX()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_7
    invoke-static {}, Lcom/kingroot/kinguser/bdy;->YX()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 165
    :pswitch_8
    const-string v0, "xx"

    goto :goto_0

    .line 167
    :pswitch_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 169
    :pswitch_a
    new-instance v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;

    invoke-direct {v0}, Lcom/kingroot/kingmaster/network/updata/CheckResult;-><init>()V

    goto :goto_0

    .line 172
    :pswitch_b
    new-array v0, v4, [B

    goto :goto_0

    .line 174
    :pswitch_c
    new-array v0, v4, [Ljava/lang/String;

    goto :goto_0

    .line 176
    :pswitch_d
    new-instance v0, Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;

    invoke-direct {v0}, Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;-><init>()V

    goto/16 :goto_0

    .line 178
    :pswitch_e
    new-array v0, v4, [Ljava/lang/Object;

    goto/16 :goto_0

    .line 180
    :pswitch_f
    new-array v0, v4, [I

    goto/16 :goto_0

    .line 182
    :pswitch_10
    new-array v0, v4, [J

    goto/16 :goto_0

    .line 184
    :pswitch_11
    new-instance v0, Ljava/lang/Byte;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :pswitch_12
    new-array v0, v4, [Lcom/kingroot/kingmaster/network/updata/CheckResult;

    goto/16 :goto_0

    .line 188
    :pswitch_13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_0

    .line 190
    :pswitch_14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_0

    .line 192
    :pswitch_15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
    .end packed-switch
.end method
