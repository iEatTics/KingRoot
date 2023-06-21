.class public Lcom/kingroot/kinguser/pk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/pk$a;
    }
.end annotation


# instance fields
.field private yL:Landroid/service/notification/StatusBarNotification;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/pl;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/kingroot/kinguser/pk;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/pk;)Landroid/service/notification/StatusBarNotification;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/pk;->yL:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method private static a(Ljava/lang/String;C)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 362
    .line 363
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 365
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 368
    array-length v5, v4

    move v1, v2

    move v0, v2

    .line 369
    :goto_0
    add-int/lit8 v6, v5, -0x1

    if-ge v1, v6, :cond_2

    .line 370
    aget-char v6, v4, v1

    if-ne v6, p1, :cond_1

    .line 371
    add-int/lit8 v0, v0, 0x1

    .line 369
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v7, :cond_3

    .line 377
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 379
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v7, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 380
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 382
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 383
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 385
    :cond_4
    return-object v3
.end method

.method private a(Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 14

    .prologue
    .line 150
    packed-switch p2, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 152
    :pswitch_0
    invoke-virtual/range {p5 .. p6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 153
    move-object/from16 v0, p4

    iget v1, v0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    add-int/lit8 v3, v1, 0x64

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Lcom/kingroot/kinguser/pk;->a(Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 156
    :pswitch_1
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 157
    invoke-virtual/range {p5 .. p6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 158
    move-object/from16 v0, p4

    iget v1, v0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    add-int/lit8 v3, v1, 0x6e

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Lcom/kingroot/kinguser/pk;->a(Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 161
    :pswitch_2
    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 162
    new-instance v1, Lcom/kingroot/kinguser/pn;

    move-object v2, p0

    move-object/from16 v3, p8

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p3

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/kingroot/kinguser/pn;-><init>(Lcom/kingroot/kinguser/pk;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$BigPictureStyle;Landroid/content/Context;Lcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    .line 180
    invoke-virtual {v1}, Lcom/kingroot/kinguser/pn;->ny()Z

    goto/16 :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 12

    .prologue
    .line 195
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/kingroot/kinguser/ad;->gO:Ljava/lang/String;

    const/16 v3, 0x7c

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/pk;->a(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v2

    .line 196
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 197
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    move-object/from16 v0, p7

    iget v3, v0, Lcom/kingroot/kinguser/ad;->gN:I

    packed-switch v3, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 202
    :pswitch_0
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/kingroot/kinguser/ad;->gO:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/cbe;->jO(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 203
    add-int/lit8 v4, p2, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/kingroot/kinguser/pk;->a(Landroid/content/Context;ILandroid/content/Intent;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 208
    :pswitch_1
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 212
    add-int/lit8 v4, p2, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/kingroot/kinguser/pk;->a(Landroid/content/Context;ILandroid/content/Intent;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 216
    :pswitch_2
    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v2}, Lcom/kingroot/kinguser/cbe;->aD(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 217
    add-int/lit8 v4, p2, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/kingroot/kinguser/pk;->a(Landroid/content/Context;ILandroid/content/Intent;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 222
    :pswitch_3
    new-instance v2, Lcom/kingroot/kinguser/pq;

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/kingroot/kinguser/pq;-><init>(Lcom/kingroot/kinguser/pk;Ljava/lang/String;Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    .line 242
    invoke-virtual {v2}, Lcom/kingroot/kinguser/pq;->ny()Z

    goto :goto_0

    .line 246
    :pswitch_4
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 247
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    invoke-static {}, Lcom/kingroot/kinguser/bzu;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    add-int/lit8 v4, p2, 0x4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/kingroot/kinguser/pk;->a(Landroid/content/Context;ILandroid/content/Intent;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto/16 :goto_0

    .line 254
    :pswitch_5
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/kingroot/kinguser/ad;->gO:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/cbe;->jP(Ljava/lang/String;)Lcom/kingroot/kinguser/cbd;

    move-result-object v2

    .line 255
    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v2}, Lcom/kingroot/kinguser/cbd;->getId()I

    move-result v4

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cbd;->getIntent()Landroid/content/Intent;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/kingroot/kinguser/pk;->a(Landroid/content/Context;ILandroid/content/Intent;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto/16 :goto_0

    .line 258
    :cond_0
    iget-wide v2, p3, Lcom/kingroot/kinguser/x;->gt:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    const-string v4, ""

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v3, v4}, Lcom/kingroot/kinguser/cbe;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/kingroot/kinguser/pk;Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p11}, Lcom/kingroot/kinguser/pk;->a(Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/pk;Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p9}, Lcom/kingroot/kinguser/pk;->a(Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/pk;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;II)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/pk;->a(Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;II)V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;II)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 395
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 396
    iget-wide v0, p1, Lcom/kingroot/kinguser/x;->gt:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/x;->gu:J

    iget v5, p2, Lcom/kingroot/kinguser/u;->conchSeqno:I

    iget v6, p2, Lcom/kingroot/kinguser/u;->gh:I

    move v7, p3

    move v8, v4

    move v9, p4

    invoke-static/range {v0 .. v9}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v0

    .line 404
    new-instance v1, Lcom/kingroot/kinguser/r;

    invoke-direct {v1}, Lcom/kingroot/kinguser/r;-><init>()V

    .line 405
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    .line 406
    iget-object v2, v1, Lcom/kingroot/kinguser/r;->ge:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V

    .line 410
    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 24

    .prologue
    .line 106
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/kingroot/kinguser/ad;->content:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/pk;->ch(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 111
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 112
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 115
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual/range {p6 .. p6}, Lcom/kingroot/kinguser/cbe;->Tp()I

    move-result v14

    .line 120
    if-nez v14, :cond_2

    .line 122
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/cca;->akH()Lcom/kingroot/kinguser/cca;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/cca;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v14, v1, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_2
    :goto_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v6, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 130
    move-object/from16 v0, p4

    iget v3, v0, Lcom/kingroot/kinguser/ad;->type:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v1 .. v12}, Lcom/kingroot/kinguser/pk;->a(Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 132
    :cond_3
    new-instance v10, Lcom/kingroot/kinguser/pl;

    move-object/from16 v11, p0

    move-object v13, v6

    move-object/from16 v15, p1

    move-object/from16 v16, p4

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    invoke-direct/range {v10 .. v23}, Lcom/kingroot/kinguser/pl;-><init>(Lcom/kingroot/kinguser/pk;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;ILandroid/content/Context;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    .line 145
    invoke-virtual {v10}, Lcom/kingroot/kinguser/pl;->ny()Z

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private ch(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    const/16 v0, 0x7c

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/pk;->a(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static ci(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 414
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 415
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 418
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 422
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :catch_0
    move-exception v5

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    throw v0

    .line 425
    :cond_0
    return-object v2
.end method

.method private f(Ljava/lang/String;Lcom/kingroot/kinguser/pv;)Z
    .locals 1

    .prologue
    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    .line 280
    :cond_0
    invoke-interface {p2, p1}, Lcom/kingroot/kinguser/pv;->cj(Ljava/lang/String;)Lcom/kingroot/kinguser/cby;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cby;->success()Z

    move-result v0

    goto :goto_0
.end method

.method public static gk()Lcom/kingroot/kinguser/pk;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/pk$a;->gm()Lcom/kingroot/kinguser/pk;

    move-result-object v0

    return-object v0
.end method

.method private static gl()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 430
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/gv;->aH()Lcom/kingroot/kinguser/gv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/gv;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {}, Lcom/kingroot/kinguser/gv;->aH()Lcom/kingroot/kinguser/gv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/gv;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 433
    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 434
    const-string v1, "TW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    :cond_0
    const/4 v0, 0x2

    .line 455
    :cond_1
    :goto_0
    return v0

    .line 437
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 438
    :cond_3
    const-string v2, "ES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 439
    const/4 v0, 0x3

    goto :goto_0

    .line 440
    :cond_4
    const-string v2, "PT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 441
    const/4 v0, 0x4

    goto :goto_0

    .line 442
    :cond_5
    const-string v2, "IN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 443
    const/4 v0, 0x5

    goto :goto_0

    .line 444
    :cond_6
    const-string v2, "HI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 445
    const/4 v0, 0x6

    goto :goto_0

    .line 446
    :cond_7
    const-string v2, "RU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 447
    const/4 v0, 0x7

    goto :goto_0

    .line 448
    :cond_8
    const-string v2, "EN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    const/16 v0, 0x8

    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;ILandroid/content/Intent;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 7

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kingcom.action.NOTIFY_PUSH_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    const-string v1, "extra_notify_push_click"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 293
    const-string v1, "extra_task_id"

    iget-wide v2, p4, Lcom/kingroot/kinguser/x;->gt:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 295
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 296
    invoke-virtual {p6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 300
    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 301
    invoke-virtual {p6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 302
    new-instance v0, Lcom/kingroot/kinguser/pr;

    move-object v1, p0

    move v2, p2

    move-object v3, p7

    move-object v4, p8

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/pr;-><init>(Lcom/kingroot/kinguser/pk;ILcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;)V

    .line 342
    invoke-virtual {v0}, Lcom/kingroot/kinguser/pr;->ny()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 75
    if-eqz p4, :cond_0

    if-nez p6, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v2, 0x0

    .line 80
    :try_start_0
    iget-object v0, p4, Lcom/kingroot/kinguser/ad;->gP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 92
    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p4, Lcom/kingroot/kinguser/ad;->gM:Ljava/lang/String;

    invoke-direct {p0, v0, p5}, Lcom/kingroot/kinguser/pk;->f(Ljava/lang/String;Lcom/kingroot/kinguser/pv;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    invoke-direct/range {p0 .. p6}, Lcom/kingroot/kinguser/pk;->c(Landroid/content/Context;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/ad;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p4, Lcom/kingroot/kinguser/ad;->gP:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/pk;->ci(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/pk;->gl()I

    move-result v4

    if-ne v0, v4, :cond_3

    move v0, v1

    .line 87
    goto :goto_1

    .line 97
    :cond_4
    iget-wide v0, p2, Lcom/kingroot/kinguser/x;->gt:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-virtual {p6, v0, v1, v2}, Lcom/kingroot/kinguser/cbe;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
