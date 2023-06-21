.class Lcom/kingroot/kinguser/cav$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final bWF:Lcom/kingroot/kinguser/cav;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/kingroot/kinguser/cav;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/cav;-><init>(Lcom/kingroot/kinguser/caw;)V

    sput-object v0, Lcom/kingroot/kinguser/cav$a;->bWF:Lcom/kingroot/kinguser/cav;

    return-void
.end method

.method static synthetic akv()Lcom/kingroot/kinguser/cav;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/kingroot/kinguser/cav$a;->bWF:Lcom/kingroot/kinguser/cav;

    return-object v0
.end method
