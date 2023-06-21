.class Lcom/kingroot/kinguser/pk$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/pk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final zc:Lcom/kingroot/kinguser/pk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/kingroot/kinguser/pk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/pk;-><init>(Lcom/kingroot/kinguser/pl;)V

    sput-object v0, Lcom/kingroot/kinguser/pk$a;->zc:Lcom/kingroot/kinguser/pk;

    return-void
.end method

.method static synthetic gm()Lcom/kingroot/kinguser/pk;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/kingroot/kinguser/pk$a;->zc:Lcom/kingroot/kinguser/pk;

    return-object v0
.end method
