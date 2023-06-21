.class Lcom/kingroot/kinguser/ol$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final yk:Lcom/kingroot/kinguser/ol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/kingroot/kinguser/ol;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ol;-><init>(Lcom/kingroot/kinguser/om;)V

    sput-object v0, Lcom/kingroot/kinguser/ol$a;->yk:Lcom/kingroot/kinguser/ol;

    return-void
.end method

.method static synthetic gg()Lcom/kingroot/kinguser/ol;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/kingroot/kinguser/ol$a;->yk:Lcom/kingroot/kinguser/ol;

    return-object v0
.end method
