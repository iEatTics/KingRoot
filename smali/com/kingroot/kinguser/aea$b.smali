.class public final enum Lcom/kingroot/kinguser/aea$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/kinguser/aea$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aeB:Lcom/kingroot/kinguser/aea$b;

.field public static final enum aeC:Lcom/kingroot/kinguser/aea$b;

.field public static final enum aeD:Lcom/kingroot/kinguser/aea$b;

.field private static final synthetic aeE:[Lcom/kingroot/kinguser/aea$b;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 259
    new-instance v0, Lcom/kingroot/kinguser/aea$b;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v4, v2}, Lcom/kingroot/kinguser/aea$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingroot/kinguser/aea$b;->aeB:Lcom/kingroot/kinguser/aea$b;

    .line 260
    new-instance v0, Lcom/kingroot/kinguser/aea$b;

    const-string v1, "OPEN_URL"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aea$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingroot/kinguser/aea$b;->aeC:Lcom/kingroot/kinguser/aea$b;

    .line 261
    new-instance v0, Lcom/kingroot/kinguser/aea$b;

    const-string v1, "TIME_OUT"

    invoke-direct {v0, v1, v3, v5}, Lcom/kingroot/kinguser/aea$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingroot/kinguser/aea$b;->aeD:Lcom/kingroot/kinguser/aea$b;

    .line 258
    new-array v0, v5, [Lcom/kingroot/kinguser/aea$b;

    sget-object v1, Lcom/kingroot/kinguser/aea$b;->aeB:Lcom/kingroot/kinguser/aea$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingroot/kinguser/aea$b;->aeC:Lcom/kingroot/kinguser/aea$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/kinguser/aea$b;->aeD:Lcom/kingroot/kinguser/aea$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingroot/kinguser/aea$b;->aeE:[Lcom/kingroot/kinguser/aea$b;

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
    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 264
    iput p3, p0, Lcom/kingroot/kinguser/aea$b;->mValue:I

    .line 265
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/aea$b;
    .locals 1

    .prologue
    .line 258
    const-class v0, Lcom/kingroot/kinguser/aea$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aea$b;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/aea$b;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/kingroot/kinguser/aea$b;->aeE:[Lcom/kingroot/kinguser/aea$b;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/aea$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/aea$b;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/kingroot/kinguser/aea$b;->mValue:I

    return v0
.end method
