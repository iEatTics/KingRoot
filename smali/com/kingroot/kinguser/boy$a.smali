.class public final enum Lcom/kingroot/kinguser/boy$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/boy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum bFZ:Lcom/kingroot/kinguser/boy$a;

.field public static final enum bGa:Lcom/kingroot/kinguser/boy$a;

.field public static final enum bGb:Lcom/kingroot/kinguser/boy$a;

.field public static final enum bGc:Lcom/kingroot/kinguser/boy$a;

.field public static final enum bGd:Lcom/kingroot/kinguser/boy$a;

.field public static final enum bGe:Lcom/kingroot/kinguser/boy$a;

.field public static final enum bGf:Lcom/kingroot/kinguser/boy$a;

.field public static final enum bGg:Lcom/kingroot/kinguser/boy$a;

.field private static final synthetic bGh:[Lcom/kingroot/kinguser/boy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/kingroot/kinguser/boy$a;

    const-string v1, "Inform_Pending"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/boy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boy$a;->bFZ:Lcom/kingroot/kinguser/boy$a;

    new-instance v0, Lcom/kingroot/kinguser/boy$a;

    const-string v1, "Inform_Started"

    invoke-direct {v0, v1, v4}, Lcom/kingroot/kinguser/boy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boy$a;->bGa:Lcom/kingroot/kinguser/boy$a;

    new-instance v0, Lcom/kingroot/kinguser/boy$a;

    const-string v1, "Inform_Detected"

    invoke-direct {v0, v1, v5}, Lcom/kingroot/kinguser/boy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boy$a;->bGb:Lcom/kingroot/kinguser/boy$a;

    new-instance v0, Lcom/kingroot/kinguser/boy$a;

    const-string v1, "Inform_Received"

    invoke-direct {v0, v1, v6}, Lcom/kingroot/kinguser/boy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boy$a;->bGc:Lcom/kingroot/kinguser/boy$a;

    new-instance v0, Lcom/kingroot/kinguser/boy$a;

    const-string v1, "Inform_Paused"

    invoke-direct {v0, v1, v7}, Lcom/kingroot/kinguser/boy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boy$a;->bGd:Lcom/kingroot/kinguser/boy$a;

    new-instance v0, Lcom/kingroot/kinguser/boy$a;

    const-string v1, "Inform_Failed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/boy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boy$a;->bGe:Lcom/kingroot/kinguser/boy$a;

    new-instance v0, Lcom/kingroot/kinguser/boy$a;

    const-string v1, "Inform_Succeed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/boy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boy$a;->bGf:Lcom/kingroot/kinguser/boy$a;

    new-instance v0, Lcom/kingroot/kinguser/boy$a;

    const-string v1, "Inform_Deleted"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/boy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/boy$a;->bGg:Lcom/kingroot/kinguser/boy$a;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/kingroot/kinguser/boy$a;

    sget-object v1, Lcom/kingroot/kinguser/boy$a;->bFZ:Lcom/kingroot/kinguser/boy$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/boy$a;->bGa:Lcom/kingroot/kinguser/boy$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingroot/kinguser/boy$a;->bGb:Lcom/kingroot/kinguser/boy$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingroot/kinguser/boy$a;->bGc:Lcom/kingroot/kinguser/boy$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingroot/kinguser/boy$a;->bGd:Lcom/kingroot/kinguser/boy$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kingroot/kinguser/boy$a;->bGe:Lcom/kingroot/kinguser/boy$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kingroot/kinguser/boy$a;->bGf:Lcom/kingroot/kinguser/boy$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kingroot/kinguser/boy$a;->bGg:Lcom/kingroot/kinguser/boy$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/boy$a;->bGh:[Lcom/kingroot/kinguser/boy$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static agP()[Lcom/kingroot/kinguser/boy$a;
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/boy$a;->bGh:[Lcom/kingroot/kinguser/boy$a;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/boy$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/boy$a;

    return-object v0
.end method
