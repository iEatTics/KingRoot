.class public final enum Lcom/kingroot/kinguser/aae$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/kinguser/aae$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Xu:Lcom/kingroot/kinguser/aae$b;

.field public static final enum Xv:Lcom/kingroot/kinguser/aae$b;

.field public static final enum Xw:Lcom/kingroot/kinguser/aae$b;

.field private static final synthetic Xx:[Lcom/kingroot/kinguser/aae$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/kingroot/kinguser/aae$b;

    const-string v1, "XXTEA2"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/aae$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/aae$b;->Xu:Lcom/kingroot/kinguser/aae$b;

    new-instance v0, Lcom/kingroot/kinguser/aae$b;

    const-string v1, "XXTEA_OLD"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/aae$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/aae$b;->Xv:Lcom/kingroot/kinguser/aae$b;

    new-instance v0, Lcom/kingroot/kinguser/aae$b;

    const-string v1, "SIMPLE"

    invoke-direct {v0, v1, v4}, Lcom/kingroot/kinguser/aae$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/aae$b;->Xw:Lcom/kingroot/kinguser/aae$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kingroot/kinguser/aae$b;

    sget-object v1, Lcom/kingroot/kinguser/aae$b;->Xu:Lcom/kingroot/kinguser/aae$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/kinguser/aae$b;->Xv:Lcom/kingroot/kinguser/aae$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/aae$b;->Xw:Lcom/kingroot/kinguser/aae$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingroot/kinguser/aae$b;->Xx:[Lcom/kingroot/kinguser/aae$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/aae$b;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/kingroot/kinguser/aae$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aae$b;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/aae$b;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/kingroot/kinguser/aae$b;->Xx:[Lcom/kingroot/kinguser/aae$b;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/aae$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/aae$b;

    return-object v0
.end method
