.class public final enum Lcom/kingroot/kinguser/caj$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/caj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/kinguser/caj$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bWp:Lcom/kingroot/kinguser/caj$b;

.field public static final enum bWq:Lcom/kingroot/kinguser/caj$b;

.field public static final enum bWr:Lcom/kingroot/kinguser/caj$b;

.field private static final synthetic bWs:[Lcom/kingroot/kinguser/caj$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/kingroot/kinguser/caj$b;

    const-string v1, "XXTEA2"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/caj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/caj$b;->bWp:Lcom/kingroot/kinguser/caj$b;

    new-instance v0, Lcom/kingroot/kinguser/caj$b;

    const-string v1, "XXTEA_OLD"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/caj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/caj$b;->bWq:Lcom/kingroot/kinguser/caj$b;

    new-instance v0, Lcom/kingroot/kinguser/caj$b;

    const-string v1, "SIMPLE"

    invoke-direct {v0, v1, v4}, Lcom/kingroot/kinguser/caj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/caj$b;->bWr:Lcom/kingroot/kinguser/caj$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kingroot/kinguser/caj$b;

    sget-object v1, Lcom/kingroot/kinguser/caj$b;->bWp:Lcom/kingroot/kinguser/caj$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/kinguser/caj$b;->bWq:Lcom/kingroot/kinguser/caj$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/caj$b;->bWr:Lcom/kingroot/kinguser/caj$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingroot/kinguser/caj$b;->bWs:[Lcom/kingroot/kinguser/caj$b;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/caj$b;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/kingroot/kinguser/caj$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/caj$b;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/caj$b;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/kingroot/kinguser/caj$b;->bWs:[Lcom/kingroot/kinguser/caj$b;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/caj$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/caj$b;

    return-object v0
.end method
