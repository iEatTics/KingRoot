.class public final enum Lcom/kingroot/kinguser/bon;
.super Ljava/lang/Enum;


# static fields
.field public static final enum bFq:Lcom/kingroot/kinguser/bon;

.field public static final enum bFr:Lcom/kingroot/kinguser/bon;

.field public static final enum bFs:Lcom/kingroot/kinguser/bon;

.field public static final enum bFt:Lcom/kingroot/kinguser/bon;

.field private static final synthetic bFu:[Lcom/kingroot/kinguser/bon;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kingroot/kinguser/bon;

    const-string v1, "Cate_DefaultMass"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bon;->bFq:Lcom/kingroot/kinguser/bon;

    new-instance v0, Lcom/kingroot/kinguser/bon;

    const-string v1, "Cate_DefaultEase"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/bon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bon;->bFr:Lcom/kingroot/kinguser/bon;

    new-instance v0, Lcom/kingroot/kinguser/bon;

    const-string v1, "Cate_CustomMass1"

    invoke-direct {v0, v1, v4}, Lcom/kingroot/kinguser/bon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bon;->bFs:Lcom/kingroot/kinguser/bon;

    new-instance v0, Lcom/kingroot/kinguser/bon;

    const-string v1, "Cate_CustomMass2"

    invoke-direct {v0, v1, v5}, Lcom/kingroot/kinguser/bon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bon;->bFt:Lcom/kingroot/kinguser/bon;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kingroot/kinguser/bon;

    sget-object v1, Lcom/kingroot/kinguser/bon;->bFq:Lcom/kingroot/kinguser/bon;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/kinguser/bon;->bFr:Lcom/kingroot/kinguser/bon;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/bon;->bFs:Lcom/kingroot/kinguser/bon;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingroot/kinguser/bon;->bFt:Lcom/kingroot/kinguser/bon;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kingroot/kinguser/bon;->bFu:[Lcom/kingroot/kinguser/bon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/bon;
    .locals 1

    const-class v0, Lcom/kingroot/kinguser/bon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bon;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/bon;
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/bon;->bFu:[Lcom/kingroot/kinguser/bon;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/bon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/bon;

    return-object v0
.end method
