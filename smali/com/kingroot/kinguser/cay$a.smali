.class Lcom/kingroot/kinguser/cay$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final bWI:Lcom/kingroot/kinguser/cay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/kingroot/kinguser/cay;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/cay;-><init>(Lcom/kingroot/kinguser/caz;)V

    sput-object v0, Lcom/kingroot/kinguser/cay$a;->bWI:Lcom/kingroot/kinguser/cay;

    return-void
.end method

.method static synthetic aky()Lcom/kingroot/kinguser/cay;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kingroot/kinguser/cay$a;->bWI:Lcom/kingroot/kinguser/cay;

    return-object v0
.end method
