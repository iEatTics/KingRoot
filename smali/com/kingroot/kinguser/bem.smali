.class public final enum Lcom/kingroot/kinguser/bem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/kinguser/bem;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum blk:Lcom/kingroot/kinguser/bem;

.field public static final enum bll:Lcom/kingroot/kinguser/bem;

.field public static final enum blm:Lcom/kingroot/kinguser/bem;

.field public static final enum bln:Lcom/kingroot/kinguser/bem;

.field private static final synthetic blo:[Lcom/kingroot/kinguser/bem;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/kingroot/kinguser/bem;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    .line 10
    new-instance v0, Lcom/kingroot/kinguser/bem;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/bem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    .line 11
    new-instance v0, Lcom/kingroot/kinguser/bem;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/kingroot/kinguser/bem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    .line 12
    new-instance v0, Lcom/kingroot/kinguser/bem;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/kingroot/kinguser/bem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kingroot/kinguser/bem;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kingroot/kinguser/bem;->blo:[Lcom/kingroot/kinguser/bem;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/bem;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/kingroot/kinguser/bem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bem;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/bem;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/kingroot/kinguser/bem;->blo:[Lcom/kingroot/kinguser/bem;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/bem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/bem;

    return-object v0
.end method
