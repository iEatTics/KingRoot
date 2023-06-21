.class Lcom/kingroot/kinguser/cbu$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cbu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final bWS:Lcom/kingroot/kinguser/cbu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/kingroot/kinguser/cbu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/cbu;-><init>(Lcom/kingroot/kinguser/cbv;)V

    sput-object v0, Lcom/kingroot/kinguser/cbu$a;->bWS:Lcom/kingroot/kinguser/cbu;

    return-void
.end method

.method static synthetic akG()Lcom/kingroot/kinguser/cbu;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/cbu$a;->bWS:Lcom/kingroot/kinguser/cbu;

    return-object v0
.end method
