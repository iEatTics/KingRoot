.class final enum Lcom/kingroot/kinguser/ani$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ani;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/kinguser/ani$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aAI:Lcom/kingroot/kinguser/ani$a;

.field public static final enum aAJ:Lcom/kingroot/kinguser/ani$a;

.field public static final enum aAK:Lcom/kingroot/kinguser/ani$a;

.field private static final synthetic aAL:[Lcom/kingroot/kinguser/ani$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/kingroot/kinguser/ani$a;

    const-string v1, "TYPE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ani$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/ani$a;->aAI:Lcom/kingroot/kinguser/ani$a;

    .line 28
    new-instance v0, Lcom/kingroot/kinguser/ani$a;

    const-string v1, "TYPE_INCREASE"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/ani$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/ani$a;->aAJ:Lcom/kingroot/kinguser/ani$a;

    .line 29
    new-instance v0, Lcom/kingroot/kinguser/ani$a;

    const-string v1, "TYPE_DECREASE"

    invoke-direct {v0, v1, v4}, Lcom/kingroot/kinguser/ani$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/ani$a;->aAK:Lcom/kingroot/kinguser/ani$a;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kingroot/kinguser/ani$a;

    sget-object v1, Lcom/kingroot/kinguser/ani$a;->aAI:Lcom/kingroot/kinguser/ani$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/kinguser/ani$a;->aAJ:Lcom/kingroot/kinguser/ani$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/ani$a;->aAK:Lcom/kingroot/kinguser/ani$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingroot/kinguser/ani$a;->aAL:[Lcom/kingroot/kinguser/ani$a;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/ani$a;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/kingroot/kinguser/ani$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ani$a;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/ani$a;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kingroot/kinguser/ani$a;->aAL:[Lcom/kingroot/kinguser/ani$a;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/ani$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/ani$a;

    return-object v0
.end method
