.class public Lcom/kingroot/kinguser/ou;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/pu;


# instance fields
.field private ym:Lcom/kingroot/kinguser/pv;

.field private yo:Lcom/kingroot/kinguser/cbe;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/cbe;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/kingroot/kinguser/ou;->ym:Lcom/kingroot/kinguser/pv;

    .line 43
    iput-object v0, p0, Lcom/kingroot/kinguser/ou;->yo:Lcom/kingroot/kinguser/cbe;

    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/ou;->ym:Lcom/kingroot/kinguser/pv;

    .line 47
    iput-object p2, p0, Lcom/kingroot/kinguser/ou;->yo:Lcom/kingroot/kinguser/cbe;

    .line 48
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Lcom/qq/taf/jce/JceInputStream;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingroot/kinguser/x;",
            "Lcom/kingroot/kinguser/u;",
            "Lcom/qq/taf/jce/JceInputStream;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/kingroot/kinguser/ac;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ac;-><init>()V

    .line 66
    invoke-virtual {v0, p4}, Lcom/kingroot/kinguser/ac;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 68
    iget-object v1, v0, Lcom/kingroot/kinguser/ac;->gK:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kingroot/kinguser/ac;->gK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, v0, Lcom/kingroot/kinguser/ac;->gK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_2
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/kingroot/kinguser/ou;->a(Landroid/content/Context;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingroot/kinguser/x;",
            "Lcom/kingroot/kinguser/u;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v10, Lcom/kingroot/kinguser/r;

    invoke-direct {v10}, Lcom/kingroot/kinguser/r;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    .line 86
    iget v0, p3, Lcom/kingroot/kinguser/u;->gh:I

    sparse-switch v0, :sswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 88
    :sswitch_0
    new-instance v1, Lcom/kingroot/kinguser/pt;

    invoke-direct {v1}, Lcom/kingroot/kinguser/pt;-><init>()V

    .line 89
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/pt;->url:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/pt;->zd:I

    .line 91
    const/4 v0, 0x2

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/pt;->mf:Ljava/lang/String;

    .line 92
    const/4 v0, 0x3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/pt;->ze:Ljava/lang/String;

    .line 93
    const/4 v0, 0x4

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/pt;->pi:Ljava/lang/String;

    .line 94
    const/4 v0, 0x5

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/pt;->fileName:Ljava/lang/String;

    .line 95
    const/4 v0, 0x6

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/pt;->zf:I

    .line 96
    const/4 v0, 0x7

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/pt;->zg:I

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/ou;->ym:Lcom/kingroot/kinguser/pv;

    iget-object v2, p0, Lcom/kingroot/kinguser/ou;->yo:Lcom/kingroot/kinguser/cbe;

    invoke-static {p2, p3, v1, v0, v2}, Lcom/kingroot/kinguser/pi;->a(Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/pt;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 100
    :sswitch_1
    new-instance v3, Lcom/kingroot/kinguser/ad;

    invoke-direct {v3}, Lcom/kingroot/kinguser/ad;-><init>()V

    .line 101
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/kingroot/kinguser/ad;->gM:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/kingroot/kinguser/ad;->type:I

    .line 103
    const/4 v0, 0x2

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/kingroot/kinguser/ad;->content:Ljava/lang/String;

    .line 104
    const/4 v0, 0x3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/kingroot/kinguser/ad;->gN:I

    .line 105
    const/4 v0, 0x4

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/kingroot/kinguser/ad;->gO:Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lcom/kingroot/kinguser/ou;->ym:Lcom/kingroot/kinguser/pv;

    iget-object v5, p0, Lcom/kingroot/kinguser/ou;->yo:Lcom/kingroot/kinguser/cbe;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/pi;->a(Landroid/content/Context;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto/16 :goto_0

    .line 109
    :sswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ou;->yo:Lcom/kingroot/kinguser/cbe;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/kingroot/kinguser/ou;->yo:Lcom/kingroot/kinguser/cbe;

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/cbe;->jQ(Ljava/lang/String;)I

    move-result v9

    .line 111
    iget-wide v0, p2, Lcom/kingroot/kinguser/x;->gt:J

    iget-wide v2, p2, Lcom/kingroot/kinguser/x;->gu:J

    const/4 v4, 0x0

    iget v5, p3, Lcom/kingroot/kinguser/u;->conchSeqno:I

    iget v6, p3, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v0

    .line 119
    iget-object v1, v10, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto/16 :goto_0

    .line 124
    :sswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ou;->yo:Lcom/kingroot/kinguser/cbe;

    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/kingroot/kinguser/ou;->yo:Lcom/kingroot/kinguser/cbe;

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/cbe;->jR(Ljava/lang/String;)I

    move-result v9

    .line 126
    iget-wide v0, p2, Lcom/kingroot/kinguser/x;->gt:J

    iget-wide v2, p2, Lcom/kingroot/kinguser/x;->gu:J

    const/4 v4, 0x0

    iget v5, p3, Lcom/kingroot/kinguser/u;->conchSeqno:I

    iget v6, p3, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v0

    .line 134
    iget-object v1, v10, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto/16 :goto_0

    .line 140
    :sswitch_4
    const/4 v9, 0x1

    .line 143
    :try_start_0
    new-instance v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;

    invoke-direct {v1}, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;-><init>()V

    .line 145
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->language:I

    .line 146
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->beginTime:J

    .line 147
    const/4 v0, 0x2

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->endTime:J

    .line 148
    const/4 v0, 0x3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->picDownloadUrl:Ljava/lang/String;

    .line 149
    const/4 v0, 0x4

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->clickJumpUrl:Ljava/lang/String;

    .line 150
    const/4 v0, 0x5

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->showDuration:I

    .line 154
    const/4 v0, 0x6

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->timeInterval:I

    .line 155
    const/4 v0, 0x7

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->priority:I

    .line 156
    const/16 v0, 0x8

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->extrasParam:Ljava/lang/String;

    .line 157
    iget-object v0, p3, Lcom/kingroot/kinguser/u;->go:Lcom/kingroot/kinguser/ai;

    iget v0, v0, Lcom/kingroot/kinguser/ai;->ga:I

    int-to-long v2, v0

    iput-wide v2, v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->expirationTime:J

    .line 158
    iget-wide v2, p2, Lcom/kingroot/kinguser/x;->gt:J

    iput-wide v2, v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    .line 159
    iget v0, p3, Lcom/kingroot/kinguser/u;->conchSeqno:I

    iput v0, v1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 166
    :goto_2
    iget-object v1, p0, Lcom/kingroot/kinguser/ou;->yo:Lcom/kingroot/kinguser/cbe;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/cbe;->a(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)V

    .line 167
    iget-wide v0, p2, Lcom/kingroot/kinguser/x;->gt:J

    iget-wide v2, p2, Lcom/kingroot/kinguser/x;->gu:J

    const/4 v4, 0x0

    iget v5, p3, Lcom/kingroot/kinguser/u;->conchSeqno:I

    iget v6, p3, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v0

    .line 170
    iget-object v1, v10, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto/16 :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x6

    :try_start_1
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 160
    :catch_0
    move-exception v0

    .line 163
    const/4 v9, 0x3

    .line 164
    const/4 v0, 0x0

    goto :goto_2

    .line 174
    :sswitch_5
    new-instance v1, Lcom/kingroot/kinguser/ab;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ab;-><init>()V

    .line 175
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/ab;->gH:I

    .line 176
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/ab;->gI:I

    .line 177
    const/4 v0, 0x2

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/ab;->gJ:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/ou;->yo:Lcom/kingroot/kinguser/cbe;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cbe;->a(Lcom/kingroot/kinguser/ab;)I

    move-result v9

    .line 179
    iget-wide v0, p2, Lcom/kingroot/kinguser/x;->gt:J

    iget-wide v2, p2, Lcom/kingroot/kinguser/x;->gu:J

    const/4 v4, 0x0

    iget v5, p3, Lcom/kingroot/kinguser/u;->conchSeqno:I

    iget v6, p3, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v0

    .line 187
    iget-object v1, v10, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    goto/16 :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x13 -> :sswitch_2
        0x15 -> :sswitch_3
        0x311 -> :sswitch_4
        0x62b -> :sswitch_5
        0x646 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/x;IIILcom/qq/taf/jce/JceStruct;)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/x;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    if-eqz p1, :cond_0

    instance-of v0, p5, Lcom/kingroot/kinguser/u;

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p5

    .line 56
    check-cast v3, Lcom/kingroot/kinguser/u;

    .line 57
    new-instance v4, Lcom/qq/taf/jce/JceInputStream;

    iget-object v0, v3, Lcom/kingroot/kinguser/u;->gn:[B

    invoke-direct {v4, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 58
    const-string v0, "UTF-8"

    invoke-virtual {v4, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-static {}, Lcom/kingroot/kinguser/bzu;->ge()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ou;->a(Landroid/content/Context;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Lcom/qq/taf/jce/JceInputStream;Ljava/util/List;)V

    goto :goto_0
.end method
