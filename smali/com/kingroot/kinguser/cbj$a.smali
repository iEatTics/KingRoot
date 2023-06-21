.class Lcom/kingroot/kinguser/cbj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cbj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final bWL:Lcom/kingroot/kinguser/cbj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/kingroot/kinguser/cbj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/cbj;-><init>(Lcom/kingroot/kinguser/cbk;)V

    sput-object v0, Lcom/kingroot/kinguser/cbj$a;->bWL:Lcom/kingroot/kinguser/cbj;

    return-void
.end method

.method static synthetic akA()Lcom/kingroot/kinguser/cbj;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/kinguser/cbj$a;->bWL:Lcom/kingroot/kinguser/cbj;

    return-object v0
.end method
