.class public Lcom/kingroot/kinguser/adm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile acT:Lcom/kingroot/kinguser/adm;

.field private static acZ:I

.field private static ada:I


# instance fields
.field private acU:Landroid/app/Notification;

.field private acV:Landroid/widget/RemoteViews;

.field private acW:Lcom/kingroot/kinguser/bis;

.field private acX:Lcom/kingroot/kinguser/bed;

.field private acY:Lcom/kingroot/kinguser/bed;

.field private adb:Lcom/kingroot/kinguser/bed;

.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 259
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/adm;->acT:Lcom/kingroot/kinguser/adm;

    .line 1427
    const/16 v0, 0xf5

    const/16 v1, 0xf8

    const/16 v2, 0xfc

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/adm;->acZ:I

    .line 1428
    const/16 v0, 0xa7

    const/16 v1, 0xaa

    const/16 v2, 0xae

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/adm;->ada:I

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object v0, p0, Lcom/kingroot/kinguser/adm;->acU:Landroid/app/Notification;

    .line 265
    iput-object v0, p0, Lcom/kingroot/kinguser/adm;->acV:Landroid/widget/RemoteViews;

    .line 267
    new-instance v0, Lcom/kingroot/kinguser/bis;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bis;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/adm;->acW:Lcom/kingroot/kinguser/bis;

    .line 672
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/adm$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/adm$1;-><init>(Lcom/kingroot/kinguser/adm;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/adm;->acX:Lcom/kingroot/kinguser/bed;

    .line 743
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/adm$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/adm$2;-><init>(Lcom/kingroot/kinguser/adm;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/adm;->acY:Lcom/kingroot/kinguser/bed;

    .line 1587
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/adm$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/adm$3;-><init>(Lcom/kingroot/kinguser/adm;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/adm;->adb:Lcom/kingroot/kinguser/bed;

    .line 280
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/kingroot/kinguser/adm;->mNotificationManager:Landroid/app/NotificationManager;

    .line 282
    return-void
.end method

.method private final a(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1448
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/adm;->a(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 4

    .prologue
    .line 1453
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 1454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1455
    invoke-direct {p0}, Lcom/kingroot/kinguser/adm;->sv()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1456
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1457
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1458
    invoke-virtual {v0, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1459
    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1460
    invoke-virtual {v0, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1461
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 1462
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 1465
    const/4 v0, 0x0

    .line 1466
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 1467
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1473
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1474
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1476
    return-object v1

    .line 1468
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 1470
    const/16 v0, 0x80

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/adm;)Lcom/kingroot/kinguser/bis;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->acW:Lcom/kingroot/kinguser/bis;

    return-object v0
.end method

.method private a(ILandroid/app/Notification;)V
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/kingroot/kinguser/adm;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 948
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/adm;I)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/adm;->cz(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/adm;Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/adm;->b(Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 1

    .prologue
    .line 952
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Au()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    if-eq p2, v0, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 961
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/adm;)I
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/kingroot/kinguser/adm;->sH()I

    move-result v0

    return v0
.end method

.method private b(Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)V
    .locals 2

    .prologue
    const/16 v1, 0xe

    .line 547
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 549
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/adm;->c(Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/adm;->b(ILjava/lang/CharSequence;)V

    .line 552
    return-void
.end method

.method private c(Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f070061

    const/4 v6, 0x0

    const/16 v5, 0xa

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 556
    iget-object v1, p1, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apY:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/adm;->eB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    iget-object v2, p1, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->processName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/adm;->eC(Ljava/lang/String;)Z

    move-result v2

    .line 559
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->DG()I

    move-result v3

    .line 560
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/aks;->DI()I

    move-result v4

    .line 569
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 570
    if-nez v3, :cond_0

    .line 571
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 572
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/kingroot/kinguser/aks;->ew(I)V

    .line 575
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->DH()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 580
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :goto_0
    add-int/lit8 v1, v3, 0x1

    .line 587
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/aks;->ev(I)V

    .line 588
    if-ne v1, v5, :cond_1

    .line 590
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/kingroot/kinguser/aks;->ev(I)V

    .line 624
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 583
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 593
    :cond_3
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    .line 595
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 598
    :cond_4
    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    .line 599
    if-nez v4, :cond_5

    .line 600
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 601
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/aks;->ey(I)V

    .line 604
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->DJ()I

    move-result v1

    if-ne v4, v1, :cond_6

    .line 606
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :goto_2
    add-int/lit8 v1, v4, 0x1

    .line 613
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/aks;->ex(I)V

    .line 614
    if-ne v1, v5, :cond_1

    .line 616
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/kingroot/kinguser/aks;->ex(I)V

    goto :goto_1

    .line 609
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 619
    :cond_7
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 621
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/adm;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/kingroot/kinguser/adm;->sG()V

    return-void
.end method

.method private cA(I)I
    .locals 5

    .prologue
    .line 1432
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    sget v1, Lcom/kingroot/kinguser/adm;->ada:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1433
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    sget v2, Lcom/kingroot/kinguser/adm;->ada:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1434
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sget v3, Lcom/kingroot/kinguser/adm;->ada:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1435
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 1438
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sget v2, Lcom/kingroot/kinguser/adm;->acZ:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1439
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sget v3, Lcom/kingroot/kinguser/adm;->acZ:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1440
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sget v4, Lcom/kingroot/kinguser/adm;->acZ:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1441
    add-int/2addr v1, v2

    add-int/2addr v1, v3

    .line 1444
    if-ge v1, v0, :cond_0

    const v0, 0x7f0201ef

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0201f0

    goto :goto_0
.end method

.method private cz(I)V
    .locals 8

    .prologue
    const/16 v0, 0xd

    .line 1205
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1208
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const-class v1, Lcom/kingroot/kinguser/activitys/AntiInjectLogActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1209
    const/16 v1, 0xd

    .line 1210
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f07005d

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1211
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v3, 0x7f07005d

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 1213
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v5, 0x7f07005c

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v0, p0

    .line 1209
    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/adm;->b(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :goto_0
    return-void

    .line 1216
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private eB(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 629
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    .line 630
    const-string v1, "/data/data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 631
    if-ne v1, v3, :cond_0

    .line 655
    :goto_0
    return-object v0

    .line 635
    :cond_0
    const-string v1, ""

    .line 637
    const-string v1, "/data/data-lib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 638
    if-ne v1, v3, :cond_1

    .line 640
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 641
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 642
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 650
    :goto_1
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 651
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 645
    :cond_1
    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 646
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 647
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 652
    :catch_0
    move-exception v1

    .line 653
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private eC(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 660
    const-string v0, "zygote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "system_server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    :cond_0
    const/4 v0, 0x1

    .line 663
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private eD(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5

    .prologue
    .line 1317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1318
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1330
    :cond_0
    :goto_0
    return-object v0

    .line 1321
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1323
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703bc

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1324
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1325
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1326
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1327
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x10000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v2, v1

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private sC()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    const v4, 0x7f0f0276

    .line 1347
    .line 1348
    invoke-direct {p0}, Lcom/kingroot/kinguser/adm;->sF()Ljava/lang/Integer;

    move-result-object v0

    .line 1349
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0300ee

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1350
    const v2, 0x7f0f0274

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1351
    const v2, 0x7f0f0275

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1352
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1354
    const-string v2, "setBackgroundResource"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/adm;->cA(I)I

    move-result v0

    invoke-virtual {v1, v4, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1355
    return-object v1
.end method

.method private sD()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 1360
    .line 1361
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300f0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1362
    return-object v0
.end method

.method private sE()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    const v4, 0x7f0f0276

    .line 1370
    .line 1371
    invoke-direct {p0}, Lcom/kingroot/kinguser/adm;->sF()Ljava/lang/Integer;

    move-result-object v0

    .line 1372
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0300e8

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1373
    const v2, 0x7f0f0274

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1374
    const v2, 0x7f0f0275

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1375
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1377
    const-string v2, "setBackgroundResource"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/adm;->cA(I)I

    move-result v0

    invoke-virtual {v1, v4, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1379
    return-object v1
.end method

.method private sF()Ljava/lang/Integer;
    .locals 7

    .prologue
    const/16 v4, 0x15

    const/4 v6, -0x1

    .line 1388
    invoke-static {}, Lcom/kingroot/kinguser/adp;->sS()Ljava/lang/Integer;

    move-result-object v0

    .line 1389
    if-nez v0, :cond_0

    .line 1390
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 1391
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1393
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 1395
    invoke-static {}, Lcom/kingroot/kinguser/zi;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "TextAppearance.StatusBar.EventContent.Title"

    const-string v4, "style"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1398
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1399
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1417
    :cond_0
    :goto_0
    return-object v0

    .line 1401
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    if-lt v2, v4, :cond_2

    .line 1402
    invoke-static {}, Lcom/kingroot/kinguser/zi;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "TextAppearance.Material.Notification.Title"

    const-string v4, "style"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1405
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1406
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1407
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 1406
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1410
    :cond_2
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1412
    :catch_0
    move-exception v0

    .line 1413
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private sG()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/16 v0, 0xf

    .line 1485
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1491
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/SliderMainActivity;->i(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 1493
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07022f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1494
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07022f

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1495
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f07022e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 1498
    iget-object v4, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1500
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v6, 0x7f0300ec

    invoke-direct {v5, v0, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1502
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f0300ed

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1503
    const v0, 0x7f0f0274

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1504
    const v0, 0x7f0f0275

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1507
    const v0, 0x7f0f027a

    .line 1508
    invoke-static {}, Lcom/kingroot/kinguser/abg;->qc()I

    move-result v3

    const/high16 v7, 0x42800000    # 64.0f

    invoke-static {v7}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v7

    .line 1507
    invoke-static {v6, v3, v7}, Lcom/kingroot/kinguser/bhd;->d(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1510
    invoke-direct {p0, v5, v1, v2}, Lcom/kingroot/kinguser/adm;->a(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification;

    move-result-object v1

    .line 1511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 1512
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0300ec

    invoke-direct {v2, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1513
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v3, 0x7f07022d

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1514
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v6, 0x7f07022c

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1515
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v7, 0x7f07022b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    .line 1518
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v8, 0x7f0300ef

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1519
    const v0, 0x7f0f0274

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    const v0, 0x7f0f0275

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1521
    const v0, 0x7f0f027c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1524
    const v0, 0x7f0f027a

    .line 1525
    invoke-static {}, Lcom/kingroot/kinguser/abg;->qc()I

    move-result v3

    const/high16 v6, 0x43000000    # 128.0f

    invoke-static {v6}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v6

    .line 1524
    invoke-static {v8, v3, v6}, Lcom/kingroot/kinguser/bhd;->d(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1527
    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1531
    :cond_0
    iput-object v5, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1532
    iput-object v4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1534
    const/16 v0, 0xf

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/adm;->a(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    :goto_0
    return-void

    .line 1535
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sH()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 1546
    const/4 v7, -0x1

    .line 1550
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 1551
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1552
    if-eqz v0, :cond_1

    .line 1553
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1554
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1556
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 1557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1558
    const-wide/32 v8, 0x5265c00

    .line 1559
    const-wide/32 v4, 0xf731400

    .line 1560
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1561
    const/4 v0, 0x1

    .line 1571
    :goto_0
    return v0

    :cond_0
    move-wide v4, v8

    .line 1562
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 1563
    goto :goto_0

    .line 1567
    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method public static st()Lcom/kingroot/kinguser/adm;
    .locals 2

    .prologue
    .line 285
    sget-object v0, Lcom/kingroot/kinguser/adm;->acT:Lcom/kingroot/kinguser/adm;

    if-nez v0, :cond_1

    .line 286
    const-class v1, Lcom/kingroot/kinguser/adm;

    monitor-enter v1

    .line 287
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/adm;->acT:Lcom/kingroot/kinguser/adm;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/kingroot/kinguser/adm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/adm;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/adm;->acT:Lcom/kingroot/kinguser/adm;

    .line 290
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/adm;->acT:Lcom/kingroot/kinguser/adm;

    return-object v0

    .line 290
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sv()I
    .locals 2

    .prologue
    .line 472
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const v0, 0x7f020160

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020161

    goto :goto_0
.end method

.method private z(ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    .line 436
    invoke-static {v2, p2, p1}, Lcom/kingroot/kinguser/activitys/KuInstallNotifyActivity;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 435
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 438
    return-object v0
.end method


# virtual methods
.method public F(II)V
    .locals 10

    .prologue
    const v3, 0x7f070235

    const/4 v7, 0x0

    .line 1695
    invoke-virtual {p0}, Lcom/kingroot/kinguser/adm;->sK()V

    .line 1697
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18898

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1698
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const-class v1, Lcom/kingroot/kinguser/activitys/SilentInstallNotifyJumpActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1700
    const/16 v1, 0x14

    .line 1701
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1702
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1703
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v4, 0x7f070234

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {v0, v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 1704
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v5, 0x7f070233

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 1700
    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/adm;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Z)V

    .line 1707
    return-void
.end method

.method public a(IJLjava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 1899
    invoke-static/range {p4 .. p4}, Lcom/kingroot/kinguser/ast;->r(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1900
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070414

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1901
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070415

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1902
    new-instance v8, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1903
    const-string v0, "key_click_content_from_app_update_notification"

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1904
    new-instance v6, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1905
    const-string v0, "key_click_btn_from_app_update_notification"

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1906
    const/16 v1, 0x1b

    .line 1908
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v4, 0x7f070413

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v4, v2

    move v10, v9

    .line 1906
    invoke-virtual/range {v0 .. v10}, Lcom/kingroot/kinguser/adm;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/graphics/Bitmap;Landroid/content/Intent;ZZ)V

    .line 1912
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->aC(J)V

    .line 1913
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1896f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1914
    return-void
.end method

.method public a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/graphics/Bitmap;Landroid/content/Intent;ZZ)V
    .locals 6

    .prologue
    .line 1136
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1140
    const/4 v0, 0x0

    .line 1141
    if-eqz p8, :cond_6

    .line 1142
    if-eqz p9, :cond_1

    .line 1143
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p8, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v0

    .line 1149
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p6, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 1150
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0300eb

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1151
    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, p6, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1152
    const v3, 0x7f0f027b

    invoke-virtual {v0, v3, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1153
    const v3, 0x7f0f027b

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object v1, v0

    .line 1158
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300ea

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1159
    const v0, 0x7f0f0273

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1160
    if-eqz p7, :cond_3

    .line 1161
    invoke-virtual {v0, p7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1165
    :goto_2
    const v0, 0x7f0f0274

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1166
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1167
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1172
    :goto_3
    const v0, 0x7f0f0275

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1173
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1174
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1182
    :goto_4
    const v0, 0x7f0f027a

    .line 1183
    invoke-static {}, Lcom/kingroot/kinguser/abg;->qc()I

    move-result v4

    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {v5}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v5

    .line 1182
    invoke-static {v3, v4, v5}, Lcom/kingroot/kinguser/bhd;->d(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1187
    invoke-direct {p0, v1, p2, p3}, Lcom/kingroot/kinguser/adm;->a(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification;

    move-result-object v0

    .line 1189
    if-eqz p10, :cond_0

    .line 1190
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 1194
    :cond_0
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1195
    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1196
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1198
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/adm;->a(ILandroid/app/Notification;)V

    .line 1202
    :goto_5
    return-void

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    .line 1155
    :cond_2
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0300ec

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v1, v0

    goto/16 :goto_1

    .line 1163
    :cond_3
    const v4, 0x7f020160

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1199
    :catch_0
    move-exception v0

    goto :goto_5

    .line 1169
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1170
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1176
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1177
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_6
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Z)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 987
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/kingroot/kinguser/adm;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/content/Intent;ZZ)V

    .line 988
    return-void
.end method

.method public a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ZZ)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1013
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/kingroot/kinguser/adm;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/content/Intent;ZZ)V

    .line 1014
    return-void
.end method

.method public a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/content/Intent;Z)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1035
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/kingroot/kinguser/adm;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/content/Intent;ZZ)V

    .line 1036
    return-void
.end method

.method public a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/content/Intent;ZZ)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1059
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1062
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/adm;->sC()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1065
    const/4 v0, 0x0

    .line 1066
    if-eqz p7, :cond_0

    .line 1067
    if-eqz p8, :cond_6

    .line 1068
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, p7, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1075
    :cond_0
    :goto_0
    invoke-direct {p0, v1, p2, p3}, Lcom/kingroot/kinguser/adm;->a(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification;

    move-result-object v2

    .line 1076
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_7

    .line 1077
    iput-object v1, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1082
    :cond_1
    :goto_1
    if-eqz p9, :cond_2

    .line 1083
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1086
    :cond_2
    if-eqz p6, :cond_8

    .line 1087
    const v3, 0x7f0f0273

    invoke-virtual {v1, v3, p6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1091
    :goto_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1092
    const v3, 0x7f0f0274

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1097
    :goto_3
    const v3, 0x7f0f0275

    invoke-virtual {v1, v3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1098
    if-eqz p5, :cond_3

    .line 1099
    const v3, 0x7f0f0276

    invoke-virtual {v1, v3, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1100
    const v3, 0x7f0f0276

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1103
    :cond_3
    if-eqz p5, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_5

    .line 1104
    :cond_4
    const v3, 0x7f0f0276

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1105
    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1108
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/kingroot/kinguser/adm;->a(ILandroid/app/Notification;)V

    .line 1112
    :goto_4
    return-void

    .line 1070
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, p7, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 1078
    :cond_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-gt v3, v4, :cond_1

    .line 1079
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1

    .line 1109
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1089
    :cond_8
    const v3, 0x7f0f0273

    const v4, 0x7f020160

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 1094
    :cond_9
    const v3, 0x7f0f0274

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1095
    const v3, 0x7f0f0274

    invoke-virtual {v1, v3, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method public a(Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)V
    .locals 6

    .prologue
    .line 520
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cd()J

    move-result-wide v0

    .line 522
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->DD()Z

    move-result v3

    .line 523
    iget-object v2, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 524
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    .line 526
    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aM(J)V

    .line 529
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/adm;->b(Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)V

    .line 531
    :cond_0
    return-void
.end method

.method public a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 379
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 382
    :try_start_0
    const-string v0, ""

    .line 383
    invoke-direct {p0}, Lcom/kingroot/kinguser/adm;->sC()Landroid/widget/RemoteViews;

    move-result-object v4

    .line 387
    if-eqz p4, :cond_3

    .line 388
    if-nez p1, :cond_0

    .line 428
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703b5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    const/4 v0, 0x2

    .line 393
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 392
    invoke-direct {p0, v0, v5}, Lcom/kingroot/kinguser/adm;->z(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 395
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v5

    const v6, 0x18846

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 403
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v5

    const v6, 0x7f0703be

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 402
    invoke-direct {p0, v4, v5, p2}, Lcom/kingroot/kinguser/adm;->a(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification;

    move-result-object v5

    .line 405
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-le v6, v7, :cond_4

    .line 406
    iput-object v4, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 411
    :cond_1
    :goto_2
    const v6, 0x7f0f0273

    const v7, 0x7f020160

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 412
    const v6, 0x7f0f0274

    invoke-virtual {v4, v6, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 413
    const v6, 0x7f0f0275

    invoke-direct {p0, p3}, Lcom/kingroot/kinguser/adm;->eD(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 414
    const v6, 0x7f0f0276

    invoke-virtual {v4, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 416
    const v1, 0x7f0f0276

    invoke-virtual {v4, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 417
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v1, v6, :cond_2

    .line 418
    const v1, 0x7f0f0276

    const/16 v6, 0x8

    invoke-virtual {v4, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 419
    iput-object v0, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 422
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0, v5}, Lcom/kingroot/kinguser/adm;->a(ILandroid/app/Notification;)V

    .line 423
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p4, :cond_5

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->b(IIIII)V

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    goto :goto_0

    .line 397
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703b7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    const/4 v0, 0x1

    const-string v5, ""

    invoke-direct {p0, v0, v5}, Lcom/kingroot/kinguser/adm;->z(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 399
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v5

    const v6, 0x18845

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 407
    :cond_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xa

    if-gt v6, v7, :cond_1

    .line 408
    iput-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    move v2, v3

    .line 423
    goto :goto_3
.end method

.method public a(Ljava/lang/String;IIZ)V
    .locals 7

    .prologue
    const v6, 0x7f0f0274

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 442
    invoke-virtual {p0, v5}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 444
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->acU:Landroid/app/Notification;

    if-nez v0, :cond_1

    .line 445
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 447
    invoke-direct {p0}, Lcom/kingroot/kinguser/adm;->sv()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 448
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703be

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 450
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 451
    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 454
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/adm;->acU:Landroid/app/Notification;

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->acV:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    .line 458
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300f1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/adm;->acV:Landroid/widget/RemoteViews;

    .line 460
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->acV:Landroid/widget/RemoteViews;

    const v1, 0x7f0f0273

    const v2, 0x7f020160

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 461
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->acV:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v6, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 462
    invoke-direct {p0}, Lcom/kingroot/kinguser/adm;->sF()Ljava/lang/Integer;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->acV:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 464
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->acU:Landroid/app/Notification;

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->acV:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->acV:Landroid/widget/RemoteViews;

    const v1, 0x7f0f027f

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 468
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->acU:Landroid/app/Notification;

    invoke-direct {p0, v5, v0}, Lcom/kingroot/kinguser/adm;->a(ILandroid/app/Notification;)V

    .line 469
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 6

    .prologue
    const/16 v0, 0x17

    .line 306
    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/adm;->cancelNotification(Ljava/lang/String;I)V

    .line 309
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/adm;->sD()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 313
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const-class v3, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    const-string v2, "key_is_from_game_summon_notification"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    const-string v2, "key_id_to_cancel_notification"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    if-nez p4, :cond_0

    .line 319
    const-string v2, "key_game_summon_install_pkg_from_notification"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 324
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 325
    const v3, 0x7f070478

    .line 326
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 325
    invoke-direct {p0, v1, v3, v4}, Lcom/kingroot/kinguser/adm;->a(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification;

    move-result-object v3

    .line 329
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-le v4, v5, :cond_3

    .line 330
    iput-object v1, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 335
    :cond_1
    :goto_0
    const v4, 0x7f0f0273

    invoke-virtual {v1, v4, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 336
    const v4, 0x7f0f0274

    const v5, 0x7f070479

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 337
    const v4, 0x7f0f027d

    invoke-virtual {v1, v4, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 338
    const v4, 0x7f0f027e

    const v5, 0x7f070478

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 339
    const v4, 0x7f0f0275

    if-eqz p4, :cond_4

    const v5, 0x7f070476

    .line 341
    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_1
    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 345
    const v0, 0x7f0f0279

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    .line 347
    iput-object v2, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 351
    :cond_2
    const/16 v0, 0x17

    invoke-direct {p0, p1, v0, v3}, Lcom/kingroot/kinguser/adm;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 352
    if-eqz p4, :cond_5

    .line 353
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18937

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 361
    :goto_2
    return-void

    .line 331
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-gt v4, v5, :cond_1

    .line 332
    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    goto :goto_2

    .line 341
    :cond_4
    const v5, 0x7f070477

    .line 343
    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 355
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18939

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public a(Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/16 v9, 0x16

    const/16 v8, 0xe

    const/16 v7, 0xd

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1718
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1764
    :goto_0
    return-void

    .line 1722
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 1724
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1726
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07042d

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1738
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v3

    .line 1739
    :goto_2
    add-int/lit8 v0, v5, -0x1

    if-ge v1, v0, :cond_1

    .line 1740
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    const-string v0, "\u3001"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1729
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07042b

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1732
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07042c

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1743
    :cond_1
    add-int/lit8 v0, v5, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v8, :cond_2

    .line 1747
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x3001

    if-ne v0, v1, :cond_3

    .line 1748
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v4, v7, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1752
    :goto_3
    const-string v0, "..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const-class v5, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1757
    const-string v1, "key_notify_type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1758
    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v1, v3, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1760
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18903

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1761
    invoke-virtual {p0, v9}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1762
    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/adm;->a(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 1763
    invoke-direct {p0, v9, v0}, Lcom/kingroot/kinguser/adm;->a(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1750
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v4, v8, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(ILjava/lang/CharSequence;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1300
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1302
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 1303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1304
    invoke-direct {p0}, Lcom/kingroot/kinguser/adm;->sv()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1305
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1306
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 1307
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1309
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1311
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/adm;->a(ILandroid/app/Notification;)V

    .line 1313
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1314
    return-void
.end method

.method public b(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Z)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/high16 v3, 0x8000000

    const/4 v2, 0x0

    const v5, 0x7f0f0276

    .line 1246
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1248
    invoke-direct {p0}, Lcom/kingroot/kinguser/adm;->sE()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1251
    const/4 v0, 0x0

    .line 1252
    if-eqz p6, :cond_0

    .line 1253
    if-eqz p7, :cond_3

    .line 1254
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p6, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1261
    :cond_0
    :goto_0
    invoke-direct {p0, v1, p2, p3}, Lcom/kingroot/kinguser/adm;->a(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification;

    move-result-object v2

    .line 1262
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_4

    .line 1263
    iput-object v1, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1268
    :cond_1
    :goto_1
    const v3, 0x7f0f0273

    const v4, 0x7f020160

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1269
    const v3, 0x7f0f0274

    invoke-virtual {v1, v3, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1270
    const v3, 0x7f0f0275

    invoke-virtual {v1, v3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1271
    invoke-virtual {v1, v5, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1273
    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1274
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_2

    .line 1275
    const/16 v3, 0x8

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1276
    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1280
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const-class v3, Lcom/kingroot/kinguser/receiver/AntiInjectLogDeleteReceiver;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1281
    const-string v1, "com.kingroot.kinguser.ANTILOG_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v1, p1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1283
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bM(Z)V

    .line 1286
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/kingroot/kinguser/aks;->aN(J)V

    .line 1287
    invoke-direct {p0, p1, v2}, Lcom/kingroot/kinguser/adm;->a(ILandroid/app/Notification;)V

    .line 1288
    return-void

    .line 1256
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p6, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 1264
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-gt v3, v4, :cond_1

    .line 1265
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1
.end method

.method public cancelNotification(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 935
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :goto_0
    return-void

    .line 936
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cw(I)V
    .locals 4

    .prologue
    .line 477
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->acV:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/kingroot/kinguser/adm;->acV:Landroid/widget/RemoteViews;

    const v1, 0x7f0f027f

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 481
    :cond_0
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->acU:Landroid/app/Notification;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/adm;->a(ILandroid/app/Notification;)V

    .line 482
    return-void
.end method

.method public cx(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const v7, 0x7f070210

    const/4 v6, 0x7

    .line 494
    invoke-virtual {p0, v6}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 496
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const-class v3, Lcom/kingroot/kinguser/activitys/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    iget-object v2, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 502
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v1

    .line 501
    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/adm;->a(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 507
    invoke-direct {p0, v6, v0}, Lcom/kingroot/kinguser/adm;->a(ILandroid/app/Notification;)V

    .line 509
    return-void
.end method

.method public cy(I)V
    .locals 1

    .prologue
    .line 926
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/kingroot/kinguser/adm;->cancelNotification(Ljava/lang/String;I)V

    .line 927
    return-void
.end method

.method public eA(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 366
    const/16 v0, 0x17

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/adm;->cancelNotification(Ljava/lang/String;I)V

    .line 367
    return-void
.end method

.method public sA()V
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 918
    return-void
.end method

.method public sB()V
    .locals 2

    .prologue
    .line 1222
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bM(Z)V

    .line 1223
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1224
    return-void
.end method

.method public sI()V
    .locals 2

    .prologue
    .line 1578
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1579
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ef()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1580
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->El()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->En()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1581
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->adb:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 1585
    :cond_1
    return-void
.end method

.method public sJ()V
    .locals 6

    .prologue
    .line 1647
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/adm$4;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/adm$4;-><init>(Lcom/kingroot/kinguser/adm;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 1692
    return-void
.end method

.method public sK()V
    .locals 1

    .prologue
    .line 1710
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1711
    return-void
.end method

.method public sL()V
    .locals 1

    .prologue
    .line 1770
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1771
    return-void
.end method

.method public sM()V
    .locals 19

    .prologue
    .line 1778
    sget v2, Lcom/kingroot/kinguser/bgv;->bgg:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget v2, Lcom/kingroot/kinguser/bgv;->bgg:I

    sget v3, Lcom/kingroot/kinguser/bgv;->bpg:I

    if-ne v2, v3, :cond_1

    .line 1806
    :cond_0
    :goto_0
    return-void

    .line 1781
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v17

    .line 1782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1783
    invoke-virtual/range {v17 .. v17}, Lcom/kingroot/kinguser/akl;->Bs()J

    move-result-wide v2

    .line 1784
    invoke-virtual/range {v17 .. v17}, Lcom/kingroot/kinguser/akl;->Bt()I

    move-result v18

    .line 1785
    const/4 v6, 0x2

    move/from16 v0, v18

    if-ge v0, v6, :cond_0

    const-wide/32 v6, 0xa4cb800

    .line 1786
    invoke-static/range {v2 .. v7}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1789
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0200af

    sget v6, Lcom/kingroot/kinguser/bgv;->bgg:I

    add-int/2addr v3, v6

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1790
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07048f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/kingroot/kinguser/bgv;->bpf:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1791
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07048e

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1792
    new-instance v14, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/kingroot/kinguser/activitys/AppDownloadActivity;

    invoke-direct {v14, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1793
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070490

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v10, Lcom/kingroot/kinguser/bgv;->bpf:Ljava/lang/String;

    aput-object v10, v6, v7

    invoke-virtual {v2, v3, v6}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1794
    const-string v3, "app_download_page_title"

    invoke-virtual {v14, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1795
    const-string v2, "app_download_page_category_id"

    const v3, 0x4c7262

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1796
    const-string v2, "app_download_page_is_show_logo"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1798
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const v3, 0x18960

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1799
    const/16 v7, 0x19

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v6, p0

    move-object v10, v8

    invoke-virtual/range {v6 .. v16}, Lcom/kingroot/kinguser/adm;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/graphics/Bitmap;Landroid/content/Intent;ZZ)V

    .line 1804
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/akl;->eb(I)V

    .line 1805
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/kingroot/kinguser/akl;->av(J)V

    goto/16 :goto_0
.end method

.method public sN()V
    .locals 13

    .prologue
    .line 1812
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v7

    .line 1813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1814
    invoke-virtual {v7}, Lcom/kingroot/kinguser/akl;->Bv()J

    move-result-wide v0

    .line 1815
    invoke-virtual {v7}, Lcom/kingroot/kinguser/akl;->Bw()I

    move-result v10

    .line 1816
    const-wide/32 v4, 0x19bfcc00

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-lt v10, v0, :cond_1

    .line 1895
    :cond_0
    :goto_0
    return-void

    .line 1821
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v4, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v11, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v12, 0x0

    new-instance v5, Lcom/kingroot/kinguser/adm$5;

    move-object v6, p0

    move-wide v8, v2

    invoke-direct/range {v5 .. v10}, Lcom/kingroot/kinguser/adm$5;-><init>(Lcom/kingroot/kinguser/adm;Lcom/kingroot/kinguser/akl;JI)V

    invoke-direct {v1, v4, v11, v12, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public sO()V
    .locals 1

    .prologue
    .line 1917
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1918
    return-void
.end method

.method public su()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 432
    return-void
.end method

.method public sw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 485
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 486
    iput-object v1, p0, Lcom/kingroot/kinguser/adm;->acV:Landroid/widget/RemoteViews;

    .line 487
    iput-object v1, p0, Lcom/kingroot/kinguser/adm;->acU:Landroid/app/Notification;

    .line 488
    return-void
.end method

.method public sx()V
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 516
    return-void
.end method

.method public sy()V
    .locals 6

    .prologue
    .line 536
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cd()J

    move-result-wide v0

    .line 537
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->DD()Z

    move-result v3

    .line 538
    iget-object v2, p0, Lcom/kingroot/kinguser/adm;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 539
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    .line 541
    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->acY:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 544
    :cond_0
    return-void
.end method

.method public sz()V
    .locals 2

    .prologue
    .line 669
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/adm;->acX:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 670
    return-void
.end method
