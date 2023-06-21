.class Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/zk$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic att:Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$2;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$2$1;->att:Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 116
    const-string v0, "kudrp"

    invoke-static {v0}, Lcom/kingroot/kinguser/bhm;->lG(Ljava/lang/String;)Lcom/kingroot/kinguser/util/protect/DeviceStat;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acx()Lcom/kingroot/kinguser/util/protect/DeviceStat;

    move-result-object v8

    .line 118
    if-nez v0, :cond_1

    .line 121
    const-string v0, "kudrp"

    invoke-static {v0, v8}, Lcom/kingroot/kinguser/bhm;->a(Ljava/lang/String;Lcom/kingroot/kinguser/util/protect/DeviceStat;)V

    .line 211
    :cond_0
    :goto_0
    return-object v9

    .line 123
    :cond_1
    invoke-virtual {v0}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acB()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 126
    const-string v0, "kudrp"

    invoke-static {v0, v8}, Lcom/kingroot/kinguser/bhm;->a(Ljava/lang/String;Lcom/kingroot/kinguser/util/protect/DeviceStat;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {v0, v8, v9}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->a(Lcom/kingroot/kinguser/util/protect/DeviceStat;Lcom/kingroot/kinguser/util/protect/DeviceStat;Ljava/util/List;)I

    move-result v0

    .line 132
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 140
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CD()J

    move-result-wide v0

    .line 141
    const-wide/32 v4, 0x5265c00

    .line 142
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/kingroot/kinguser/abf;->u(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/kingroot/kinguser/abf;->u(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 156
    const-string v4, "kinguser_su"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 167
    :goto_1
    const/16 v1, 0x158

    if-lt v0, v1, :cond_0

    .line 175
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ed()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ee()V

    .line 179
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ed()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    const-string v0, "kudrp"

    invoke-static {v0, v8}, Lcom/kingroot/kinguser/bhm;->a(Ljava/lang/String;Lcom/kingroot/kinguser/util/protect/DeviceStat;)V

    goto/16 :goto_0

    .line 164
    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_1

    .line 190
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/ze;->po()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v6

    .line 192
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --startup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v4

    .line 194
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 195
    if-eqz v1, :cond_5

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    if-eqz v1, :cond_6

    :goto_4
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v4}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v4, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187ad

    invoke-virtual {v0, v1, v7, v5, v7}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 204
    const-string v0, "kudrp"

    invoke-static {v0, v8}, Lcom/kingroot/kinguser/bhm;->a(Ljava/lang/String;Lcom/kingroot/kinguser/util/protect/DeviceStat;)V

    .line 207
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aV(J)V

    .line 210
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ee()V

    goto/16 :goto_0

    :cond_4
    move v1, v7

    .line 191
    goto :goto_2

    :cond_5
    move v6, v7

    .line 195
    goto :goto_3

    .line 196
    :cond_6
    const-string v0, ""

    goto :goto_4

    .line 197
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5
.end method
