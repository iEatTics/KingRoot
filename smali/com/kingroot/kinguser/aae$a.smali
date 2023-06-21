.class public final enum Lcom/kingroot/kinguser/aae$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/kinguser/aae$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Xr:Lcom/kingroot/kinguser/aae$a;

.field public static final enum Xs:Lcom/kingroot/kinguser/aae$a;

.field private static final synthetic Xt:[Lcom/kingroot/kinguser/aae$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/kingroot/kinguser/aae$a;

    const-string v1, "XXTEA2"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/aae$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    new-instance v0, Lcom/kingroot/kinguser/aae$a;

    const-string v1, "BASE64"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/aae$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/aae$a;->Xs:Lcom/kingroot/kinguser/aae$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kingroot/kinguser/aae$a;

    sget-object v1, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/kinguser/aae$a;->Xs:Lcom/kingroot/kinguser/aae$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingroot/kinguser/aae$a;->Xt:[Lcom/kingroot/kinguser/aae$a;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/aae$a;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/kingroot/kinguser/aae$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aae$a;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/aae$a;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/kingroot/kinguser/aae$a;->Xt:[Lcom/kingroot/kinguser/aae$a;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/aae$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/aae$a;

    return-object v0
.end method
