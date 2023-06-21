.class Lcom/kingroot/kinguser/cbo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final bWO:Lcom/kingroot/kinguser/cbo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/kingroot/kinguser/cbo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/cbo;-><init>(Lcom/kingroot/kinguser/cbp;)V

    sput-object v0, Lcom/kingroot/kinguser/cbo$a;->bWO:Lcom/kingroot/kinguser/cbo;

    return-void
.end method

.method static synthetic akC()Lcom/kingroot/kinguser/cbo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/kingroot/kinguser/cbo$a;->bWO:Lcom/kingroot/kinguser/cbo;

    return-object v0
.end method
