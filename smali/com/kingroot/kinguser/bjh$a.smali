.class final enum Lcom/kingroot/kinguser/bjh$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/kinguser/bjh$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bwJ:Lcom/kingroot/kinguser/bjh$a;

.field public static final enum bwK:Lcom/kingroot/kinguser/bjh$a;

.field public static final enum bwL:Lcom/kingroot/kinguser/bjh$a;

.field public static final enum bwM:Lcom/kingroot/kinguser/bjh$a;

.field public static final enum bwN:Lcom/kingroot/kinguser/bjh$a;

.field public static final enum bwO:Lcom/kingroot/kinguser/bjh$a;

.field private static final synthetic bwP:[Lcom/kingroot/kinguser/bjh$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/kingroot/kinguser/bjh$a;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/bjh$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bjh$a;->bwJ:Lcom/kingroot/kinguser/bjh$a;

    new-instance v0, Lcom/kingroot/kinguser/bjh$a;

    const-string v1, "InManifest"

    invoke-direct {v0, v1, v4}, Lcom/kingroot/kinguser/bjh$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bjh$a;->bwK:Lcom/kingroot/kinguser/bjh$a;

    .line 66
    new-instance v0, Lcom/kingroot/kinguser/bjh$a;

    const-string v1, "InApplication"

    invoke-direct {v0, v1, v5}, Lcom/kingroot/kinguser/bjh$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bjh$a;->bwL:Lcom/kingroot/kinguser/bjh$a;

    new-instance v0, Lcom/kingroot/kinguser/bjh$a;

    const-string v1, "InReceiver"

    invoke-direct {v0, v1, v6}, Lcom/kingroot/kinguser/bjh$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bjh$a;->bwM:Lcom/kingroot/kinguser/bjh$a;

    new-instance v0, Lcom/kingroot/kinguser/bjh$a;

    const-string v1, "InIntentFilter"

    invoke-direct {v0, v1, v7}, Lcom/kingroot/kinguser/bjh$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bjh$a;->bwN:Lcom/kingroot/kinguser/bjh$a;

    new-instance v0, Lcom/kingroot/kinguser/bjh$a;

    const-string v1, "InAction"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bjh$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bjh$a;->bwO:Lcom/kingroot/kinguser/bjh$a;

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kingroot/kinguser/bjh$a;

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwJ:Lcom/kingroot/kinguser/bjh$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwK:Lcom/kingroot/kinguser/bjh$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwL:Lcom/kingroot/kinguser/bjh$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwM:Lcom/kingroot/kinguser/bjh$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwN:Lcom/kingroot/kinguser/bjh$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kingroot/kinguser/bjh$a;->bwO:Lcom/kingroot/kinguser/bjh$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/bjh$a;->bwP:[Lcom/kingroot/kinguser/bjh$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/bjh$a;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/kingroot/kinguser/bjh$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjh$a;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/bjh$a;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwP:[Lcom/kingroot/kinguser/bjh$a;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/bjh$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/bjh$a;

    return-object v0
.end method
