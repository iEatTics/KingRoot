.class public final enum Lcom/kingroot/kinguser/boq;
.super Ljava/lang/Enum;


# static fields
.field public static final enum bFA:Lcom/kingroot/kinguser/boq;

.field public static final enum bFB:Lcom/kingroot/kinguser/boq;

.field public static final enum bFC:Lcom/kingroot/kinguser/boq;

.field public static final enum bFD:Lcom/kingroot/kinguser/boq;

.field public static final enum bFE:Lcom/kingroot/kinguser/boq;

.field public static final enum bFF:Lcom/kingroot/kinguser/boq;

.field public static final enum bFG:Lcom/kingroot/kinguser/boq;

.field private static final synthetic bFH:[Lcom/kingroot/kinguser/boq;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/kingroot/kinguser/boq;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/boq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boq;->bFA:Lcom/kingroot/kinguser/boq;

    new-instance v0, Lcom/kingroot/kinguser/boq;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/kingroot/kinguser/boq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boq;->bFB:Lcom/kingroot/kinguser/boq;

    new-instance v0, Lcom/kingroot/kinguser/boq;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5}, Lcom/kingroot/kinguser/boq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boq;->bFC:Lcom/kingroot/kinguser/boq;

    new-instance v0, Lcom/kingroot/kinguser/boq;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/kingroot/kinguser/boq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boq;->bFD:Lcom/kingroot/kinguser/boq;

    new-instance v0, Lcom/kingroot/kinguser/boq;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/kingroot/kinguser/boq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    new-instance v0, Lcom/kingroot/kinguser/boq;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/boq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boq;->bFF:Lcom/kingroot/kinguser/boq;

    new-instance v0, Lcom/kingroot/kinguser/boq;

    const-string v1, "DELETED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/boq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boq;->bFG:Lcom/kingroot/kinguser/boq;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kingroot/kinguser/boq;

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFA:Lcom/kingroot/kinguser/boq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFB:Lcom/kingroot/kinguser/boq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFC:Lcom/kingroot/kinguser/boq;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFD:Lcom/kingroot/kinguser/boq;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFF:Lcom/kingroot/kinguser/boq;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFG:Lcom/kingroot/kinguser/boq;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/boq;->bFH:[Lcom/kingroot/kinguser/boq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/boq;
    .locals 1

    const-class v0, Lcom/kingroot/kinguser/boq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boq;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/boq;
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/boq;->bFH:[Lcom/kingroot/kinguser/boq;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/boq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/boq;

    return-object v0
.end method
