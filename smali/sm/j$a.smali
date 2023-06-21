.class public final enum Lsm/j$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsm/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsm/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bXu:Lsm/j$a;

.field public static final enum bXv:Lsm/j$a;

.field public static final enum bXw:Lsm/j$a;

.field public static final enum bXx:Lsm/j$a;

.field private static final synthetic bXy:[Lsm/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lsm/j$a;

    const-string v1, "CONN_WIFI"

    invoke-direct {v0, v1, v2}, Lsm/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsm/j$a;->bXv:Lsm/j$a;

    new-instance v0, Lsm/j$a;

    const-string v1, "CONN_CMWAP"

    invoke-direct {v0, v1, v3}, Lsm/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsm/j$a;->bXw:Lsm/j$a;

    new-instance v0, Lsm/j$a;

    const-string v1, "CONN_CMNET"

    invoke-direct {v0, v1, v4}, Lsm/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsm/j$a;->bXu:Lsm/j$a;

    new-instance v0, Lsm/j$a;

    const-string v1, "CONN_NONE"

    invoke-direct {v0, v1, v5}, Lsm/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsm/j$a;->bXx:Lsm/j$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lsm/j$a;

    sget-object v1, Lsm/j$a;->bXv:Lsm/j$a;

    aput-object v1, v0, v2

    sget-object v1, Lsm/j$a;->bXw:Lsm/j$a;

    aput-object v1, v0, v3

    sget-object v1, Lsm/j$a;->bXu:Lsm/j$a;

    aput-object v1, v0, v4

    sget-object v1, Lsm/j$a;->bXx:Lsm/j$a;

    aput-object v1, v0, v5

    sput-object v0, Lsm/j$a;->bXy:[Lsm/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
