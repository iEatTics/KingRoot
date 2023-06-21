.class Lcom/kingroot/kinguser/oz$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/oz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final yA:Lcom/kingroot/kinguser/oz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/kingroot/kinguser/oz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/oz;-><init>(Lcom/kingroot/kinguser/pa;)V

    sput-object v0, Lcom/kingroot/kinguser/oz$b;->yA:Lcom/kingroot/kinguser/oz;

    return-void
.end method

.method static synthetic gi()Lcom/kingroot/kinguser/oz;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/kingroot/kinguser/oz$b;->yA:Lcom/kingroot/kinguser/oz;

    return-object v0
.end method
