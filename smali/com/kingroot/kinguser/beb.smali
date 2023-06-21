.class public final enum Lcom/kingroot/kinguser/beb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/kinguser/beb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bkl:Lcom/kingroot/kinguser/beb;

.field public static final enum bkm:Lcom/kingroot/kinguser/beb;

.field public static final enum bkn:Lcom/kingroot/kinguser/beb;

.field public static final enum bko:Lcom/kingroot/kinguser/beb;

.field private static final synthetic bkp:[Lcom/kingroot/kinguser/beb;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/kingroot/kinguser/beb;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/beb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/beb;->bkl:Lcom/kingroot/kinguser/beb;

    .line 13
    new-instance v0, Lcom/kingroot/kinguser/beb;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/beb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/beb;->bkm:Lcom/kingroot/kinguser/beb;

    .line 17
    new-instance v0, Lcom/kingroot/kinguser/beb;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/kingroot/kinguser/beb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/beb;->bkn:Lcom/kingroot/kinguser/beb;

    .line 21
    new-instance v0, Lcom/kingroot/kinguser/beb;

    const-string v1, "END"

    invoke-direct {v0, v1, v5}, Lcom/kingroot/kinguser/beb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/beb;->bko:Lcom/kingroot/kinguser/beb;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kingroot/kinguser/beb;

    sget-object v1, Lcom/kingroot/kinguser/beb;->bkl:Lcom/kingroot/kinguser/beb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/kinguser/beb;->bkm:Lcom/kingroot/kinguser/beb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/beb;->bkn:Lcom/kingroot/kinguser/beb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingroot/kinguser/beb;->bko:Lcom/kingroot/kinguser/beb;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kingroot/kinguser/beb;->bkp:[Lcom/kingroot/kinguser/beb;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/beb;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/kingroot/kinguser/beb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/beb;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/beb;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/kingroot/kinguser/beb;->bkp:[Lcom/kingroot/kinguser/beb;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/beb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/beb;

    return-object v0
.end method
