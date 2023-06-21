.class public final enum Lcom/kingroot/kinguser/bea$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/kinguser/bea$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bki:Lcom/kingroot/kinguser/bea$a;

.field public static final enum bkj:Lcom/kingroot/kinguser/bea$a;

.field private static final synthetic bkk:[Lcom/kingroot/kinguser/bea$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/kingroot/kinguser/bea$a;

    const-string v1, "TYPE_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bea$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bea$a;->bki:Lcom/kingroot/kinguser/bea$a;

    .line 17
    new-instance v0, Lcom/kingroot/kinguser/bea$a;

    const-string v1, "TYPE_LIGHT"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/bea$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/bea$a;->bkj:Lcom/kingroot/kinguser/bea$a;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kingroot/kinguser/bea$a;

    sget-object v1, Lcom/kingroot/kinguser/bea$a;->bki:Lcom/kingroot/kinguser/bea$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/kinguser/bea$a;->bkj:Lcom/kingroot/kinguser/bea$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingroot/kinguser/bea$a;->bkk:[Lcom/kingroot/kinguser/bea$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/bea$a;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/kingroot/kinguser/bea$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bea$a;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/bea$a;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/kingroot/kinguser/bea$a;->bkk:[Lcom/kingroot/kinguser/bea$a;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/bea$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/bea$a;

    return-object v0
.end method
