.class public final Lcom/kingroot/kinguser/cdh;
.super Ljava/lang/Object;


# static fields
.field private static bXn:[Lcom/kingroot/kinguser/cdi;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kingroot/kinguser/cdi;

    new-instance v1, Lcom/kingroot/kinguser/cdi;

    const-string v2, "info"

    const-string v3, "getGuid"

    invoke-direct {v1, v4, v2, v3}, Lcom/kingroot/kinguser/cdi;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/kingroot/kinguser/cdi;

    const-string v2, "cmdactivity"

    const-string v3, "getActivityTips"

    invoke-direct {v1, v5, v2, v3}, Lcom/kingroot/kinguser/cdi;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/kingroot/kinguser/cdi;

    const-string v2, "info"

    const-string v3, "reportTipsRes"

    invoke-direct {v1, v6, v2, v3}, Lcom/kingroot/kinguser/cdi;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/kingroot/kinguser/cdi;

    const-string v2, "report"

    const-string v3, "reportSoftUsageInfo"

    invoke-direct {v1, v7, v2, v3}, Lcom/kingroot/kinguser/cdi;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/kingroot/kinguser/cdi;

    const-string v2, "tipsmain"

    const-string v3, "getMainTips"

    invoke-direct {v1, v8, v2, v3}, Lcom/kingroot/kinguser/cdi;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Lcom/kingroot/kinguser/cdi;

    const/4 v3, 0x5

    const-string v4, "info"

    const-string v5, "getUpdatesV2"

    invoke-direct {v2, v3, v4, v5}, Lcom/kingroot/kinguser/cdi;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/cdh;->bXn:[Lcom/kingroot/kinguser/cdi;

    return-void
.end method

.method public static kW(I)Lcom/kingroot/kinguser/cdi;
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/cdh;->bXn:[Lcom/kingroot/kinguser/cdi;

    aget-object v0, v0, p0

    return-object v0
.end method
