.class public final enum Lcom/kingroot/kinguser/apz$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/apz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/kinguser/apz$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aKv:Lcom/kingroot/kinguser/apz$b;

.field public static final enum aKw:Lcom/kingroot/kinguser/apz$b;

.field private static final synthetic aKx:[Lcom/kingroot/kinguser/apz$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/kingroot/kinguser/apz$b;

    const-string v1, "MAIN_PAGE"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/apz$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/apz$b;->aKv:Lcom/kingroot/kinguser/apz$b;

    .line 56
    new-instance v0, Lcom/kingroot/kinguser/apz$b;

    const-string v1, "RESULT_PAGE"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/apz$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/apz$b;->aKw:Lcom/kingroot/kinguser/apz$b;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kingroot/kinguser/apz$b;

    sget-object v1, Lcom/kingroot/kinguser/apz$b;->aKv:Lcom/kingroot/kinguser/apz$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/kinguser/apz$b;->aKw:Lcom/kingroot/kinguser/apz$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingroot/kinguser/apz$b;->aKx:[Lcom/kingroot/kinguser/apz$b;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/apz$b;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/kingroot/kinguser/apz$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apz$b;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/apz$b;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/kingroot/kinguser/apz$b;->aKx:[Lcom/kingroot/kinguser/apz$b;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/apz$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/apz$b;

    return-object v0
.end method
