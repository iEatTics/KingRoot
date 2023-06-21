.class public Lcom/kingroot/kinguser/cfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cfk$a;
.implements Lcom/kingroot/kinguser/cft$b;
.implements Lcom/kingroot/kinguser/cft$c;
.implements Lcom/kingroot/kinguser/cfx$a;
.implements Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cfo$c;,
        Lcom/kingroot/kinguser/cfo$e;,
        Lcom/kingroot/kinguser/cfo$a;,
        Lcom/kingroot/kinguser/cfo$b;,
        Lcom/kingroot/kinguser/cfo$f;,
        Lcom/kingroot/kinguser/cfo$d;
    }
.end annotation


# instance fields
.field private bYN:Lcom/kingroot/kinguser/cff;

.field private bYt:Lcom/kingroot/kinguser/ceu;

.field private bYx:Z

.field protected cau:Lcom/kingroot/kinguser/cfl$a;

.field private ccY:Lcom/kingroot/kinguser/cfy;

.field private ccZ:Lcom/kingroot/kinguser/cev;

.field private cda:Lcom/kingroot/kinguser/cck;

.field private cdb:Lcom/kingroot/kinguser/cfo$d;

.field private cdc:Lcom/kingroot/kinguser/cfk;

.field private cdd:Lcom/kingroot/kinguser/cft;

.field private cde:I

.field private cdf:J

.field private cdg:J

.field private cdh:Z

.field private cdi:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingroot/kinguser/cfo$f;",
            ">;"
        }
    .end annotation
.end field

.field private final cdj:Ljava/lang/Object;

.field private cdk:B

.field private cdl:Landroid/os/HandlerThread;

.field private cdm:Landroid/os/Handler;

.field private cdn:Z

