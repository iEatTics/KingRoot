.class Lcom/kingroot/kinguser/cfh$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic cbV:Lcom/kingroot/kinguser/cfh;

.field private cco:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/cfh$c;",
            ">;"
        }
    .end annotation
.end field

.field private ccp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/cfh$c;",
            ">;"
        }
    .end annotation
.end field

.field private ccq:Landroid/os/Handler;

.field private ccr:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/cfh;)V
    .locals 2

    .prologue
    .line 747
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh$d;->cco:Ljava/util/TreeMap;

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh$d;->ccp:Ljava/util/ArrayList;

    .line 756
    new-instance v0, Lcom/kingroot/kinguser/cfh$d$1;

    invoke-static {}, Lcom/kingroot/kinguser/cfd;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cfh$d$1;-><init>(Lcom/kingroot/kinguser/cfh$d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh$d;->ccq:Landroid/os/Handler;

    .line 777
    new-instance v0, Lcom/kingroot/kinguser/cfh$d$2;

    invoke-static {}, Lcom/kingroot/kinguser/cfd;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cfh$d$2;-><init>(Lcom/kingroot/kinguser/cfh$d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh$d;->ccr:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/cfh;Lcom/kingroot/kinguser/cfh$1;)V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfh$d;-><init>(Lcom/kingroot/kinguser/cfh;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfh$d;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$d;->ccp:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/bg;Lcom/kingroot/kinguser/cfh$c;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 9

    .prologue
    const/16 v5, 0x1e

    const/4 v7, 0x2

    .line 1063
    iget-object v0, p2, Lcom/kingroot/kinguser/cfh$c;->ccl:Lcom/kingroot/kinguser/ccn;

    invoke-virtual {v0, v7}, Lcom/kingroot/kinguser/ccn;->setState(I)V

    .line 1066
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/cen;->kY(I)I

    move-result v6

    .line 1068
    if-nez p1, :cond_0

    .line 1069
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "SharkProtocolQueue"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;II)V

    .line 1070
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    iget v1, p2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cfc;->lf(I)Z

    .line 1076
    :goto_0
    iget-object v0, p2, Lcom/kingroot/kinguser/cfh$c;->cbA:Lcom/kingroot/kinguser/cci;

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/kingroot/kinguser/cfh$c;->ccj:Lcom/kingroot/kinguser/ccj;

    if-nez v0, :cond_1

    .line 1106
    :goto_1
    return-void

    .line 1072
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "SharkProtocolQueue"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/kingroot/kinguser/bg;->jX:I

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;II)V

    .line 1073
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    iget v1, p1, Lcom/kingroot/kinguser/bg;->jX:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cfc;->lf(I)Z

    goto :goto_0

    .line 1078
    :cond_1
    iget v0, p2, Lcom/kingroot/kinguser/cfh$c;->mFlag:I

    invoke-static {v0}, Lcom/kingroot/kinguser/ccm;->kT(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1094
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/cfh$d$7;

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/kingroot/kinguser/cfh$d$7;-><init>(Lcom/kingroot/kinguser/cfh$d;Lcom/kingroot/kinguser/cfh$c;Ljava/lang/Integer;ILjava/lang/Integer;)V

    const-string v1, "shark callback"

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_1

    .line 1080
    :sswitch_0
    iget-object v0, p2, Lcom/kingroot/kinguser/cfh$c;->ccj:Lcom/kingroot/kinguser/ccj;

    if-eqz v0, :cond_2

    iget v0, p2, Lcom/kingroot/kinguser/cfh$c;->cbu:I

    if-lez v0, :cond_2

    .line 1081
    iget-object v1, p2, Lcom/kingroot/kinguser/cfh$c;->ccj:Lcom/kingroot/kinguser/ccj;

    iget v2, p2, Lcom/kingroot/kinguser/cfh$c;->bux:I

    iget v3, p2, Lcom/kingroot/kinguser/cfh$c;->cbu:I

    iget v4, p2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p2, Lcom/kingroot/kinguser/cfh$c;->cci:[B

    invoke-interface/range {v1 .. v8}, Lcom/kingroot/kinguser/ccj;->a(IIIIII[B)V

    goto :goto_1

    .line 1083
    :cond_2
    iget-object v3, p2, Lcom/kingroot/kinguser/cfh$c;->cbA:Lcom/kingroot/kinguser/cci;

    iget v4, p2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p2, Lcom/kingroot/kinguser/cfh$c;->cbz:Lcom/qq/taf/jce/JceStruct;

    invoke-interface/range {v3 .. v8}, Lcom/kingroot/kinguser/cci;->a(IIIILcom/qq/taf/jce/JceStruct;)V

    goto :goto_1

    .line 1088
    :sswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfh;->v(Lcom/kingroot/kinguser/cfh;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x3

    aput-object p5, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1089
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v1}, Lcom/kingroot/kinguser/cfh;->v(Lcom/kingroot/kinguser/cfh;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1078
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfh$d;Lcom/kingroot/kinguser/bg;)V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfh$d;->d(Lcom/kingroot/kinguser/bg;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfh$d;ZIILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/cfh$d;->b(ZIILjava/util/ArrayList;)V

    return-void
.end method

.method private b(ZIILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    if-nez p2, :cond_3

    .line 982
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bg;

    .line 983
    iget v2, v0, Lcom/kingroot/kinguser/bg;->jX:I

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/cfh$d;->lk(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 984
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cfh$d;->d(Lcom/kingroot/kinguser/bg;)V

    goto :goto_0

    .line 986
    :cond_1
    invoke-static {v0}, Lcom/kingroot/kinguser/cfh;->b(Lcom/kingroot/kinguser/bg;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 987
    iget-object v2, p0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-virtual {v2, p1, p3, v0}, Lcom/kingroot/kinguser/cfh;->a(ZILcom/kingroot/kinguser/bg;)J

    goto :goto_0

    .line 988
    :cond_2
    invoke-static {v0}, Lcom/kingroot/kinguser/cfh;->c(Lcom/kingroot/kinguser/bg;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 989
    iget-object v2, p0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-virtual {v2, p1, p3, v0}, Lcom/kingroot/kinguser/cfh;->b(ZILcom/kingroot/kinguser/bg;)J

    goto :goto_0

    .line 1000
    :cond_3
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/cfh$d;->ll(I)V

    .line 1002
    :cond_4
    return-void
.end method

.method private d(Lcom/kingroot/kinguser/bg;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1005
    .line 1008
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh$d;->ccq:Landroid/os/Handler;

    iget v2, p1, Lcom/kingroot/kinguser/bg;->jX:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1009
    iget-object v2, p0, Lcom/kingroot/kinguser/cfh$d;->cco:Ljava/util/TreeMap;

    monitor-enter v2

    .line 1011
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh$d;->cco:Ljava/util/TreeMap;

    iget v3, p1, Lcom/kingroot/kinguser/bg;->jX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/kingroot/kinguser/cfh$c;

    move-object v7, v0

    .line 1012
    if-nez v7, :cond_0

    .line 1013
    monitor-exit v2

    .line 1044
    :goto_0
    return-void

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh$d;->cco:Ljava/util/TreeMap;

    iget v3, p1, Lcom/kingroot/kinguser/bg;->jX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    iget-object v1, p1, Lcom/kingroot/kinguser/bg;->data:[B

    if-eqz v1, :cond_5

    iget v1, p1, Lcom/kingroot/kinguser/bg;->retCode:I

    if-nez v1, :cond_5

    .line 1019
    :try_start_1
    iget-object v1, v7, Lcom/kingroot/kinguser/cfh$c;->ccj:Lcom/kingroot/kinguser/ccj;

    if-eqz v1, :cond_4

    iget v1, v7, Lcom/kingroot/kinguser/cfh$c;->cbu:I

    if-lez v1, :cond_4

    .line 1020
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v1}, Lcom/kingroot/kinguser/cfh;->u(Lcom/kingroot/kinguser/cfh;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->t(Lcom/kingroot/kinguser/cfh;)Lcom/kingroot/kinguser/cff;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cff;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p1, Lcom/kingroot/kinguser/bg;->data:[B

    iget v4, p1, Lcom/kingroot/kinguser/bg;->flag:I

    invoke-static {v1, v2, v3, v4}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;[B[BI)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1026
    :goto_1
    if-nez v8, :cond_1

    if-nez v1, :cond_1

    :try_start_2
    iget-object v2, v7, Lcom/kingroot/kinguser/cfh$c;->cbz:Lcom/qq/taf/jce/JceStruct;

    if-eqz v2, :cond_1

    .line 1027
    const v2, -0xa7d9ec

    invoke-static {v2}, Lcom/kingroot/kinguser/cen;->kY(I)I

    move-result v2

    iput v2, p1, Lcom/kingroot/kinguser/bg;->retCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1035
    :cond_1
    :goto_2
    iget-object v2, v7, Lcom/kingroot/kinguser/cfh$c;->cci:[B

    if-eq v2, v1, :cond_2

    iput-object v1, v7, Lcom/kingroot/kinguser/cfh$c;->cci:[B

    .line 1036
    :cond_2
    iget-object v1, v7, Lcom/kingroot/kinguser/cfh$c;->cbz:Lcom/qq/taf/jce/JceStruct;

    if-eq v1, v8, :cond_3

    iput-object v8, v7, Lcom/kingroot/kinguser/cfh$c;->cbz:Lcom/qq/taf/jce/JceStruct;

    .line 1039
    :cond_3
    :try_start_3
    iget v1, p1, Lcom/kingroot/kinguser/bg;->cmd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, p1, Lcom/kingroot/kinguser/bg;->retCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, p1, Lcom/kingroot/kinguser/bg;->jZ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/kingroot/kinguser/cfh$d;->a(Lcom/kingroot/kinguser/bg;Lcom/kingroot/kinguser/cfh$c;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1044
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1016
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1023
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v1}, Lcom/kingroot/kinguser/cfh;->u(Lcom/kingroot/kinguser/cfh;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->t(Lcom/kingroot/kinguser/cfh;)Lcom/kingroot/kinguser/cff;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cff;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p1, Lcom/kingroot/kinguser/bg;->data:[B

    iget-object v4, v7, Lcom/kingroot/kinguser/cfh$c;->cbz:Lcom/qq/taf/jce/JceStruct;

    const/4 v5, 0x0

    iget v6, p1, Lcom/kingroot/kinguser/bg;->flag:I

    invoke-static/range {v1 .. v6}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;[B[BLcom/qq/taf/jce/JceStruct;ZI)Lcom/qq/taf/jce/JceStruct;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    move-object v9, v8

    move-object v8, v1

    move-object v1, v9

    goto :goto_1

    .line 1032
    :catch_1
    move-exception v1

    move-object v1, v8

    :goto_3
    const v2, -0xa7dc44

    invoke-static {v2}, Lcom/kingroot/kinguser/cen;->kY(I)I

    move-result v2

    iput v2, p1, Lcom/kingroot/kinguser/bg;->retCode:I

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_3

    :cond_5
    move-object v1, v8

    goto :goto_2
.end method

.method private ll(I)V
    .locals 7

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cfh$d;->alW()Ljava/util/Set;

    move-result-object v0

    .line 1048
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh$d;->cco:Ljava/util/TreeMap;

    monitor-enter v1

    .line 1050
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cfh$d;->cco:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 1051
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1054
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfh$c;

    iget v0, v0, Lcom/kingroot/kinguser/cfh$c;->mCmdId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/cfh$d;->a(Lcom/kingroot/kinguser/bg;Lcom/kingroot/kinguser/cfh$c;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1051
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1060
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/kingroot/kinguser/cfh$c;)V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$d;->cco:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    return-void
.end method

.method public alW()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/cfh$c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 796
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh$d;->cco:Ljava/util/TreeMap;

    monitor-enter v1

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$d;->cco:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 799
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lk(I)Z
    .locals 3

    .prologue
    .line 809
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh$d;->cco:Ljava/util/TreeMap;

    monitor-enter v1

    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$d;->cco:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 817
    const-wide/16 v10, 0x0

    .line 818
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 819
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 820
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 821
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->t(Lcom/kingroot/kinguser/cfh;)Lcom/kingroot/kinguser/cff;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cff;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v15

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/kingroot/kinguser/cfh$d;->alW()Ljava/util/Set;

    move-result-object v2

    .line 825
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v8, v0

    .line 826
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget-object v2, v2, Lcom/kingroot/kinguser/cfh$c;->ccl:Lcom/kingroot/kinguser/ccn;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ccn;->akI()Z

    move-result v2

    if-nez v2, :cond_12

    .line 828
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh$c;->alO()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh$d;->ccr:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget v5, v2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget v2, v2, Lcom/kingroot/kinguser/cfh$c;->mCmdId:I

    invoke-virtual {v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 976
    :catch_0
    move-exception v2

    const v2, -0x989b30

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/cfh$d;->ll(I)V

    .line 978
    :cond_0
    :goto_1
    return-void

    .line 834
    :cond_1
    :try_start_1
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget-object v2, v2, Lcom/kingroot/kinguser/cfh$c;->ccl:Lcom/kingroot/kinguser/ccn;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/ccn;->setState(I)V

    .line 835
    new-instance v6, Lcom/kingroot/kinguser/az;

    invoke-direct {v6}, Lcom/kingroot/kinguser/az;-><init>()V

    .line 836
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget v2, v2, Lcom/kingroot/kinguser/cfh$c;->mCmdId:I

    iput v2, v6, Lcom/kingroot/kinguser/az;->cmd:I

    .line 837
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget v2, v2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    iput v2, v6, Lcom/kingroot/kinguser/az;->seqNo:I

    .line 838
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget-wide v2, v2, Lcom/kingroot/kinguser/cfh$c;->cbx:J

    iput-wide v2, v6, Lcom/kingroot/kinguser/az;->jY:J

    .line 839
    const/4 v2, 0x0

    iput v2, v6, Lcom/kingroot/kinguser/az;->jX:I

    .line 840
    const/4 v2, 0x0

    iput-object v2, v6, Lcom/kingroot/kinguser/az;->data:[B

    .line 842
    iget-object v2, v15, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 845
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget-object v2, v2, Lcom/kingroot/kinguser/cfh$c;->cch:[B

    if-eqz v2, :cond_3

    .line 847
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget-object v2, v2, Lcom/kingroot/kinguser/cfh$c;->cch:[B

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfh;->u(Lcom/kingroot/kinguser/cfh;)Landroid/content/Context;

    move-result-object v3

    iget v4, v6, Lcom/kingroot/kinguser/az;->cmd:I

    invoke-static {v3, v2, v4, v6}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;[BILcom/kingroot/kinguser/az;)[B

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/az;->data:[B

    .line 856
    :goto_2
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget-wide v2, v2, Lcom/kingroot/kinguser/cfh$c;->ccm:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 858
    new-instance v2, Lcom/kingroot/kinguser/cfn;

    iget v3, v6, Lcom/kingroot/kinguser/az;->cmd:I

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/cfn;-><init>(I)V

    .line 859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh$d;->ccq:Landroid/os/Handler;

    iget v4, v6, Lcom/kingroot/kinguser/az;->seqNo:I

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 860
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cfh$d;->ccq:Landroid/os/Handler;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget-wide v0, v2, Lcom/kingroot/kinguser/cfh$c;->ccm:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 863
    :cond_2
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget v2, v2, Lcom/kingroot/kinguser/cfh$c;->mFlag:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_4

    .line 864
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    :goto_3
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v2

    const-string v3, "SharkProtocolQueue"

    iget v4, v6, Lcom/kingroot/kinguser/az;->cmd:I

    iget v5, v6, Lcom/kingroot/kinguser/az;->seqNo:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;I)V

    .line 875
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget-wide v2, v2, Lcom/kingroot/kinguser/cfh$c;->ccn:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_12

    .line 876
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget-wide v2, v2, Lcom/kingroot/kinguser/cfh$c;->ccn:J

    :goto_4
    move-wide v10, v2

    .line 880
    goto/16 :goto_0

    .line 851
    :cond_3
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget-object v2, v2, Lcom/kingroot/kinguser/cfh$c;->cby:Lcom/qq/taf/jce/JceStruct;

    .line 852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfh;->u(Lcom/kingroot/kinguser/cfh;)Landroid/content/Context;

    move-result-object v3

    iget v4, v6, Lcom/kingroot/kinguser/az;->cmd:I

    invoke-static {v3, v2, v4, v6}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/az;)[B

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/az;->data:[B

    goto :goto_2

    .line 865
    :cond_4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget v2, v2, Lcom/kingroot/kinguser/cfh$c;->mFlag:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_5

    .line 866
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 867
    :cond_5
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    iget v2, v2, Lcom/kingroot/kinguser/cfh$c;->mFlag:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_6

    .line 868
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 870
    :cond_6
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 882
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$d;->ccp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    .line 884
    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh$c;->alO()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 885
    iget v2, v2, Lcom/kingroot/kinguser/cfh$c;->mCmdId:I

    const/16 v3, 0x44f

    if-ne v2, v3, :cond_8

    goto :goto_5

    .line 895
    :cond_9
    new-instance v6, Lcom/kingroot/kinguser/az;

    invoke-direct {v6}, Lcom/kingroot/kinguser/az;-><init>()V

    .line 896
    iget v3, v2, Lcom/kingroot/kinguser/cfh$c;->mCmdId:I

    iput v3, v6, Lcom/kingroot/kinguser/az;->cmd:I

    .line 897
    invoke-static {}, Lcom/kingroot/kinguser/cfb;->aly()Lcom/kingroot/kinguser/cet;

    move-result-object v3

    invoke-interface {v3}, Lcom/kingroot/kinguser/cet;->alo()I

    move-result v3

    iput v3, v6, Lcom/kingroot/kinguser/az;->seqNo:I

    .line 898
    iget v3, v2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    iput v3, v6, Lcom/kingroot/kinguser/az;->jX:I

    .line 899
    const/4 v3, 0x0

    iput-object v3, v6, Lcom/kingroot/kinguser/az;->data:[B

    .line 900
    iget v3, v2, Lcom/kingroot/kinguser/cfh$c;->retCode:I

    iput v3, v6, Lcom/kingroot/kinguser/az;->retCode:I

    .line 901
    iget v3, v2, Lcom/kingroot/kinguser/cfh$c;->cck:I

    iput v3, v6, Lcom/kingroot/kinguser/az;->jZ:I

    .line 902
    new-instance v3, Lcom/kingroot/kinguser/ay;

    invoke-direct {v3}, Lcom/kingroot/kinguser/ay;-><init>()V

    .line 903
    iget-wide v4, v2, Lcom/kingroot/kinguser/cfh$c;->jW:J

    iput-wide v4, v3, Lcom/kingroot/kinguser/ay;->jW:J

    .line 904
    iput-object v3, v6, Lcom/kingroot/kinguser/az;->ka:Lcom/kingroot/kinguser/ay;

    .line 906
    iget-object v3, v15, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 910
    :try_start_2
    iget-object v3, v2, Lcom/kingroot/kinguser/cfh$c;->cch:[B

    if-eqz v3, :cond_a

    .line 912
    iget-object v3, v2, Lcom/kingroot/kinguser/cfh$c;->cch:[B

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v4}, Lcom/kingroot/kinguser/cfh;->u(Lcom/kingroot/kinguser/cfh;)Landroid/content/Context;

    move-result-object v4

    iget v5, v6, Lcom/kingroot/kinguser/az;->cmd:I

    invoke-static {v4, v3, v5, v6}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;[BILcom/kingroot/kinguser/az;)[B

    move-result-object v3

    iput-object v3, v6, Lcom/kingroot/kinguser/az;->data:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 922
    :goto_6
    :try_start_3
    iget v3, v2, Lcom/kingroot/kinguser/cfh$c;->mFlag:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_b

    .line 923
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :goto_7
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v2

    const-string v3, "SharkProtocolQueue"

    iget v4, v6, Lcom/kingroot/kinguser/az;->cmd:I

    iget v5, v6, Lcom/kingroot/kinguser/az;->seqNo:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 916
    :cond_a
    :try_start_4
    iget-object v3, v2, Lcom/kingroot/kinguser/cfh$c;->cby:Lcom/qq/taf/jce/JceStruct;

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v4}, Lcom/kingroot/kinguser/cfh;->u(Lcom/kingroot/kinguser/cfh;)Landroid/content/Context;

    move-result-object v4

    iget v5, v6, Lcom/kingroot/kinguser/az;->cmd:I

    invoke-static {v4, v3, v5, v6}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/az;)[B

    move-result-object v3

    iput-object v3, v6, Lcom/kingroot/kinguser/az;->data:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v3

    goto :goto_6

    .line 924
    :cond_b
    :try_start_5
    iget v3, v2, Lcom/kingroot/kinguser/cfh$c;->mFlag:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_c

    .line 925
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 926
    :cond_c
    iget v2, v2, Lcom/kingroot/kinguser/cfh$c;->mFlag:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_d

    .line 927
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 929
    :cond_d
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 935
    :cond_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->t(Lcom/kingroot/kinguser/cfh;)Lcom/kingroot/kinguser/cff;

    move-result-object v2

    const/16 v3, 0x800

    const/4 v6, 0x1

    new-instance v8, Lcom/kingroot/kinguser/cfh$d$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/kingroot/kinguser/cfh$d$3;-><init>(Lcom/kingroot/kinguser/cfh$d;)V

    move-wide v4, v10

    move-object v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/kingroot/kinguser/cff;->a(IJZLjava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;)V

    .line 945
    :cond_f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->t(Lcom/kingroot/kinguser/cfh;)Lcom/kingroot/kinguser/cff;

    move-result-object v2

    const/16 v3, 0x200

    const/4 v6, 0x1

    new-instance v8, Lcom/kingroot/kinguser/cfh$d$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/kingroot/kinguser/cfh$d$4;-><init>(Lcom/kingroot/kinguser/cfh$d;)V

    move-wide v4, v10

    move-object v7, v12

    invoke-virtual/range {v2 .. v8}, Lcom/kingroot/kinguser/cff;->a(IJZLjava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;)V

    .line 955
    :cond_10
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->t(Lcom/kingroot/kinguser/cfh;)Lcom/kingroot/kinguser/cff;

    move-result-object v2

    const/16 v3, 0x400

    const/4 v6, 0x1

    new-instance v8, Lcom/kingroot/kinguser/cfh$d$5;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/kingroot/kinguser/cfh$d$5;-><init>(Lcom/kingroot/kinguser/cfh$d;)V

    move-wide v4, v10

    move-object v7, v13

    invoke-virtual/range {v2 .. v8}, Lcom/kingroot/kinguser/cff;->a(IJZLjava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;)V

    .line 965
    :cond_11
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$d;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->t(Lcom/kingroot/kinguser/cfh;)Lcom/kingroot/kinguser/cff;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    new-instance v8, Lcom/kingroot/kinguser/cfh$d$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/kingroot/kinguser/cfh$d$6;-><init>(Lcom/kingroot/kinguser/cfh$d;)V

    move-wide v4, v10

    move-object v7, v14

    invoke-virtual/range {v2 .. v8}, Lcom/kingroot/kinguser/cff;->a(IJZLjava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_12
    move-wide v2, v10

    goto/16 :goto_4
.end method
