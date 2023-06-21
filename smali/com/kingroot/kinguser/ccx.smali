.class public final Lcom/kingroot/kinguser/ccx;
.super Ljava/lang/Object;


# static fields
.field public static bXn:[Lcom/kingroot/kinguser/cdi;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kingroot/kinguser/cdi;

    new-instance v1, Lcom/kingroot/kinguser/cdi;

    const-string v2, "cloudcheck"

    const-string v3, "tinyCloudCheck"

    invoke-direct {v1, v4, v2, v3}, Lcom/kingroot/kinguser/cdi;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/kingroot/kinguser/cdi;

    const-string v2, "cloudcheck"

    const-string v3, "cloudCheck"

    invoke-direct {v1, v5, v2, v3}, Lcom/kingroot/kinguser/cdi;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/kingroot/kinguser/cdi;

    const-string v2, "viruscheck"

    const-string v3, "VirusCheckSecureServer"

    invoke-direct {v1, v6, v2, v3}, Lcom/kingroot/kinguser/cdi;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/kingroot/kinguser/ccx;->bXn:[Lcom/kingroot/kinguser/cdi;

    return-void
.end method

.method public static kW(I)Lcom/kingroot/kinguser/cdi;
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/ccx;->bXn:[Lcom/kingroot/kinguser/cdi;

    aget-object v0, v0, p0

    return-object v0
.end method