.field private cdo:Lcom/kingroot/kinguser/cfw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cfw",
            "<",
            "Lcom/kingroot/kinguser/cfo$f;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ceu;Lcom/kingroot/kinguser/cfu;Lcom/kingroot/kinguser/cfl$a;Lcom/kingroot/kinguser/cfo$d;Lcom/kingroot/kinguser/cev;Lcom/kingroot/kinguser/cff$c;Lcom/kingroot/kinguser/cff;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v3, p0, Lcom/kingroot/kinguser/cfo;->mContext:Landroid/content/Context;

    .line 71
    iput-object v3, p0, Lcom/kingroot/kinguser/cfo;->ccY:Lcom/kingroot/kinguser/cfy;

    .line 86
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfo;->bYx:Z

    .line 89
    iput v2, p0, Lcom/kingroot/kinguser/cfo;->cde:I

    .line 92
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/kingroot/kinguser/cfo;->cdf:J

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cfo;->cdg:J

    .line 95
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfo;->cdh:Z

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdi:Ljava/util/LinkedList;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdj:Ljava/lang/Object;

    .line 101
    iput-byte v2, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    .line 105
    iput-object v3, p0, Lcom/kingroot/kinguser/cfo;->cdl:Landroid/os/HandlerThread;

    .line 106
    iput-object v3, p0, Lcom/kingroot/kinguser/cfo;->cdm:Landroid/os/Handler;

    .line 109
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfo;->cdn:Z

    .line 137
    new-instance v0, Lcom/kingroot/kinguser/cfw;

    new-instance v1, Lcom/kingroot/kinguser/cfo$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/cfo$1;-><init>(Lcom/kingroot/kinguser/cfo;)V

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/cfw;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdo:Lcom/kingroot/kinguser/cfw;

    .line 638
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfo;->mContext:Landroid/content/Context;

    .line 639
    new-instance v0, Lcom/kingroot/kinguser/cfy;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p2}, Lcom/kingroot/kinguser/cfy;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/cfx$a;Lcom/kingroot/kinguser/cfu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfo;->ccY:Lcom/kingroot/kinguser/cfy;

    .line 640
    invoke-interface {p2}, Lcom/kingroot/kinguser/cfu;->fB()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cfo;->eY(Z)V

    .line 642
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    .line 643
    const-string v1, "sendHandlerThread"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bzf;->nD(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdl:Landroid/os/HandlerThread;

    .line 644
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdl:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 645
    new-instance v0, Lcom/kingroot/kinguser/cfo$e;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfo;->cdl:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cfo$e;-><init>(Lcom/kingroot/kinguser/cfo;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdm:Landroid/os/Handler;

    .line 647
    iput-object p1, p0, Lcom/kingroot/kinguser/cfo;->bYt:Lcom/kingroot/kinguser/ceu;

    .line 648
    iput-object p3, p0, Lcom/kingroot/kinguser/cfo;->cau:Lcom/kingroot/kinguser/cfl$a;

    .line 649
    iput-object p5, p0, Lcom/kingroot/kinguser/cfo;->ccZ:Lcom/kingroot/kinguser/cev;

    .line 650
    iput-object p4, p0, Lcom/kingroot/kinguser/cfo;->cdb:Lcom/kingroot/kinguser/cfo$d;

    .line 651
    iput-object p7, p0, Lcom/kingroot/kinguser/cfo;->bYN:Lcom/kingroot/kinguser/cff;

    .line 652
    new-instance v0, Lcom/kingroot/kinguser/cft;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/kingroot/kinguser/cft;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/cft$c;Lcom/kingroot/kinguser/cft$b;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdd:Lcom/kingroot/kinguser/cft;

    .line 653
    new-instance v0, Lcom/kingroot/kinguser/cfk;

    invoke-direct {v0, p1, p0}, Lcom/kingroot/kinguser/cfk;-><init>(Lcom/kingroot/kinguser/ceu;Lcom/kingroot/kinguser/cfk$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    .line 656
    invoke-direct {p0, p6}, Lcom/kingroot/kinguser/cfo;->b(Lcom/kingroot/kinguser/cff$c;)V

    .line 659
    invoke-static {}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->alR()Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->a(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$a;)V

    .line 660
    return-void
.end method

.method private V(ILjava/lang/String;)V
    .locals 22

    .prologue
    .line 1026
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    new-instance v8, Lcom/kingroot/kinguser/az;

    invoke-direct {v8}, Lcom/kingroot/kinguser/az;-><init>()V

    .line 1028
    const/16 v2, 0x3e7

    iput v2, v8, Lcom/kingroot/kinguser/az;->cmd:I

    .line 1029
    invoke-static {}, Lcom/kingroot/kinguser/cfb;->aly()Lcom/kingroot/kinguser/cet;

    move-result-object v2

    invoke-interface {v2}, Lcom/kingroot/kinguser/cet;->alo()I

    move-result v2

    iput v2, v8, Lcom/kingroot/kinguser/az;->seqNo:I

    .line 1030
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    invoke-static {}, Lcom/kingroot/kinguser/cfb;->alA()Lcom/kingroot/kinguser/cfb$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfb$b;->alB()B

    move-result v7

    .line 1033
    if-gtz p1, :cond_0

    const-wide/16 v2, 0x1e

    move-wide/from16 v20, v2

    .line 1034
    :goto_0
    new-instance v9, Lcom/kingroot/kinguser/cff$d;

    const/16 v10, 0x400

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    new-instance v2, Lcom/kingroot/kinguser/cfo$b;

    iget v4, v8, Lcom/kingroot/kinguser/az;->seqNo:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/kingroot/kinguser/cfo$b;-><init>(Lcom/kingroot/kinguser/cfo;IILjava/lang/String;B)V

    const-wide/16 v4, 0x3e8

    mul-long v18, v4, v20

    move-object/from16 v17, v2

    invoke-direct/range {v9 .. v19}, Lcom/kingroot/kinguser/cff$d;-><init>(IZZZJLjava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;J)V

    .line 1035
    iput-byte v7, v9, Lcom/kingroot/kinguser/cff$d;->caU:B

    .line 1036
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v2

    iget v3, v8, Lcom/kingroot/kinguser/az;->seqNo:I

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v20

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/kingroot/kinguser/cfc;->b(IJLjava/lang/String;)V

    .line 1037
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v2

    iget v3, v9, Lcom/kingroot/kinguser/cff$d;->caN:I

    invoke-virtual {v2, v7, v3}, Lcom/kingroot/kinguser/cfc;->c(BI)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfo;->cdb:Lcom/kingroot/kinguser/cfo$d;

    invoke-interface {v2, v9}, Lcom/kingroot/kinguser/cfo$d;->a(Lcom/kingroot/kinguser/cff$d;)V

    .line 1039
    return-void

    .line 1033
    :cond_0
    const-wide/16 v2, 0x3c

    move-wide/from16 v20, v2

    goto :goto_0
.end method

.method private X(ILjava/lang/String;)V
    .locals 12

    .prologue
    .line 1101
    iget-byte v0, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1115
    iget-wide v2, p0, Lcom/kingroot/kinguser/cfo;->cdg:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingroot/kinguser/cfo;->cdf:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1117
    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cfo;->a(ILjava/lang/Object;IJZ)V

    .line 1118
    const/16 v1, 0xb

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "delay_too_freq:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/kingroot/kinguser/cfo;->cdf:J

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cfo;->a(ILjava/lang/Object;IJZ)V

    goto :goto_0

    .line 1122
    :cond_2
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfk;->fD()Lcom/kingroot/kinguser/ap;

    move-result-object v2

    iget v3, v2, Lcom/kingroot/kinguser/ap;->if:I

    .line 1123
    invoke-static {}, Lcom/kingroot/kinguser/cey;->alt()Lcom/kingroot/kinguser/cey;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/kingroot/kinguser/cey;->cP(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1125
    const/16 v1, 0xb

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "delay_waitfor_stable:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    int-to-long v6, v3

    mul-long/2addr v4, v6

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cfo;->a(ILjava/lang/Object;IJZ)V

    goto :goto_0

    .line 1129
    :cond_3
    iput-wide v0, p0, Lcom/kingroot/kinguser/cfo;->cdg:J

    .line 1130
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    .line 1131
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cfo;->lq(I)V

    .line 1134
    new-instance v0, Lcom/kingroot/kinguser/az;

    invoke-direct {v0}, Lcom/kingroot/kinguser/az;-><init>()V

    .line 1135
    const/16 v1, 0x3e5

    iput v1, v0, Lcom/kingroot/kinguser/az;->cmd:I

    .line 1136
    invoke-static {}, Lcom/kingroot/kinguser/cfb;->aly()Lcom/kingroot/kinguser/cet;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingroot/kinguser/cet;->alo()I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/az;->seqNo:I

    .line 1137
    iget-object v1, p0, Lcom/kingroot/kinguser/cfo;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, v0, Lcom/kingroot/kinguser/az;->cmd:I

    invoke-static {v1, v2, v3, v0}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/az;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/az;->data:[B

    .line 1138
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1139
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/az;->seqNo:I

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5, p2}, Lcom/kingroot/kinguser/cfc;->b(IJLjava/lang/String;)V

    .line 1142
    new-instance v1, Lcom/kingroot/kinguser/cff$d;

    const/16 v2, 0x400

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    new-instance v9, Lcom/kingroot/kinguser/cfo$a;

    iget v0, v0, Lcom/kingroot/kinguser/az;->seqNo:I

    invoke-direct {v9, p0, v0, p1, p2}, Lcom/kingroot/kinguser/cfo$a;-><init>(Lcom/kingroot/kinguser/cfo;IILjava/lang/String;)V

    const-wide/16 v10, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/kingroot/kinguser/cff$d;-><init>(IZZZJLjava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;J)V

    .line 1143
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdb:Lcom/kingroot/kinguser/cfo$d;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/cfo$d;->a(Lcom/kingroot/kinguser/cff$d;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfo;B)B
    .locals 0

    .prologue
    .line 53
    iput-byte p1, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfo;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/kingroot/kinguser/cfo;->cde:I

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfo;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfo;->nW(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(JLcom/kingroot/kinguser/ap;)Lcom/kingroot/kinguser/cfp;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/kingroot/kinguser/ap;",
            ")",
            "Lcom/kingroot/kinguser/cfp",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lcom/qq/taf/jce/JceStruct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    if-nez p3, :cond_0

    .line 714
    const/4 v0, 0x0

    .line 744
    :goto_0
    return-object v0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/cfk;->c(Lcom/kingroot/kinguser/ap;)V

    .line 740
    new-instance v1, Lcom/kingroot/kinguser/al;

    invoke-direct {v1}, Lcom/kingroot/kinguser/al;-><init>()V

    .line 741
    iget v0, p3, Lcom/kingroot/kinguser/ap;->hr:I

    iput v0, v1, Lcom/kingroot/kinguser/al;->hr:I

    .line 742
    iget-object v0, p3, Lcom/kingroot/kinguser/ap;->hs:Lcom/kingroot/kinguser/am;

    iput-object v0, v1, Lcom/kingroot/kinguser/al;->hs:Lcom/kingroot/kinguser/am;

    .line 743
    new-instance v0, Lcom/kingroot/kinguser/cfp;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x44d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/kingroot/kinguser/cfp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfo;JLcom/kingroot/kinguser/ap;)Lcom/kingroot/kinguser/cfp;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/cfo;->a(JLcom/kingroot/kinguser/ap;)Lcom/kingroot/kinguser/cfp;

    move-result-object v0

    return-object v0
.end method

.method private final a(ILjava/lang/Object;IJZ)V
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdm:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 999
    :goto_0
    return-void

    .line 994
    :cond_0
    if-eqz p6, :cond_1

    .line 995
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdm:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdm:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p3, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 998
    iget-object v1, p0, Lcom/kingroot/kinguser/cfo;->cdm:Landroid/os/Handler;

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/cfo$f;I)V
    .locals 2

    .prologue
    .line 751
    if-nez p1, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->ccZ:Lcom/kingroot/kinguser/cev;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->ccZ:Lcom/kingroot/kinguser/cev;

    iget-object v1, p1, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    invoke-interface {v0, v1, p2}, Lcom/kingroot/kinguser/cev;->a(Lcom/kingroot/kinguser/cff$d;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfo;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfo;->lq(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfo;ILjava/lang/Object;IJZ)V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p6}, Lcom/kingroot/kinguser/cfo;->a(ILjava/lang/Object;IJZ)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfo;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/cfo;->X(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfo;Lcom/kingroot/kinguser/cff$d;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cff$d;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfo;Lcom/kingroot/kinguser/cfo$f;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo$f;I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfo;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/kingroot/kinguser/cfo;->cdn:Z

    return p1
.end method

.method private ams()I
    .locals 2

    .prologue
    .line 925
    const/4 v0, 0x0

    .line 926
    iget-object v1, p0, Lcom/kingroot/kinguser/cfo;->ccY:Lcom/kingroot/kinguser/cfy;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cfy;->amM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 927
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->ccY:Lcom/kingroot/kinguser/cfy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfy;->amN()Z

    move-result v0

    if-nez v0, :cond_1

    .line 928
    const v0, -0x35b60

    .line 937
    :cond_0
    :goto_0
    return v0

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->ccY:Lcom/kingroot/kinguser/cfy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfy;->amP()I

    move-result v0

    goto :goto_0
.end method

.method private amt()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 957
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->amg()I

    move-result v0

    if-lez v0, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->amh()V

    .line 964
    iput-byte v1, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    .line 965
    iput v1, p0, Lcom/kingroot/kinguser/cfo;->cde:I

    .line 966
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfo;->amx()V

    .line 967
    iget-object v1, p0, Lcom/kingroot/kinguser/cfo;->cdj:Ljava/lang/Object;

    monitor-enter v1

    .line 968
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdo:Lcom/kingroot/kinguser/cfw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfw;->clear()V

    .line 969
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 971
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo;->ccY:Lcom/kingroot/kinguser/cfy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfy;->amO()I

    move-result v2

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 975
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo;->ccY:Lcom/kingroot/kinguser/cfy;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/cfy;->amq()Lcom/kingroot/kinguser/cfu;

    move-result-object v3

    .line 976
    if-eqz v3, :cond_0

    invoke-interface {v3, v6}, Lcom/kingroot/kinguser/cfu;->eP(Z)Lcom/kingroot/kinguser/cfv$b;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 977
    new-instance v4, Lcom/kingroot/kinguser/cfm;

    invoke-direct {v4}, Lcom/kingroot/kinguser/cfm;-><init>()V

    .line 978
    invoke-interface {v3, v6}, Lcom/kingroot/kinguser/cfu;->eP(Z)Lcom/kingroot/kinguser/cfv$b;

    move-result-object v3

    .line 979
    invoke-virtual {v3}, Lcom/kingroot/kinguser/cfv$b;->amE()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/kingroot/kinguser/cfm;->ccK:Ljava/lang/String;

    .line 980
    invoke-virtual {v3}, Lcom/kingroot/kinguser/cfv$b;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kingroot/kinguser/cfm;->ccL:Ljava/lang/String;

    .line 981
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/ceq;->cs(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kingroot/kinguser/cfm;->ccN:Ljava/lang/String;

    .line 982
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo;->ccY:Lcom/kingroot/kinguser/cfy;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/cfy;->amG()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kingroot/kinguser/cfm;->bQX:Ljava/lang/String;

    .line 983
    iput v2, v4, Lcom/kingroot/kinguser/cfm;->errorCode:I

    .line 984
    iput-wide v0, v4, Lcom/kingroot/kinguser/cfm;->ccP:J

    .line 985
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->bYt:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/cfm;->e(Lcom/kingroot/kinguser/ceu;)V

    goto :goto_0

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized amv()V
    .locals 1

    .prologue
    .line 1165
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfo;->amx()V

    .line 1166
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfo;->amw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    monitor-exit p0

    return-void

    .line 1165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized amw()V
    .locals 1

    .prologue
    .line 1174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdd:Lcom/kingroot/kinguser/cft;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdd:Lcom/kingroot/kinguser/cft;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cft;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    :cond_0
    monitor-exit p0

    return-void

    .line 1174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized amx()V
    .locals 1

    .prologue
    .line 1184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdd:Lcom/kingroot/kinguser/cft;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdd:Lcom/kingroot/kinguser/cft;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cft;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    :cond_0
    monitor-exit p0

    return-void

    .line 1184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized amy()V
    .locals 1

    .prologue
    .line 1194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdd:Lcom/kingroot/kinguser/cft;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdd:Lcom/kingroot/kinguser/cft;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cft;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    :cond_0
    monitor-exit p0

    return-void

    .line 1194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfk;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    return-object v0
.end method

.method private b(Lcom/kingroot/kinguser/cff$c;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 682
    new-instance v0, Lcom/kingroot/kinguser/cfo$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/cfo$2;-><init>(Lcom/kingroot/kinguser/cfo;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfo;->cda:Lcom/kingroot/kinguser/cck;

    .line 702
    const-wide/16 v2, 0x0

    const/16 v4, 0x2b5d

    new-instance v5, Lcom/kingroot/kinguser/ap;

    invoke-direct {v5}, Lcom/kingroot/kinguser/ap;-><init>()V

    iget-object v7, p0, Lcom/kingroot/kinguser/cfo;->cda:Lcom/kingroot/kinguser/cck;

    move-object v1, p1

    move v8, v6

    invoke-interface/range {v1 .. v8}, Lcom/kingroot/kinguser/cff$c;->a(JILcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cck;Z)V

    .line 703
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cfo;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/cfo;->V(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cfo;Lcom/kingroot/kinguser/cff$d;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfo;->i(Lcom/kingroot/kinguser/cff$d;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cfo;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/kingroot/kinguser/cfo;->cdh:Z

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/cfo;)I
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/kingroot/kinguser/cfo;->cde:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/cfo;->cde:I

    return v0
.end method

.method private cR(J)V
    .locals 1

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfo;->amy()V

    .line 903
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/cfk;->cQ(J)V

    .line 904
    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/cfo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfw;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdo:Lcom/kingroot/kinguser/cfw;

    return-object v0
.end method

.method private eY(Z)V
    .locals 2

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/kingroot/kinguser/cfo;->bYx:Z

    .line 668
    if-eqz p1, :cond_0

    .line 671
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/kingroot/kinguser/cfo;->cdf:J

    .line 673
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/cfo;)B
    .locals 1

    .prologue
    .line 53
    iget-byte v0, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    return v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfy;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->ccY:Lcom/kingroot/kinguser/cfy;

    return-object v0
.end method

.method private g(Lcom/kingroot/kinguser/cff$d;)V
    .locals 7

    .prologue
    .line 851
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 861
    :cond_0
    return-void

    .line 854
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/az;

    .line 855
    if-eqz v4, :cond_2

    .line 856
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "TmsTcpManager"

    iget v2, v4, Lcom/kingroot/kinguser/az;->cmd:I

    iget v3, v4, Lcom/kingroot/kinguser/az;->seqNo:I

    const/4 v5, 0x6

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdi:Ljava/util/LinkedList;

    return-object v0
.end method

.method private h(Lcom/kingroot/kinguser/cff$d;)V
    .locals 7

    .prologue
    .line 868
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 878
    :cond_0
    return-void

    .line 871
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/az;

    .line 872
    if-eqz v4, :cond_2

    .line 873
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "TmsTcpManager"

    iget v2, v4, Lcom/kingroot/kinguser/az;->cmd:I

    iget v3, v4, Lcom/kingroot/kinguser/az;->seqNo:I

    const/16 v5, 0x8

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;I)V

    goto :goto_0
.end method

.method private i(Lcom/kingroot/kinguser/cff$d;)V
    .locals 7

    .prologue
    .line 885
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 895
    :cond_0
    return-void

    .line 888
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/az;

    .line 889
    if-eqz v4, :cond_2

    .line 890
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "TmsTcpManager"

    iget v2, v4, Lcom/kingroot/kinguser/az;->cmd:I

    iget v3, v4, Lcom/kingroot/kinguser/az;->seqNo:I

    const/4 v5, 0x7

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/cfo;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfo;->cdn:Z

    return v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/cfo;)I
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfo;->ams()I

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cff;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->bYN:Lcom/kingroot/kinguser/cff;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/ceu;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->bYt:Lcom/kingroot/kinguser/ceu;

    return-object v0
.end method

.method private final lq(I)V
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdm:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdm:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/cfo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/cfo;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfo;->amv()V

    return-void
.end method

.method private nW(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->ccY:Lcom/kingroot/kinguser/cfy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfy;->amQ()I

    move-result v0

    .line 948
    return v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/cfo;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfo;->amt()V

    return-void
.end method


# virtual methods
.method W(ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 1092
    const/16 v1, 0xb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cfo;->a(ILjava/lang/Object;IJZ)V

    .line 1093
    return-void
.end method

.method declared-synchronized alZ()V
    .locals 1

    .prologue
    .line 912
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/cej;->akX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->ami()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    :cond_0
    monitor-exit p0

    return-void

    .line 912
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public amA()I
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->fD()Lcom/kingroot/kinguser/ap;

    move-result-object v0

    iget v0, v0, Lcom/kingroot/kinguser/ap;->hX:I

    return v0
.end method

.method public amb()V
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->amb()V

    .line 1152
    return-void
.end method

.method public amc()V
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->amc()V

    .line 1159
    return-void
.end method

.method public amp()V
    .locals 2

    .prologue
    .line 1201
    const/4 v0, 0x0

    const-string v1, "tcp_control"

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/cfo;->W(ILjava/lang/String;)V

    .line 1202
    return-void
.end method

.method amu()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1046
    iget-byte v2, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    if-ne v2, v0, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return v0

    .line 1050
    :cond_1
    iget-byte v2, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1051
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingroot/kinguser/cfo;->cdg:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 1052
    iget-wide v4, p0, Lcom/kingroot/kinguser/cfo;->cdg:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    .line 1059
    goto :goto_0

    .line 1062
    :cond_3
    iget-wide v2, p0, Lcom/kingroot/kinguser/cfo;->cdg:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 1068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingroot/kinguser/cfo;->cdg:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 1069
    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1073
    iget-boolean v2, p0, Lcom/kingroot/kinguser/cfo;->cdh:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 1076
    goto :goto_0
.end method

.method public amz()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1211
    iget-byte v0, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    if-ne v0, v6, :cond_0

    .line 1218
    const/16 v1, 0xd

    const-string v2, "onHeartBeat"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cfo;->a(ILjava/lang/Object;IJZ)V

    .line 1222
    :cond_0
    return-void
.end method

.method public c(I[B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1235
    iput v3, p0, Lcom/kingroot/kinguser/cfo;->cde:I

    .line 1237
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfo;->bYx:Z

    if-nez v0, :cond_0

    const v0, 0x10003

    invoke-static {v0}, Lcom/kingroot/kinguser/cgl;->lu(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/kingroot/kinguser/cfd;->ag([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1238
    const-string v0, "TmsTcpManager"

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/cfe;->e(Ljava/lang/String;[B)V

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cau:Lcom/kingroot/kinguser/cfl$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, p2, v2}, Lcom/kingroot/kinguser/cfl$a;->a(ZI[BLcom/kingroot/kinguser/cff$d;)V

    .line 1243
    return-void
.end method

.method public d(ILjava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1248
    packed-switch p1, :pswitch_data_0

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1252
    :pswitch_0
    iput-boolean v6, p0, Lcom/kingroot/kinguser/cfo;->cdn:Z

    .line 1253
    iput-byte v3, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    .line 1254
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->amg()I

    move-result v0

    if-lez v0, :cond_0

    .line 1256
    iget v0, p0, Lcom/kingroot/kinguser/cfo;->cde:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1258
    iget v0, p0, Lcom/kingroot/kinguser/cfo;->cde:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/cfo;->cde:I

    .line 1259
    const/16 v1, 0xb

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "delay_fp_for_connect_broken"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->fD()Lcom/kingroot/kinguser/ap;

    move-result-object v0

    iget v0, v0, Lcom/kingroot/kinguser/ap;->ie:I

    int-to-long v8, v0

    mul-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cfo;->a(ILjava/lang/Object;IJZ)V

    goto :goto_0

    .line 1248
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method e(Lcom/kingroot/kinguser/cff$d;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 772
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->ccY:Lcom/kingroot/kinguser/cfy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfy;->amN()Z

    move-result v0

    .line 773
    if-nez v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cau:Lcom/kingroot/kinguser/cfl$a;

    const v1, -0x265b560

    invoke-interface {v0, v6, v1, p1}, Lcom/kingroot/kinguser/cfl$a;->b(ZILcom/kingroot/kinguser/cff$d;)V

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/cej;->akX()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cau:Lcom/kingroot/kinguser/cfl$a;

    const v1, -0x265dc70

    invoke-interface {v0, v6, v1, p1}, Lcom/kingroot/kinguser/cfl$a;->b(ZILcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 786
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/cfo$f;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/kingroot/kinguser/cfo$f;-><init>(Lcom/kingroot/kinguser/cfo;ILcom/kingroot/kinguser/ccn;Lcom/kingroot/kinguser/cff$d;)V

    .line 789
    iget-byte v1, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    if-ne v1, v6, :cond_3

    .line 790
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/cfo;->f(Lcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 791
    :cond_3
    iget-byte v1, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 793
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfo;->i(Lcom/kingroot/kinguser/cff$d;)V

    .line 794
    iget-object v1, p0, Lcom/kingroot/kinguser/cfo;->cdj:Ljava/lang/Object;

    monitor-enter v1

    .line 795
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo;->cdi:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 796
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 797
    :cond_4
    iget-byte v1, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    if-nez v1, :cond_0

    .line 799
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cff$d;)V

    .line 800
    iget-object v1, p0, Lcom/kingroot/kinguser/cfo;->cdj:Ljava/lang/Object;

    monitor-enter v1

    .line 801
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo;->cdi:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 802
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 803
    const/16 v1, 0xb

    const-string v2, "delay_send_for_others"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cfo;->a(ILjava/lang/Object;IJZ)V

    goto :goto_0

    .line 802
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method f(Lcom/kingroot/kinguser/cff$d;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 817
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->ccY:Lcom/kingroot/kinguser/cfy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfy;->amN()Z

    move-result v0

    .line 818
    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cau:Lcom/kingroot/kinguser/cfl$a;

    const v1, -0x265b560

    invoke-interface {v0, v6, v1, p1}, Lcom/kingroot/kinguser/cfl$a;->b(ZILcom/kingroot/kinguser/cff$d;)V

    .line 844
    :goto_0
    return-void

    .line 824
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/cej;->akX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cau:Lcom/kingroot/kinguser/cfl$a;

    const v1, -0x265dc70

    invoke-interface {v0, v6, v1, p1}, Lcom/kingroot/kinguser/cfl$a;->b(ZILcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 830
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cfo;->lq(I)V

    .line 831
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfo;->g(Lcom/kingroot/kinguser/cff$d;)V

    .line 834
    iget-boolean v0, p1, Lcom/kingroot/kinguser/cff$d;->caI:Z

    if-nez v0, :cond_2

    .line 835
    iget-wide v4, p1, Lcom/kingroot/kinguser/cff$d;->caP:J

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cfo;->cR(J)V

    .line 839
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/cfo$f;

    const/16 v3, 0x20

    invoke-direct {v0, p0, v3, v2, p1}, Lcom/kingroot/kinguser/cfo$f;-><init>(Lcom/kingroot/kinguser/cfo;ILcom/kingroot/kinguser/ccn;Lcom/kingroot/kinguser/cff$d;)V

    .line 840
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo;->cdj:Ljava/lang/Object;

    monitor-enter v3

    .line 841
    :try_start_0
    iget-object v4, p0, Lcom/kingroot/kinguser/cfo;->cdo:Lcom/kingroot/kinguser/cfw;

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/cfw;->add(Ljava/lang/Object;)V

    .line 842
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v1

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cfo;->a(ILjava/lang/Object;IJZ)V

    goto :goto_0

    .line 842
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public lr(I)V
    .locals 0

    .prologue
    .line 1272
    return-void
.end method

.method public onClose()V
    .locals 7

    .prologue
    .line 1206
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cfo;->a(ILjava/lang/Object;IJZ)V

    .line 1207
    return-void
.end method

.method public onConnected()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1276
    iput-boolean v3, p0, Lcom/kingroot/kinguser/cfo;->cdh:Z

    .line 1278
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->amg()I

    move-result v0

    .line 1279
    if-gtz v0, :cond_0

    .line 1286
    :goto_0
    return-void

    .line 1285
    :cond_0
    const/16 v1, 0x9

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cfo;->a(ILjava/lang/Object;IJZ)V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo;->cdc:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->amg()I

    .line 1292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfo;->cdn:Z

    .line 1293
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/kingroot/kinguser/cfo;->cdk:B

    .line 1294
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cfo;->lq(I)V

    .line 1295
    return-void
.end method
