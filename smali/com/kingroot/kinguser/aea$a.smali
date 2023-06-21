.class public final enum Lcom/kingroot/kinguser/aea$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/kinguser/aea$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic aeA:[Lcom/kingroot/kinguser/aea$a;

.field public static final enum aew:Lcom/kingroot/kinguser/aea$a;

.field public static final enum aex:Lcom/kingroot/kinguser/aea$a;

.field public static final enum aey:Lcom/kingroot/kinguser/aea$a;

.field public static final enum aez:Lcom/kingroot/kinguser/aea$a;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 244
    new-instance v0, Lcom/kingroot/kinguser/aea$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5, v2}, Lcom/kingroot/kinguser/aea$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingroot/kinguser/aea$a;->aew:Lcom/kingroot/kinguser/aea$a;

    .line 245
    new-instance v0, Lcom/kingroot/kinguser/aea$a;

    const-string v1, "PIC_NOT_FOUND"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aea$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingroot/kinguser/aea$a;->aex:Lcom/kingroot/kinguser/aea$a;

    .line 246
    new-instance v0, Lcom/kingroot/kinguser/aea$a;

    const-string v1, "NO_REACH_TIME"

    invoke-direct {v0, v1, v3, v4}, Lcom/kingroot/kinguser/aea$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingroot/kinguser/aea$a;->aey:Lcom/kingroot/kinguser/aea$a;

    .line 247
    new-instance v0, Lcom/kingroot/kinguser/aea$a;

    const-string v1, "LANGUAGE_NO_MATCHED"

    invoke-direct {v0, v1, v4, v6}, Lcom/kingroot/kinguser/aea$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingroot/kinguser/aea$a;->aez:Lcom/kingroot/kinguser/aea$a;

    .line 243
    new-array v0, v6, [Lcom/kingroot/kinguser/aea$a;

    sget-object v1, Lcom/kingroot/kinguser/aea$a;->aew:Lcom/kingroot/kinguser/aea$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingroot/kinguser/aea$a;->aex:Lcom/kingroot/kinguser/aea$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/kinguser/aea$a;->aey:Lcom/kingroot/kinguser/aea$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/aea$a;->aez:Lcom/kingroot/kinguser/aea$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingroot/kinguser/aea$a;->aeA:[Lcom/kingroot/kinguser/aea$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 250
    iput p3, p0, Lcom/kingroot/kinguser/aea$a;->mValue:I

    .line 251
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/aea$a;
    .locals 1

    .prologue
    .line 243
    const-class v0, Lcom/kingroot/kinguser/aea$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aea$a;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/aea$a;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/kingroot/kinguser/aea$a;->aeA:[Lcom/kingroot/kinguser/aea$a;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/aea$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/aea$a;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/kingroot/kinguser/aea$a;->mValue:I

    return v0
.end method
